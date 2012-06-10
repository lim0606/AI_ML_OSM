function most_common_segments(routes,ways,wayindex)
% Find the most common road segments driven

occurances = zeros(20000,1);
all_wids=[]
for i=1:size(routes,2)
   i
   r = routes(i);
   wids = r.wids;
   occurances(wids) = occurances(wids)+1;   
end
figure
subplot(2,1,1)
plot(occurances)
title('Road Segment Frequency')
ylabel('Frequency')
xlabel('Road Segment Number')

subplot(2,1,2)
sort_occ = sort(occurances,1,'descend');
first_zero = find(sort_occ==0,1,'first')
plot(sort_occ)
hold on
plot(first_zero ,0,'xr','MarkerSize',10,'MarkerFaceColor','r')
title('Ordered Road Segment Frequency')
ylabel('Frequency')
xlabel('Ordered Road Segments')

max_occur = max(occurances)
figure,
hold on
axis([-71.18 -71.08 42.31 42.39]), axis equal
plot_background
min_to_show = 0; % 0 means show all the data
for i=1:size(occurances,1)
    if occurances(i)>min_to_show
        W_color = jet_lookup(occurances(i)/max_occur);
        j = wayindex(i);
        lats =[ways(j).s_lat,ways(j).e_lat];
        lon =[ways(j).s_lon,ways(j).e_lon];
        
        plot(lon,lats,'Color',[W_color], 'LineWidth',2);%,
    end
end
caxis ([0 max_occur])
colorbar
title('All <<<SEGMENTS>>> travelled - coloured by frequency')

figure
%[most common]
hold on
axis([-71.18 -71.08 42.31 42.39]), axis equal
plot_background
min_to_show = 4; % 0 means show all the data
for i=1:size(occurances,1)
    if occurances(i)>min_to_show
        W_color = jet_lookup(occurances(i)/max_occur);
        j = wayindex(i);
        lats =[ways(j).s_lat,ways(j).e_lat];
        lon =[ways(j).s_lon,ways(j).e_lon];
        plot(lon,lats,'Color',[W_color], 'LineWidth',2);%,
    end
end
title('All <<<SEGMENTS mor than 4 times>>> travelled - coloured by frequency')
caxis ([0 max_occur])
colorbar