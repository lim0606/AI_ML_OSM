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
