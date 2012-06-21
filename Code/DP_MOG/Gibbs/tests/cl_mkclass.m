%% -*- matlab -*-

function class = cl_mkclass(sum_x,sum_xx,Nc,prior,t,nt,mode)
class.sum_x = sum_x;
class.sum_xx = sum_xx;
class.Nc = Nc;
class.nt=nt;
class.t=t;
if(mode==1)
%Normal-inverse-Wishart
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
class.F=-gammaln(prior.phi0+Nc);
end
