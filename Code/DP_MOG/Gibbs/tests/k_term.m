function Fc = k_term(classi,prior)

logDetBc = detln(classi.Bc);
logDetB0 = detln(prior.B0);

Fc = 0.5*prior.D*log(classi.xic)-0.5*prior.D*log(prior.xi0)...
     + 0.5*classi.etac *logDetBc-0.5*prior.eta0*logDetB0...
     + gamma_multivariate_ln(prior.eta0*0.5,prior.D)-gamma_multivariate_ln(classi.etac*0.5,prior.D)  ...
      -gammaln(classi.nt)-log(prior.gamma)  ...
      +prior.D/2*log(pi)*classi.Nc;
