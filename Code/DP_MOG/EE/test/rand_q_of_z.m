function q_of_z = rand_q_of_z(data, K, opts);
% q_of_z: N*K
if opts.use_kd_tree
  N = length(data.kdtree);
else
  N = size(data.given_data, 2);
end
if isequal(opts.algorithm, 'vdp')
  q_of_z = zeros(N, K+1);
else
  q_of_z = zeros(N, K);
end
q_of_z(:,1:K) = rand(N, K);
q_of_z = normalize(q_of_z, 2);