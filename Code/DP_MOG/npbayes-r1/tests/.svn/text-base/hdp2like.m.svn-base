function y=hdp2like(hdpcrf,mode,prior)



%{
mode=2;
datas=[];
mj=zeros(1,size(hdpcrf.datass,1));
for i=1:size(hdpcrf.datass,1)
datas=[datas,hdpcrf.datass{i}];
mj(i)=hdpcrf.numtable(i);
end
R=size(hdpcrf.datass,1);
N=50*ones(1,R);


prior.D=size(datas,1);
prior.alpha=0.5;
prior.gamma=1.5;
if(mode==1)
    % NIW
S = cov(datas');
prior.mu0= mean(datas,2);%mu0 
prior.xi0= 1;%xi 
prior.eta0 =prior.D; %eta0
prior.B0 =S; %B0
elseif(mode==2)
%D-M
prior.phi0=0.2;
prior.W=length(unique(datas));
end


%}


tji=hdpcrf.datatt;
suff_W=zeros(1,25);

tabllees=cell(size(tji,1),1);
classes=cell(hdpcrf.numclass,1);
for i=1:hdpcrf.numclass
classes{i} = cl_mkclass(suff_W,0,prior,[],0,mode);
end


for i=1:size(tji,1)
for j=1:hdpcrf.numtable(i)
    tmp_W=suff_W;
    ttmp=find(tji{i}==j);
    for k=1:length(ttmp)
    tmp_W(hdpcrf.datass{i}(:,ttmp(k)))=tmp_W(hdpcrf.datass{i}(:,ttmp(k)))+1;
    end
    tabllees{i}{j}=cl_mktable(tmp_W,sum(tmp_W),hdpcrf.tablecc{i}(j),mode);
    classes{hdpcrf.tablecc{i}(j)}=cl_mkclass(classes{hdpcrf.tablecc{i}(j)}.suff+tmp_W,classes{hdpcrf.tablecc{i}(j)}.Nc+sum(tmp_W),prior,[classes{hdpcrf.tablecc{i}(j)}.t;[i,j]],classes{hdpcrf.tablecc{i}(j)}.nt+1,mode);
end
end
y=0;
for i=1:length(classes)
y=y+classes{i}.F;
end
y=y+sum_f(classes,tji,prior);



end