%% -*- matlab -*-

function class = cl_mkclass(suff,Nc,prior,t,nt,mode)
class.Nc = Nc;
class.nt=nt;
class.t=t;
class.suff = suff;
if(mode==1)
%Normal-inverse-Wishart
class.sum_x = suff{1};
class.sum_xx = suff{2};
prior.D=size(sum_x,1);
Xbarc = sum_x/Nc;
class.xic=Nc+prior.xi0;
NcTimesXiSlashNcpXi = Nc*prior.xi0/(class.xic); 
Sc = sum_xx - Nc*Xbarc*Xbarc';
d = Xbarc- prior.mu0;
class.Bc = prior.B0 + Sc + NcTimesXiSlashNcpXi*d*d';
class.etac = prior.eta0 + Nc;
class.F = k_term(class,prior);
elseif(mode==2)
%Dirichlet-Multinomial;
class.multi=suff;
ind=find(suff);
class.F=gammaln(Nc+prior.W*prior.phi0)-gammaln(prior.W*prior.phi0)-sum(gammaln(prior.phi0+suff(ind)))+length(ind)*gammaln(prior.phi0)-gammaln(nt)-log(prior.gamma);
end
