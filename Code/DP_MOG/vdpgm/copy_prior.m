function opt=copy_prior(opt,posterior)

opt.eta0=posterior.eta;
opt.xi0=posterior.xi;
opt.m0=posterior.m;
opt.B0=posterior.B;
end
