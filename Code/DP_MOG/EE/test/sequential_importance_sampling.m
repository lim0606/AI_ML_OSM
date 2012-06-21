function [q_of_z] = sequential_importance_sampling(data, hp_prior, opts);
disp('start SIS.')
N = size(data.given_data, 2);
reset(RandStream.getDefaultStream)

for r = 1:opts.sis
    I = randperm(N);
%   I = I(1:ceil(N*0.1));
  data_r.given_data = data.given_data(:,I);
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   data_r_sub.given_data = data_r.given_data(:,1);
%   q_of_z = ones(1,opts.initial_K) / opts.initial_K;
%   hp_posterior = mk_hp_posterior(data_r_sub, q_of_z, hp_prior, opts);
%   for n = 1:N
%     data_r_sub.given_data = data_r.given_data(:,1:n);
%     q_of_z = mk_q_of_z(data_r_sub, hp_posterior, hp_prior, opts);
%     q_of_z = sort_q_of_z(data, q_of_z, opts);  
%     hp_posterior = mk_hp_posterior(data_r_sub, q_of_z, hp_prior, opts);
%   end
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  q_of_z = [];
  for n = 1:size(data_r.given_data,2)
    data_r_sub.given_data = data_r.given_data(:,1:n);
    q_of_z(n,:) = ones(1, opts.initial_K) / opts.initial_K;
    hp_posterior = mk_hp_posterior(data_r_sub, q_of_z, hp_prior, opts);
    q_of_z = mk_q_of_z(data_r_sub, hp_posterior, hp_prior, opts);
%     q_of_z = sort_q_of_z(data, q_of_z, opts);  
  end
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  hist(r).hp_posterior = hp_posterior;
  hist(r).free_energy = mk_free_energy(data, hp_posterior, hp_prior, opts);
  [min_f, best_r] = min([hist(:).free_energy]);
  hp_posterior = hist(best_r).hp_posterior;
  disp(['SIS: ' num2str(r) ';  best f = ' num2str(min_f) ';  best Nc = ' num2str(hp_posterior.Nc)])
end
disp('SIS done.')
q_of_z = mk_q_of_z(data, hp_posterior, hp_prior, opts);
