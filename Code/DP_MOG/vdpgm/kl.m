function y=kl(posterior,prior)

K=length(posterior.xi);
%{
y=zeros(1,K);
D=size(data,1);
%}


for i=1:K
%{
%KL(qGau || empirical qoz)
%KL(empirical qoz || qGau)
%quantize the Gaussian
qg=mvnpdf(data',posterior.m(:,i)', posterior.B{i}/(posterior.eta(i)-1-D));
qg=qg/sum(qg);

qoz=posterior.q_of_z(:,i)/sum(posterior.q_of_z(:,i));

ind=find(qoz);
y(i)=qoz(ind)'*log(qoz(ind)./qg(ind));
%}
y(i)=kl_normal(posterior.m(:,i),posterior.B{i},prior.m0(:,i),prior.B0{i});
end


end
