

Fs=cell(1,10);
%for jjj=1:10
cleardist
docrp    = 1;        % do dp_crp
numiter  = 10000;     % number of iterations
numdim   = 2;        % number of dimensions is 2
load data22.mat 
datass=cell(1,9);
for i=1:9
datass{i}=data{i}';
end
qq0      = estimateGaussianWishart(datas);
alphaa   = 10;
alphab   = 1;
gammaa   = 2;
gammab   = 1;
R=9;
inicc=cell(R,1);
for i=1:R
inicc{i}=(i-1)*200+1:i*200;
end
S = cov(datas');
prior.D=2;
prior.mu0= mean(datas,2);%mu0 
prior.xi0= 1;%xi 
prior.eta0 =prior.D; %eta0
%max_eig = max(eig(S));
prior.B0 =S; %B0
prior.alpha=10;
prior.gamma=2;



hdp0 = hdp_init(datass,gammaa,gammab,alphaa,alphab,qq0,inicc);

hdp= hdp_specialize(hdp0,'crf');
for i=1:length(hdp0.datass)
N(i)=length(hdp0.datass{i});
end
Fs{jjj}=t_term(hdp.tablecc,prior.alpha,prior.gamma)+create_c(hdp.datass,hdp0.datacc,length(hdp.classqq),N,prior);

for iter=1:numiter 
    hdp_crf; 
    %hdp_conparam;
    hdp = hdp_standardize(hdp);    
    Fs{jjj}=[Fs{jjj},t_term(hdp.tablecc,prior.alpha,prior.gamma)+create_c(hdp0.datass,hdp0.datacc,length(hdp0.classqq),N,prior)];
end
%end
  