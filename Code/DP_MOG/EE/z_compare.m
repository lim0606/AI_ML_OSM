colors=['b-';'g-';'k-';'r-';'y-';'m-';'c-';'k*'];
MU = [1.2 1;-1 0;-0.5,3;0.1,2];
sstd=cat(3,[.4 -.1;-.1 .4],[.2 0;0 .2],[.3 0;0 .3],[.3 .2;.2 .3]);
SIGMA = cat(3,sstd(:,:,1)^2,sstd(:,:,2)^2,sstd(:,:,3)^2,sstd(:,:,4)^2);
p = [.2,.2,.2,.4];
obj = gmdistribution(MU,SIGMA,p);
y = random(obj,20);


%true:
for i=1:4
posterior(:,i)=p(i)*mvnpdf(y,MU(i,:),sstd(:,:,i));
end
[a,label]=max(posterior');
real_likelihood=0;
for j=1:length(y)
real_likelihood=real_likelihood+log(mvnpdf(y(j,:),MU(label(j),:),sstd(:,:,label(j))));
end


%bj
opts=cell(1,8);
opts{1} = mkopts_bj(0,10);
opts{2} = mkopts_bj(0,20);
opts{3} = mkopts_bj(10,10);
opts{4} = mkopts_bj(10,20);
opts{5} = mkopts_cdp(10); 
opts{6} = mkopts_cdp(20); 
opts{7} = mkopts_csb(10); 
opts{8} = mkopts_csb(20); 


log_like=cell(1,8);
qq=cell(1,8);
for i=1:8
[result,logli] = ddp2(y', opts{i});
log_like{i}=[logli,load('logli')];
qq{i}=result.hp_posterior.q_of_z;
clear logli
end

%bj test
figure
hold on 
for i=1:4
plot(log_like{i},colors(i,:))
end
title('bj test')
legend('iter=0,K=10','iter=0,K=20','iter=10,K=10','iter=10,K=20')
%cluster
colorpt=['b.';'g.';'r.';'m.';'y.';'k.';'c.'];
bbjj=cell(1,4);
bbjj{1}='iter=0,K=10';
bbjj{2}='iter=0,K=20';
bbjj{3}='iter=10,K=10';
bbjj{4}='iter=10,K=20';
for k=1:4
[a,class]=max(qq{k}');
subplot(2,2,k)
hold on
duck=unique(class);
count=1;
for i=duck
plot(y(find(class==i),1),y(find(class==i),2),colorpt(mod(count,7)+1,:))
count=count+1;
end
title(['cluster num ',num2str(count-1),', ',bbjj{k}])
end



%bj_csb_cdp test
figure
hold on 
for i=1:2:7
plot(log_like{i},colors(i,:))
end
title('bj csb cdp test K=10')
legend('bj iter=0','bj iter=10','cdp','csb')
colorpt=['b.';'g.';'r.';'m.';'y.';'k.';'c.'];
bbjj=cell(1,4);
bbjj{1}='bj iter=0';
bbjj{2}='bj iter=10';
bbjj{3}='cdp';
bbjj{4}='csb';
figure
for k=1:4
[a,class]=max(qq{(k-1)*2+1}');
subplot(2,2,k)
hold on
duck=unique(class);
count=1;
for i=duck
plot(y(find(class==i),1),y(find(class==i),2),colorpt(mod(count,7)+1,:))
count=count+1;
end
title(['cluster num ',num2str(count-1),', ',bbjj{k}])
end




figure
hold on 
for i=2:2:8
plot(log_like{i},colors(i,:))
end
title('bj csb cdp test K=20')
legend('bj iter=0','bj iter=10','cdp','csb')

colorpt=['b.';'g.';'r.';'m.';'y.';'k.';'c.'];
bbjj=cell(1,4);
bbjj{1}='bj iter=0';
bbjj{2}='bj iter=10';
bbjj{3}='cdp';
bbjj{4}='csb';
figure
for k=1:4
[a,class]=max(qq{k*2}');
subplot(2,2,k)
hold on
duck=unique(class);
count=1;
for i=duck
plot(y(find(class==i),1),y(find(class==i),2),colorpt(mod(count,7)+1,:))
count=count+1;
end
title(['cluster num ',num2str(count-1),', ',bbjj{k}])
end


