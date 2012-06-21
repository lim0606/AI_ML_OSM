addpath('../')
load routes
K=50;
opts = mkopts_cdp(K); 
KLdist=zeros(K,length(pts));
result=cell(1,length(pts));
reset(RandStream.getGlobalStream);

%figure;
[result{1}] = vdpgm_dp(pts{1}, opts);
prior=result{1}.hp_prior;
%subplot(2,2,1)
KLdist(:,1)=kl(result{1}.hp_posterior,prior);
result{1}.hp_posterior.B{2}


%plot_seg(result{1}.hp_posterior,pts{1})
%find(result{1}.hp_posterior.Nc>1)
for i=2:size(KLdist,2)
%subplot(2,2,i)
hold on;
%update prior
opts=copy_prior(opts,result{i-1}.hp_posterior);
[result{i}] = vdpgm_dp(pts{i}, opts);
KLdist(:,i)=kl(result{i}.hp_posterior,prior);
%plot_seg(result{i}.hp_posterior,pts{i})
%plot(pts{i-1}(1,1:10:end),pts{i-1}(2,1:10:end),'m.')
%find(result{i}.hp_posterior.Nc>1)
result{i}.hp_posterior.B{2}
end


%{
hold on
for i=1:size(KLdist,1)
plot(KLdist(i,:))
end
xlabel('# routes')
ylabel('KL divergence from prior')
title('growth of KL for \mu')
[aa,bb]=sort(KLdist(:,end),'descend')
figure
hold on
D=2;
cc2={'b.','g.','r.','k.'};
for i=1:20
%plot_2dg(result{end}.hp_posterior.m(:,bb(i)), result{end}.hp_posterior.B{bb(i)}/(result{end}.hp_posterior.eta(bb(i))-1-D), 1, cc2{mod(i,3)+1})
plot_2dg(result{end}.hp_posterior.m(:,bb(i)), result{end}.hp_posterior.B{bb(i)}/(result{end}.hp_posterior.eta(bb(i))-1-D), 1, 'b')
end

plot(pts{4}(1,1:5:end),pts{4}(2,1:5:end),'k.')
plot(pts{1}(1,1:20:end),pts{1}(2,1:20:end),'m.')

hold on
for i=1:length(pts)
plot(pts{i}(1,:),pts{i}(2,:),'r-')
end
%}



%{
addpath('../')
hold on
what=13;
D=2;
for i=1:size(KLdist,2)
plot_2dg(result{i}.hp_posterior.m(:,what), result{i}.hp_posterior.B{what}/(result{end}.hp_posterior.eta(what)-1-D), 1, 'r-')
end
%}


%{
%plot independent
addpath('../')
load beacon_bk
K=50;
opts = mkopts_cdp(K); 
figure;
for i=1:4
if(i>1)
opts=copy_prior(opts,result{i-1}.hp_posterior);
j=1;
end
[result{i}] = vdpgm_dp(pts{i}, opts);
end

for i=1:4
subplot(2,2,i)
plot_seg(result{i}.hp_posterior,pts{i})
axis off
end


%}

