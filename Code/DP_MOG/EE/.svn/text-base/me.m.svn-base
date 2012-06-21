function [q_of_z, data, log_lambda] = mk_q_of_z(data, hp_posterior, hp_prior, opts, log_lambda);
% q_of_z: N*K
if nargin == 4
  log_lambda = mk_log_lambda(data, hp_posterior, hp_prior, opts);
end
q_of_z = exp(normalizeln(log_lambda, 1));
if opts.weight ~= 1
  q_of_z = q_of_z .* repmat(opts.weight, 1, size(q_of_z,2));
else
  q_of_z = q_of_z;
end

function M =normalizeln(M ,dimension);
M = lpt2lcpt(M, dimension);

function lcpt=lpt2lcpt(lpt,dimension);
% function lcpt=lpt2lcpt(lpt,dimension);
%
% make a log conditional probability table with log probability table
%
% lpt is a matrix.
% dimension must be either 1 or 2.
%
% lcpt = log( exp(lpt) / sum(exp(lpt)) )
%      = lpt - log(sum(exp(lpt)))
%

the_other_dimension=-(dimension-1.5)+1.5;
lpt=permute(lpt,[dimension,the_other_dimension]);
% now we can calculate as if dimension=1.

log_sum_exp_lpt = log_sum_exp(lpt,2); % Mx1
lcpt = lpt - repmat(log_sum_exp_lpt,1,size(lpt,2));

lcpt=permute(lcpt,[dimension,the_other_dimension]);
function hp_posterior = mk_hp_posterior(data, q_of_z, hp_prior, opts);
% the last component of q_of_z represents the infinite rest of components
% the last component is the prior.
% q_of_z: N*K
% q_of_z(:,end) is the rest of responsibilities.
threshold_for_N = 1.0e-200;
K = size(q_of_z, 2);
if opts.use_kd_tree
  N = length(data.kdtree);
  D = size(data.kdtree(1).sum_x, 1);
  Na = [data.kdtree(:).N];
  if isequal(opts.algorithm, 'vdp')
    true_Nc = Na*q_of_z; % 1*K
    q_of_z(:,end) = 0;
  end
  Nc = Na*q_of_z; % 1*K
  sum_x = [data.kdtree(:).sum_x] * q_of_z;
else
  [D,N] = size(data.given_data);
  if isequal(opts.algorithm, 'vdp')
    true_Nc = sum(q_of_z, 1); % 1*K
    q_of_z(:,end) = 0;
  end
  Nc = sum(q_of_z, 1); % 1*K
  sum_x = data.given_data * q_of_z;
end
I = find(Nc>threshold_for_N);
inv_Nc = zeros(1,K);
inv_Nc(I) = 1./Nc(I);
hp_posterior.eta = hp_prior.eta0 + Nc;
hp_posterior.xi = hp_prior.xi0 + Nc;
means = sum_x .* repmat(inv_Nc, D, 1); % D*K
hp_posterior.inv_B = zeros(D,D,K);
if opts.use_kd_tree
  t1 = reshape([data.kdtree(:).sum_xx],D,D,N);
  for c=1:K
    v0 = means(:,c) - hp_prior.m0;
    q_of_z_c = reshape(q_of_z(:,c), 1, 1, N);
    S = sum(repmat(q_of_z_c,[D,D,1]).*t1, 3) - Nc(c)*means(:,c)*means(:,c)';
    hp_posterior.B{c} = hp_prior.B0 ...
        + S ...
        + Nc(c)*hp_prior.xi0*v0*v0'/(hp_posterior.xi(c)); % D*D
  end
else
  if opts.collapsed_means
    quad_term = mk_quad_term(data, q_of_z, hp_prior, opts);
  end
  for c=1:K
    if opts.collapsed_means
      hp_posterior.B{c} = hp_prior.B0 ...
          + (repmat(q_of_z(:,c),1,D)'.*data.given_data)*data.given_data' ...
          + quad_term(:,:,c);
    else
      v = data.given_data - repmat(means(:,c),1,N); % D*N
      v0 = means(:,c) - hp_prior.m0;
      hp_posterior.B{c} = hp_prior.B0 ...
          + (repmat(q_of_z(:,c),1,D)'.*v)*v' ...
          + Nc(c)*hp_prior.xi0*v0*v0'/(hp_posterior.xi(c)); % D*D
    end
  end
end
for c=1:K
  hp_posterior.inv_B(:,:,c) = inv(hp_posterior.B{c});
end
hp_posterior.m = (sum_x + repmat(hp_prior.xi0*hp_prior.m0,1,K)) ...
    ./ repmat(Nc+hp_prior.xi0,D,1);
if isequal(opts.algorithm, 'vdp')
  % gamma: 2*K
  hp_posterior.gamma = zeros(2,K);
  hp_posterior.gamma(1,:) = 1 + true_Nc;
  hp_posterior.gamma(2,:) = hp_prior.alpha + sum(true_Nc) - cumsum(true_Nc,2);
elseif isequal(opts.algorithm, 'bj')
  hp_posterior.gamma = zeros(2,K-1);
  hp_posterior.gamma(1,:) = 1 + Nc(1:K-1);
  hp_posterior.gamma(2,:) = hp_prior.alpha + sum(Nc) - cumsum(Nc(1:K-1),2);
elseif isequal(opts.algorithm, 'non_dp') | isequal(opts.algorithm, 'cdp')
  hp_posterior.tilde_alpha = hp_prior.alpha/K + Nc;
elseif isequal(opts.algorithm, 'csb')
  1;
else
  error('unknown algorithm')
end

hp_posterior.Nc = Nc; 
if isequal(opts.algorithm, 'vdp')
  hp_posterior.true_Nc = true_Nc;
end
hp_posterior.q_of_z = q_of_z; % q_of_z is a N by K matrix where N is
                              % #given_data or #nodes in a kd-tree.

function hp_prior = mk_hp_prior(data, opts)
if isfield(opts, 'xi0')
  hp_prior.xi0 = opts.xi0;
else
  hp_prior.xi0 = 0.01;
end
if isfield(opts, 'eta_p')
  eta_p = opts.eta_p;
else
  eta_p = 1;
end
if isfield(opts, 'alpha')
  hp_prior.alpha = opts.alpha;
else
  hp_prior.alpha = 1;
end
[D,N] = size(data.given_data);
if opts.use_kd_tree
  sum_xx = sum(reshape([data.kdtree(:).sum_xx],D,D,length(data.kdtree)),3);
  sum_x = sum([data.kdtree(:).sum_x],2);
  covariance = sum_xx/N - sum_x*sum_x'/(N*N);
else
  covariance = cov(data.given_data');
end
hp_prior.m0 = mean(data.given_data, 2);
if D > 16
  [dummy, max_eig] = power_method(covariance);
else
  max_eig = max(eig(covariance));
end
hp_prior.eta0 = eta_p * D + 1;
hp_prior.B0 = hp_prior.eta0 * max_eig * eye(D) * hp_prior.xi0;
