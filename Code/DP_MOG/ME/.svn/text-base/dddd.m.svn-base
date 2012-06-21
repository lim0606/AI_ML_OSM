%initialize q_of_z  each column for one data

clear
load 'data_200.mat';
data=y';

[D,N] = size(data);
%a=ceil(N*rand(1,N));
%q_of_z=zeros(N);
%q_of_z(a+(0:N-1)*N)=1;
%loc=sum(q_of_z');
%part_num=length(find(loc));
%part=q_of_z(find(loc),:);
% priors
mode=2;
S = cov(data');
%reset(RandStream.getDefaultStream)
%b0r = bkm_b0r(data,S);
xi = 0.1;
%[p1,p2,p3,p4,p5,p6] = bkm_prior_hyps(mode,data,xi,b0r,S);

%%%%%%%%%%%%%%%%%%%%%%%%
%top-down prior
S = eye(D);
b0r = 0.01*bkm_b0r(data,S);
xi = 0.01;
mode = 2;
[p1,p2,p3,p4,p5,p6] = bkm_prior_hyps(mode,data,xi,b0r,S);

%%%%%%%%%%%%%%%%%%%%%%%%
%bottom up prior
mu0 = mean(data, 2);
xi = 0.01;
eta0 = D+1;
max_eig = max(eig(S));
B0 = eta0 * max_eig* eye(D) *xi;

%%%%%%%%%%%%%%%%%%%%%%%%%%
% mine...
alpha=1;
S = cov(data');
mu0= mean(data,2);%mu0 
xi= 1;%xi 
eta0 =D; %eta0
B0 =S; %B0
mode=2

%%%%%%%%%%%%%%%%%%%
p1=mu0;
p2=eta0;
p3=B0;
p4=alpha;
p5=xi;
p6=p4;



mu0 = p1;
eta0 = p2;
B0 = p3;
%update~~
parttt=cell(1,10)
for www=1:1
a=1:200;
%a=ones(1,200);
%a=ceil(N*rand(1,N));
part=relabel(a);
Fs=[]; 
park=zeros(1,200);
while(sum(park)~=200)
len_Bdd=length(unique(part));
for j=1:N%randperm(N) %
j
%a)new cluster
K=length(unique(part));
if(length(find(part==part(j)))==1)
%already new
del_term_K = bkm_term_K(N,K,mode,p6)-bkm_term_K(N,K-1,mode,p6);
%disp('haha\n')
else
del_term_K = bkm_term_K(N,K+1,mode,p6)-bkm_term_K(N,K,mode,p6);
end
part_0=part;
part(j)=len_Bdd+j;
tmp_po=len_Bdd+j;
F_0 = bkm_Fc_stats(data(:,j),{data(:,j)*data(:,j)'},1,p1,p2,p3,p4,p5);
%b) one of the known
tmp_max=0;
tmp_part=part;
for k=unique([part(1:j-1),part(j+1:end)])
tmp_part(j)=k;
classes = bkm_mkclass(data(:,find(part==k)),xi,p1,p2,p3,p4);
del_F= [bkm_Fc_stats(classes.sum_x,{classes.sum_xx},classes.Nc,p1,p2,p3,p4,p5)];
classes = bkm_mkclass(data(:,find(tmp_part==k)),xi,p1,p2,p3,p4);
del_F=del_F- [bkm_Fc_stats(classes.sum_x,{classes.sum_xx},classes.Nc,p1,p2,p3,p4,p5)];
con=del_F+F_0+del_term_K;
if(con>tmp_max)
    tmp_po=k;
    tmp_max=con;
end
end
part=part_0;
if(tmp_po==part(j))
park(j)=1;
elseif(length(find(part==part(j)))==1 && tmp_po==len_Bdd+j)
park(j)=1;
else
park(j)=0;
part(j)=tmp_po;
end

clear F classes;
for i=unique(part)
classes(i) = bkm_mkclass(data(:,find(part==i)),xi,p1,p2,p3,p4);
F(i) = [bkm_Fc_stats(classes(i).sum_x,{classes(i).sum_xx},classes(i).Nc,p1,p2,p3,p4,p5)];
end
%sum(F)+bkm_term_K(N,length(unique(part)),mode,p6)
Fs=[Fs,sum(F)+bkm_term_K(N,length(unique(part)),mode,p6)];
end
part=relabel(part);
length(unique(part))
sum(park)
find(park==0)
part(find(park==0))
end
clus(www)=length(unique(part));
[AR,RIss(www)]=valid_RandIndex(label,part);
parttt{www}=part;
FF{www}=Fs(end);
end







%find_increase
find(Fs(2:end)-Fs(1:end-1)>0)




%merge
for www=1:10
part=parttt{1};
tmp=part;
for ww=1:10
    part=tmp;
best=Fs(end);
for j=randperm(max(part))%1:max(part)
    cost=[];
for k=j+1:max(tmp_part)
    tmp_part=part;
    tmp_part(find(tmp_part==j))=k;
    F=[];    
    for i=unique(tmp_part)
       classes(i) = bkm_mkclass(data(:,find(tmp_part==i)),xi,p1,p2,p3,p4);
       F(i) = [bkm_Fc_stats(classes(i).sum_x,{classes(i).sum_xx},classes(i).Nc,p1,p2,p3,p4,p5)];
    end 
    cost=[cost,sum(F)+bkm_term_K(N,length(unique(tmp_part)),mode,p6)];
end
if(min(cost)<best)
    best=min(cost);
    [tmp_a,tmp_b]=min(cost);
    part(find(part==j))=tmp_b+j;
end
end
aa(ww)=length(unique(part));
partttt{ww}=relabel(part);
end

part=relabel(part);
partt{www}=part;
FFF{www}=F;
[AR,RIsss(www)]=valid_RandIndex(label,part);
end

for w=1:10
[AR,RIss(w)]=valid_RandIndex(label,partttt{w});
end


for i=1:10
aaaa(i)=length(unique(partt{i}));
end



%test
tt=zeros(1,124);
xount=1;
for k=[unique(part)]
part(1)=k;
F=[];
part=ones(1,200);
for i=unique(part)
classes(i) =bkm_mkclass(data(:,find(part==i)),xi,p1,p2,p3,p4);
F(i)=bkm_Fc_stats(classes(i).sum_x,{classes(i).sum_xx},classes(i).Nc,p1,p2,p3,p4,p5);
end
tt(xount)=sum(F);
xount=xount+1;
end


%plot cluster
colors=['b.';'g.';'r.';'m.';'y.';'k.';'c.';'bo';'go';'ro';'mo';'yo';'ko';'co'];
hold on 
%part=parttt{8}
for k=1:length(unique(part))
    tmp=y(find(part==k),:)';
plot(tmp(1,:),tmp(2,:),colors(1+mod(k,10),:))
end
title('ME-local search') 



 for i=1:9
class=partttt{i}
subplot(3,3,i)
hold on
colors=['b.';'g.';'r.';'m.';'y.';'k.';'c.'];
duck=unique(class);
count=1;
for i=duck
plot(y(find(class==i),1),y(find(class==i),2),colors(mod(count,7)+1,:))
count=count+1;
end
title(['cluster num ',num2str(count-1)])
end


%plot opt F
colors=['b-';'go';'r*'];
hold on 
for k=1:10
plot(FFs{k}(4:end),colors(1,:))
end
FF=[ 548.5133, 404.5738,  398.9320,  311.2932];
 plot(FF,colors(2,:))
FFF=load('Fsss.txt');
 plot(FFF,colors(3,:))
 
 title('Free Energy Minimization')
 legend('top-down','bottom up','10 iter local search')
 for i=1:200
 ttt(i)=bkm_term_K(N,i,mode,p6)
 end
 plot(ttt)
 
 
 
 

