function most_common_startlocations_plot(data,mainpts)
routes=data.routes;ways=data.ways;wayindex=data.wayindex;
N_colors=data.N_colors;colors=data.colors;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
subplot(2,2,1),hold on
plot_background,axis equal, axis([-71.18 -71.08 42.31 42.39])
for i=1:size(mainpts.start.list,1)
    W_color = jet_lookup(mainpts.start.freq(i)/max(mainpts.start.freq));
    this_seg = ways(wayindex(mainpts.start.list(i)));
    plot(this_seg.s_lon,this_seg.s_lat,'.','Color',[W_color],'MarkerSize',20);%,
end
caxis ([0 max(mainpts.start.freq)])
colorbar
title('Starting Location')

subplot(2,2,2),hold on
plot_background,axis equal, axis([-71.18 -71.08 42.31 42.39])
for i=1:size(mainpts.end.list,1)
        W_color = jet_lookup(mainpts.end.freq(i)/max(mainpts.end.freq));
        this_seg = ways(wayindex(mainpts.end.list(i)));
        plot(this_seg.s_lon,this_seg.s_lat,'.','Color',[W_color],'MarkerSize',20);%,
end
caxis ([0 max(mainpts.end.freq)])
colorbar
title('Ending Location')


subplot(2,2,3),hold on
plot_background,axis equal, axis([-71.18 -71.08 42.31 42.39])
for i=1:size(mainpts.start.list,1)
    if (mainpts.start.freq(i)) >3
        W_color = jet_lookup(mainpts.start.freq(i)/max(mainpts.start.freq));
        this_seg = ways(wayindex(mainpts.start.list(i)));
        plot(this_seg.s_lon,this_seg.s_lat,'.','Color',[W_color],'MarkerSize',20);%,
    end
end
caxis ([0 max(mainpts.start.freq)])
colorbar

title('Starting Location [more than 3 times]')

subplot(2,2,4),hold on
plot_background,axis equal, axis([-71.18 -71.08 42.31 42.39])
for i=1:size(mainpts.end.list,1)
    if (mainpts.end.freq(i)) >3
        W_color = jet_lookup(mainpts.end.freq(i)/max(mainpts.end.freq));
        this_seg = ways(wayindex(mainpts.end.list(i)));
        plot(this_seg.s_lon,this_seg.s_lat,'.','Color',[W_color],'MarkerSize',20);%,
    end
end
caxis ([0 max(mainpts.end.freq)])
colorbar
title('Ending Location [more than 3 times]')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure,
for j=1:4
    subplot(2,2,j),hold on
    plot_background,axis equal, axis([-71.18 -71.08 42.31 42.39])
    top_x=j
    count=0
    found =0;
    for i=1:size(routes,2)
        rt=routes(i);
        if (rt.wids(1) == mainpts.start.max_freq_id(top_x))
            % start currently broken
            %plot(rt.e_lon,rt.e_lat,['kx'],'MarkerSize',10,'MarkerFaceColor','k')
            count=count +1;
            found=i;
            W_color = mod(i,N_colors)+1;
            plot_a_route_raw(rt,colors(W_color),'-')
            plot(rt.e_lon,rt.e_lat,[colors(W_color) 'o'],'MarkerSize',5,'MarkerFaceColor',colors(W_color))
        end
    end
    
    rt=routes(found);
    plot(rt.s_lon,rt.s_lat,['ko'],'MarkerSize',10,'MarkerFaceColor','k')
    title([num2str(count) ' routes starting from ' num2str(top_x) 'th most common origin [wid=' num2str(mainpts.start.max_freq_id(top_x)) ']'])
end
