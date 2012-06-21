

figure;
hold on;
plot(y(:,1),y(:,2),'k.')
cc={'b-','g-','r-'};
ind=find(result.hp_posterior.Nc>0.1);
for i=ind
plot_2dg(result.hp_posterior.m(:,i), result.hp_posterior.B{i}, 0.1, cc{mod(i,3)+1})
plot(result.hp_posterior.m(1,i),result.hp_posterior.m(2,i),'mx','MarkerSize',10)
end
title([num2str(length(ind)) ' clusters'])
