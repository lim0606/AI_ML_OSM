function log_lambda = mk_log_lambda(data, hp_posterior, hp_prior, opts);
% log_lambda: N*K
% q(z_n=c|x_n) = lambda_n_c / sum_c lambda_n_c

if isequal(opts.algorithm, 'vdp')
  if abs(hp_posterior.gamma(2,end) - hp_prior.alpha) > 1.0e-5
    hp_posterior.gamma(2,end)
    hp_prior.alpha
    diff = hp_prior.alpha - hp_posterior.gamma(2,end)
    error('must be alpha')
  end
end

if opts.use_kd_tree
  N = length(data.kdtree);
  D = size(data.kdtree(1).sum_x, 1);
else
  [D,N] = size(data.given_data);
end
K = size(hp_posterior.eta, 2);

psi_sum = sum(psi( repmat(hp_posterior.eta+1,D,1) - repmat([1:D]',1,K)*0.5 ), 1); % 1*K
log_lambda = zeros(N,K);
if opts.use_kd_tree
  t1 = reshape([data.kdtree(:).sum_xx],D,D,N);
  sum_x = repmat(reshape([data.kdtree(:).sum_x],D,1,N),[1,D,1]);
  Na = repmat(reshape([data.kdtree(:).N],1,1,N),[D,D,1]);
end
if isequal(opts.algorithm, 'csb') | isequal(opts.algorithm, 'cdp')
  E_log_p_of_z_given_other_z = mk_E_log_p_of_z_given_other_z(hp_posterior, hp_prior, opts);
end
for c=1:K
%   Precision = 0.5*hp_posterior.inv_B(:,:,c)*hp_posterior.eta(c);
%   if isequal(opts.algorithm, 'vdp')
%     constant = psi(hp_posterior.gamma(1,c)) - psi(sum(hp_posterior.gamma(:,c),1)) ...
%         + sum(psi(hp_posterior.gamma(2,[1:c-1])) - psi(sum(hp_posterior.gamma(:,[1:c-1]),1)), 2);
%   elseif isequal(opts.algorithm, 'bj')
%     if c < K
%       constant = psi(hp_posterior.gamma(1,c)) - psi(sum(hp_posterior.gamma(:,c),1)) ...
%           + sum(psi(hp_posterior.gamma(2,[1:c-1])) - psi(sum(hp_posterior.gamma(:,[1:c-1]),1)), 2);
%     else
%       constant = sum(psi(hp_posterior.gamma(2,[1:c-1])) - psi(sum(hp_posterior.gamma(:,[1:c-1]),1)), 2);
%     end
%   elseif isequal(opts.algorithm, 'non_dp')
%     % E[log pi] ; pi is the weight of mixtures.
%     constant = psi(hp_posterior.tilde_alpha(c)) - psi(sum(hp_posterior.tilde_alpha));
%   elseif isequal(opts.algorithm, 'cdp')
%     constant = 0;
%   elseif isequal(opts.algorithm, 'csb')
%     constant = 0;
%   else
%     error('unknown algorithm')
%   end
%   constant = constant - 0.5*D*log(pi) - 0.5*detln(hp_posterior.B{c}) ...
%       + 0.5*psi_sum(c) - 0.5*D/(hp_posterior.xi(c));
%   if opts.use_kd_tree
%     t2 = sum_x.*repmat(hp_posterior.m(:,c)',[D,1,N]);
%     term_dependent_on_n = (t1 - t2 - permute(t2,[2,1,3]))./Na + ...
%         repmat(hp_posterior.m(:,c)*hp_posterior.m(:,c)',[1,1,N]);
%     column_c = - sum(sum(repmat(Precision,[1,1,N]).*term_dependent_on_n,2),1) + constant;
%   else
%     d = data.given_data - repmat(hp_posterior.m(:,c),1,N);
%     column_c = - sum(d.*(Precision*d),1) + constant; % 1*N
%   end
%   if isequal(opts.algorithm, 'csb') | isequal(opts.algorithm, 'cdp')
%     column_c = column_c + E_log_p_of_z_given_other_z(:,c)';
%   end
%   log_lambda(:,c) = column_c;
  if isequal(opts.algorithm, 'vdp')
    E_log_p_of_z_given_other_z_c = ...
        psi(hp_posterior.gamma(1,c)) ...
        - psi(sum(hp_posterior.gamma(:,c),1)) ...
        + sum(psi(hp_posterior.gamma(2,[1:c-1])) - psi(sum(hp_posterior.gamma(:,[1:c-1]),1)), 2);
  elseif isequal(opts.algorithm, 'bj')
    if c < K
      E_log_p_of_z_given_other_z_c = ...
          psi(hp_posterior.gamma(1,c)) ...
          - psi(sum(hp_posterior.gamma(:,c),1)) ...
          + sum(psi(hp_posterior.gamma(2,[1:c-1])) - psi(sum(hp_posterior.gamma(:,[1:c-1]),1)), 2);
    else
      E_log_p_of_z_given_other_z_c = sum(psi(hp_posterior.gamma(2,[1:c-1])) ...
                                         - psi(sum(hp_posterior.gamma(:,[1:c-1]),1)), 2);
    end
  elseif isequal(opts.algorithm, 'non_dp')
    % E[log pi] ; pi is the weight of mixtures.
    E_log_p_of_z_given_other_z_c = psi(hp_posterior.tilde_alpha(c)) ...
        - psi(sum(hp_posterior.tilde_alpha));
  elseif isequal(opts.algorithm, 'csb') | isequal(opts.algorithm, 'cdp')
    E_log_p_of_z_given_other_z_c = E_log_p_of_z_given_other_z(:,c)';
  else
    error('unknown algorithm')
  end

  Precision = 0.5*hp_posterior.inv_B(:,:,c)*hp_posterior.eta(c);
  E_log_p_of_x = - 0.5*D*log(pi) - 0.5*detln(hp_posterior.B{c}) ...
      + 0.5*psi_sum(c) - 0.5*D/(hp_posterior.xi(c));
  if opts.use_kd_tree
    t2 = sum_x.*repmat(hp_posterior.m(:,c)',[D,1,N]);
    term_dependent_on_n = (t1 - t2 - permute(t2,[2,1,3]))./Na + ...
        repmat(hp_posterior.m(:,c)*hp_posterior.m(:,c)',[1,1,N]);
    E_log_p_of_x = - sum(sum(repmat(Precision,[1,1,N]).*term_dependent_on_n,2),1) + E_log_p_of_x;
  else
    d = data.given_data - repmat(hp_posterior.m(:,c),1,N);
    E_log_p_of_x = - sum(d.*(Precision*d),1) + E_log_p_of_x; % 1*N
  end
  log_lambda(:,c) = E_log_p_of_x + E_log_p_of_z_given_other_z_c;
end
if isequal(opts.algorithm, 'vdp')
  log_lambda(:,end) = log_lambda(:,end) - log(1- exp(psi(hp_prior.alpha) - psi(1+hp_prior.alpha)));
end
