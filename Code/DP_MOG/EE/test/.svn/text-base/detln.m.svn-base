
function [Y] = detln( X )
% Y = logdet( X )
% return a log determinant of X
[d err] = chol(X);
if err
  error('error in Choleski disposition for detln');
end
Y = sum(log(diag(d))) *2;

