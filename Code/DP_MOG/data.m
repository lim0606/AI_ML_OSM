%1) DATA
load gps
%normalize data:0-5
%y=(bsxfun(@rdivide, bsxfun(@minus,pts,min(pts')'),(max(pts')'-min(pts')')).*5)';
y=(bsxfun(@minus,pts,min(pts')')*125)'; 
%{
label=zeros(1,length(y));
for i=1:size(gt,2)
label(gt(1,i):gt(2,i))=i;
end
%}


%2) ALGO
base = [pwd '/'];
addpath([base 'vdpgm']);

 %2.1) EE
opts=cell(1,4);
clus_num=cell(1,4);
likli=cell(1,4);
K=50;
T=30;
 opts{1} = mkopts_avdp; 
 opts{2} = mkopts_csb(K);
 opts{3} = mkopts_cdp(K); 
 opts{4} = mkopts_bj(T,K); 
 
%same logli
cc={'b-','g-','r-','k-'};
cc2={'b.','g.','r.','k.'};
nn={'avdp','csb','cdp','bj'}
for oo=1:4
figure;
%set(gcf, 'Position', get(0,'Screensize')); 
for iter=1:10
%{
[result] = vdpgm(y', opts{oo});
[a,cclass]=max(result.hp_posterior.q_of_z');
clus_num{oo}(iter)=length(unique(cclass));
likli{oo}{iter}=result.opts.log_likelihood;
%}
if(iter<10)
subplot(3,3,iter)
hold on;
for i=unique(cclass)
if(oo==1)
plot(y(:,1),y(:,2),cc2{1});
else
plot(y(cclass==i,1),y(cclass==i,2),cc2{mod(i,4)+1});
end

plot_2dg(result.hp_posterior.m(:,i), result.hp_posterior.B{i}, 0.2, cc2{mod(i,4)+1})
plot(result.hp_posterior.m(1,i),result.hp_posterior.m(2,i),'mx','MarkerSize',10)
end
title([num2str(clus_num{oo}(iter)) ' clusters'])
end
end
saveas(gcf,[nn{oo} '.jpg'])
close
end


figure;hold on;
for oo=1:4
for iter=1:10
plot(likli{oo}{iter},cc{oo})
end
end
legend(nn{1},nn{2},nn{3},nn{4})
saveas(gcf,['loglik.jpg'])
close

save EE 
 


