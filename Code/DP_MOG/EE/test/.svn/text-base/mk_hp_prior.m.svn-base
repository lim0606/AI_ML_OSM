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
