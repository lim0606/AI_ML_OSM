clear
%read in
a=dir('mat/');
y=[];
nn=[];
for i=3:length(a)
if(exist(['mat/' a(i).name '/sta.txt'])>0)
y=[y;w_readsta(['mat/' a(i).name '/sta.txt'])];
tmp=dir(['mat/' a(i).name '/*.gpx']);
nn=[nn,{tmp.name}];
end
end
y=[y(:,1:2);y(:,3:4)];
%1) cluster node
thres=0.03;
label=w_cluster(y,thres);
[a,b]=histc(label,1:max(label));
[aa,bb]=unique(label);
[aaa,bbb]=sort(a,'descend');
%{%}
%%write to node display
if(exist('mat/111/cluster.txt')>0)
delete mat/111/cluster.txt
end
tt={'lat','lon','title','description','icon','iconSize','iconOffset'};
dlmwrite('mat/111/cluster.txt',sprintf('%s\t', tt{:}),'delimiter','','-append');
for i=1:max(label)
tt={num2str(y(bb(i),1),6),num2str(y(bb(i),2),6),[num2str(find(bbb==i)) 'th Point'],['Count: ' num2str(a(i))],'images/me.png',[num2str(a(i)*2+21) ',' num2str(a(i)*2+25)],[num2str(-(a(i)*2+21)/2) ',' num2str(-a(i)*2-25)]};
dlmwrite('mat/111/cluster.txt',sprintf('%s\t', tt{:}),'delimiter','','-append');
end



%1) cluster route
xx=[label(1:length(nn)),label(length(nn)+1:end)];
label=w_cluster(xx,0);
[a,b]=histc(label,1:max(label));
[aa,bb]=unique(label);
[aaa,bbb]=sort(a,'descend');
%%write to route thickness
if(exist('mat/111/cluster.txt')>0)
delete mat/222/cluster.txt
end
for i=bbb'%1:max(label)
tmp=nn{bb(i)};
tmpin=find(tmp=='-',1,'first');
dlmwrite('mat/222/cluster.txt',[tmp(tmpin+1:tmpin+5) '/' tmp],'delimiter','','-append');
dlmwrite('mat/222/cluster.txt',num2str(a(i)),'delimiter','','-append');
end

