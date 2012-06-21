function [free_energy, log_lambda] = mk_free_energy(data, hp_posterior, ...
                                                  hp_prior, opts, ...
                                                  fc, log_lambda);
if nargin == 4
  fc = mk_E_log_q_p_eta(data, hp_posterior, hp_prior, opts); % 1*K
  log_lambda = mk_log_lambda(data, hp_posterior, hp_prior, opts); % N*K
end
[N,K] = size(log_lambda);
if isequal(opts.algorithm, 'vdp') || isequal(opts.algorithm, 'bj')
  % note when bj,  if full hp_posterior is given, len_gamma = K - 1.
  len_gamma = size(hp_posterior.gamma, 2);
  if isequal(opts.algorithm, 'bj') && len_gamma ~= K - 1
    error('invalid length')
  end
  E_log_p_of_V = ...
      gammaln(sum(hp_posterior.gamma, 1)) ...
      - gammaln(1+hp_prior.alpha) ...
      - sum(gammaln(hp_posterior.gamma), 1) ...
      + gammaln(hp_prior.alpha) ...
      + ((hp_posterior.gamma(1,:)-1) ...
         .*(psi(hp_posterior.gamma(1,:))-psi(sum(hp_posterior.gamma,1)))) ...
      + ((hp_posterior.gamma(2,:)-hp_prior.alpha) ...
         .*(psi(hp_posterior.gamma(2,:))-psi(sum(hp_posterior.gamma,1))));
  extra_term = sum(E_log_p_of_V);
elseif isequal(opts.algorithm, 'non_dp')
  E_log_p_of_pi = ...
      sum(gammaln(hp_prior.alpha/K) ...
          - gammaln(hp_posterior.tilde_alpha) ...
          + hp_posterior.Nc.*(psi(hp_posterior.tilde_alpha) ...
                              - psi(sum(hp_posterior.tilde_alpha)))) ...
      + gammaln(sum(hp_prior.alpha+size(data,2))) - gammaln(hp_prior.alpha);
  extra_term = E_log_p_of_pi;
elseif isequal(opts.algorithm, 'cdp') || isequal(opts.algorithm, 'csb')
  E_log_p_of_z_given_other_z = ...
      mk_E_log_p_of_z_given_other_z(hp_posterior, hp_prior, opts); % N by K
  q_of_z = mk_q_of_z(data,hp_posterior,hp_prior,opts,log_lambda);
%   q_of_z = hp_posterior.q_of_z;
  E_Nc = hp_posterior.Nc;
  V_Nc = sum(q_of_z.*(1-q_of_z), 1); % 1 by K
  if isequal(opts.algorithm, 'cdp')
    E_log_p_of_z = gammaln(hp_prior.alpha) - gammaln(N+hp_prior.alpha) ...
        + sum(gammaln(hp_prior.alpha/K + E_Nc) ...
              - 0.5*psi(1, hp_prior.alpha/K + E_Nc).*V_Nc - gammaln(hp_prior.alpha/K));
  else % csb
    E_Nc_geq_to_i = cumsum(E_Nc, 2);
    q_of_z_geq_to_i = cumsum(q_of_z, 2);
    V_Nc_geq_to_i = sum(q_of_z_geq_to_i.*(1-q_of_z_geq_to_i), 1);

    E_Nc_greater_than_i = cumsum(E_Nc, 2) - E_Nc;
    q_of_z_greater_than_i = q_of_z_geq_to_i - q_of_z;
    V_Nc_greater_than_i = sum(q_of_z_greater_than_i.*(1-q_of_z_greater_than_i), 1);
    
    tmp = gammaln(1 + E_Nc) - 0.5*psi(1, 1 + E_Nc).*V_Nc ...  % E[log p(1+Nc)]
          + (gammaln(1 + E_Nc_greater_than_i) ...             % E[log p(1+N_{>c})]
             - 0.5*psi(1, 1 + E_Nc_greater_than_i).*V_Nc_greater_than_i) ...
          - (gammaln(1 + hp_prior.alpha + E_Nc_geq_to_i) ...  % E[log p(1+alpha+N_{>=c})]
             - 0.5*psi(1, 1 + hp_prior.alpha + E_Nc_geq_to_i).*V_Nc_geq_to_i);
    E_log_p_of_z = sum(tmp(1:end-1));
  end
  extra_term = sum(sum(E_log_p_of_z_given_other_z.*q_of_z, 2), 1) - E_log_p_of_z;
else
  error('unknown algorithm')
end
if opts.use_kd_tree
  free_energy = extra_term + sum(fc) - [data.kdtree(:).N]*log_sum_exp(log_lambda, 2);
else
  free_energy = extra_term + sum(fc) - sum(log_sum_exp(log_lambda, 2), 1);
end


function fc = mk_E_log_q_p_eta(data, hp_posterior, hp_prior, opts);
% returns E[ log q(eta)/p(eta) ]_q
% fc : 1 by K
D = size(hp_posterior.m, 1);
K = size(hp_posterior.eta, 2);
log_det_B = zeros(1,K);
for c=1:K
  log_det_B(c) = detln(hp_posterior.B{c});
  d = hp_posterior.m(:,c)-hp_prior.m0; % D*1
  term_eta(1,c) = sum(sum(hp_posterior.inv_B(:,:,c).*(hp_prior.xi0*d*d'),1),2);
  term_eta(2,c) = sum(sum(hp_posterior.inv_B(:,:,c).*hp_prior.B0,1),2) - D;
end
E_log_q_p_mean = ...
    + 0.5*D*(hp_prior.xi0./hp_posterior.xi ...
             - log(hp_prior.xi0./hp_posterior.xi) ...
             - 1) ...
    + 0.5*(hp_posterior.eta).* term_eta(1,:);     

psi_sum = sum(psi( (repmat(hp_posterior.eta+1,D,1) - repmat([1:D]',1,K))*0.5 ), 1); % 1*K
E_log_q_p_cov = ...
    0.5*hp_prior.eta0*(log_det_B-detln(hp_prior.B0)) ...
    + 0.5*hp_posterior.Nc.*psi_sum ...
    + 0.5*(hp_posterior.eta).* term_eta(2,:) ...
    + gamma_multivariate_ln(hp_prior.eta0*0.5,D) ...
    - gamma_multivariate_ln(hp_posterior.eta*0.5,D);

%debug
if length(find(E_log_q_p_mean<-1.0e-8,1)) > 0
  E_log_q_p_mean
  error('E_log_q_p_mean is negative.')
end
if length(find(E_log_q_p_cov<-1.0e-8,1)) > 0
  E_log_q_p_cov
  error('E_log_q_p_mean is negative.')
end

fc = E_log_q_p_mean + E_log_q_p_cov;
