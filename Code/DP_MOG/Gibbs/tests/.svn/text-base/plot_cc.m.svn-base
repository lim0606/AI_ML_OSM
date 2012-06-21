figure; 

for jj=1:9
    subplot(4,3,jj)
    axis([-10 15 -15 15])
hoho=datas(:,(jj-1)*200+1:jj*200);
colors=['b.';'g.';'r.';'m.';'y.';'k.';'c.';'bo';'go';'ro';'mo';'yo';'ko';'co';'b*';'k*';'r*';'m*';'y*';'k*'];
count=1; 
%label=zeros(1,200);
hold on
for k=unique(tji{jj})
indind=find(tji{jj}==k);
%label(indind)=k;
%T=41;
%plot(hoho(1,T),hoho(2,T),'ro')
plot(hoho(1,indind),hoho(2,indind),colors(tabllees{jj}{k}.k,:))
%plot(hoho(1,indind),hoho(2,indind),colors(count,:))
end
count=count+1;
end
%drawnow
subplot(4,3,[10:12])
plot(Fs)
%drawnow
%saveas(gcf,[pwd,'/',num2str(ww),'.jpg']); 
%close 
