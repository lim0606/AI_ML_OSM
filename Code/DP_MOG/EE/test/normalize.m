function m=normalize(m,dim)
% return m normalized with 'dimension'
%
% e.g.
% m : i by j by k by ...
% m = sum(normalize(m,2), 2);
% m(i, :, k, ...) = ones(1, J, 1, ...)
%

dims = ones(1, ndims(m));
dims(dim) = size(m, dim);
m = m ./ repmat(sum(m, dim), dims);
