function Fc =FFF(qq,hp_prior,data);


for i=1:4
posterior(:,i)=p(i)*mvnpdf(y,MU(i,:),sstd(:,:,i));
end
[a,label]=max(posterior');


p1=hp_prior.m0;
p2=hp_prior.eta0;
p3=hp_prior.B0;
p4=hp_prior.alpha;
p5=hp_prior.xi0;

[a,class]=max(qq');

for i=unique(class)
index=find(class==i);
Nc=length(index);
F(i) =bkm_Fc_lda(sum(data(:,index),2),{data(:,index)*data(:,index)'},Nc,p1,p2,p3,p4,p5);
end
Fc=sum(F)+bkm_term_K(length(data),length(unique(class)),1,p4);
end


function term_K = bkm_term_K(N,K,mode,phi0);

switch mode
 case 2 % non-isotoropic
  term_K = gammaln(N+K*phi0) - gammaln(K*phi0);
 case 1 % conjugate
  term_K = gammaln(N+phi0) - gammaln(phi0);
 case 0 % Jeffery's
  term_K = gammaln(N+K) - gammaln(K);
end
end