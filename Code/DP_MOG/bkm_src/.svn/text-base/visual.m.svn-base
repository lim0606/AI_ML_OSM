figure;
hold on;
cc={'b-','g-','r-'};
cc2={'b.','g.','r.'};
for i=1:length(clusters)
plot_2dg(mean(clusters{i},2), cov(clusters{i}'), 1, cc{mod(i,3)+1})
plot(clusters{i}(1,:),clusters{i}(2,:),cc2{mod(i,3)+1})
end
title([num2str(length(ind)) ' clusters'])
