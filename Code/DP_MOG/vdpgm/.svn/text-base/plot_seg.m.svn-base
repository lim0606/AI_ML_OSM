function y=plot_seg(posterior,data)
cc={'b-','g-','r-'};
cc2={'b.','g.','r.','k.'};
D=size(data,1);
hold on;
[a,cclass]=max(posterior.q_of_z');
clus_num=length(unique(cclass));

bb=1;
for i=unique(cclass)
plot(data(1,cclass==i),data(2,cclass==i),cc2{4});
plot_2dg(posterior.m(:,i), posterior.B{i}/(posterior.eta(i)-1-D), 1, cc2{mod(bb,3)+1})
plot(posterior.m(1,i),posterior.m(2,i),'mx','MarkerSize',10)
bb=bb+1;
end
title([num2str(clus_num) ' clusters'])

end
