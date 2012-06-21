function [free_energy, hp_posterior, data] = split_merge(data, hp_posterior, hp_prior, opts);
%
% split: 
% tdp: if an empty cluster exists, split is available.
%      otherwise, make a new empty cluster. =>  K<-K+1.
%
% non-dp: if 
%
c_max = 3;
%[free_energy, hp_posterior] = update_posterior2(data, hp_posterior, hp_prior, opts, 0, opts.ite);
while 1
  K = size(hp_posterior.m, 2);
  new_free_energy = inf;
  %%% split
  if ~ opts.do_split
    break
  end
  disp(['### start splitting'])
  [dummy, candidates_for_splliting] = sort(hp_posterior.Nc, 2, 'descend');
  candidates_for_splliting(find(hp_posterior.Nc(candidates_for_splliting)<1)) = [];
  q_of_z = mk_q_of_z(data, hp_posterior, hp_prior, opts); % N*K
  for c=candidates_for_splliting(1:min(c_max, length(candidates_for_splliting)))
    disp(['### start splitting k=' num2str(c) '...'])
    [new_data, new_q_of_z] = split(c, data, q_of_z, hp_posterior, hp_prior, opts);
    new_hp_posterior = mk_hp_posterior(new_data, new_q_of_z, hp_prior, opts);
    [new_free_energy, new_hp_posterior, new_data] = update_posterior2(new_data, ...
                                                      new_hp_posterior, ...
                                                      hp_prior, ...
                                                      opts, 1);
    if free_energy_improved(free_energy, new_free_energy, 0, opts)
      disp(['### splitting k=' num2str(c) ' improved the free energy.  ' ...
           num2str(free_energy) ' -> ' num2str(new_free_energy)])
      break
    else
      disp(['### splitting k=' num2str(c) ' did not improve the free energy.'])
    end
  end
  disp('### end splitting')
  if free_energy_improved(free_energy, new_free_energy, 0, opts)
    free_energy = new_free_energy;
    hp_posterior = new_hp_posterior;
    data = new_data;
    continue
  end
  if ~ opts.do_merge
    break
  end
  %%% merge
  disp(['### start merging'])
  q_of_z = mk_q_of_z(data, hp_posterior, hp_prior, opts); % N*K
  candidates_for_merging = mkcandidates_to_merge(q_of_z'); % 2*#pairs
  for i=1:min(c_max, size(candidates_for_merging,2))
    pair = candidates_for_merging(:,i);
    c1 = pair(1); c2 = pair(2);
    disp(sprintf('### start merging c1=%d, c2=%d ...', c1, c2))
    new_q_of_z = q_of_z;
    new_q_of_z(:,c1) = new_q_of_z(:,c1) + new_q_of_z(:,c2);
    new_q_of_z(:,c2) = zeros(size(new_q_of_z,1),1);
    new_hp_posterior = mk_hp_posterior(data, new_q_of_z, hp_prior, opts);
    [new_free_energy, new_hp_posterior] = update_posterior2(data, ...
                                                      new_hp_posterior, ...
                                                      hp_prior, opts);
    if free_energy_improved(free_energy, new_free_energy, 0, opts)
      disp(sprintf('### merging c1=%d, c2=%d improved the free energy.  %0.5g -> %0.5g', ...
                   c1, c2, free_energy, new_free_energy))
      break
    else
      disp(sprintf('### merging c1=%d, c2=%d did not improve the free energy.', c1, c2))
    end
  end
  disp(['### end merging'])
  if free_energy_improved(free_energy, new_free_energy, 0, opts)
    free_energy = new_free_energy;
    hp_posterior = new_hp_posterior;
    continue
  end
  break
disp('ha')
end % while 1
disp('haha')
disp_status(free_energy, hp_posterior, opts);
