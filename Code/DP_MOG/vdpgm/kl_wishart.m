function y=kl_wishart(eta0,B0,eta1,B1)

d=size(B0,1);

logZ0=(eta0*d/2)*log(2)-detln(B0)*(eta0/2)+gamma_multivariate_ln(eta0/2);
logZ1=(eta1*d/2)*log(2)-detln(B1)*(eta1/2)+gamma_multivariate_ln(eta1/2);

L0=psi()

y=(eta0-d-1)/2*L0-(eta1-d-1)/2*L1-eta0*d/2+eta0/2*trace(B1/B0)+logZ1-logZ0;

end
