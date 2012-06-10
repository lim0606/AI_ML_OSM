function [mainpts]=most_common_routes_plot(data,mainpts,rankid)
routes=data.routes;ways=data.ways;wayindex=data.wayindex;
N_colors=data.N_colors;colors=data.colors;

hash=[];
count =0;
for i=1:size(routes,2)
     rt=routes(i);
     if (rt.wids(1) == mainpts.start.max_freq_id(rankid))
         count= count+1;
         for j=1:(size(rt.wids,2)-1)
            if isempty(find(rt.wids(j)==hash)) % if not in the hash table
                hash = [hash,rt.wids(j)];
                hash_connect(size(hash,2)).conn = rt.wids(j+1);
            else
                idx = find(rt.wids(j)==hash);
                hash_connect(idx).conn = [hash_connect(idx).conn,rt.wids(j+1)];
            end
         end
     end
end
hash_y = rand(size(hash));


used_wids = zeros(20000,1);
for i=1:size(routes,2)
     rt=routes(i);
     if (rt.wids(1) == mainpts.start.max_freq_id(rankid))
        rt=routes(i);
        used_wids(rt.wids) =used_wids(rt.wids) +1;
        end_wids = rt.wids(end);
     end
end
used_wids_list = find(used_wids);

figure
hold on
for i=1:size(hash,2)
   [ids,freq]=unique(hash_connect(i).conn)
   for j=1:size(ids,2)
%       from = hash(i);
%       to = ids(j);
       
       from =i;
       to = find(hash == ids(j));
       
       from_y = hash_y(i);
       to_y = hash_y(find(hash == ids(j)));
       W_color = jet_lookup(freq(j)/(count+3)); % required due to issue...
       %if (freq(j)/count >0.4)
       
        theta =  2*pi *[from to] ./ (size(hash,2));
        [x,y] = POL2CART(theta,1);
        
        plot(x,y,'Color',[W_color],'LineWidth',4);       
   end   
end
title('interconnections | red =100%, blue=0%')


figure
hold on
for i=1:size(routes,2)
    wids_short=[];
    rt=routes(i);
    if (rt.wids(1) == mainpts.start.max_freq_id(rankid))
        W_color =colors(mod(i,N_colors)+1)
        for j=1:size(rt.wids,2)
            wids_short(j) = find(used_wids_list  == rt.wids(j));
        end
        x = linspace(0,1,size(rt.wids,2));
        % using original numbering:
        %plot(x,rt.wids,[W_color '.-']);
        % using unique numbers only:
        plot(x,wids_short,[W_color '.-']);
    end
end
title(['progression of ' num2str(rankid) 'th top journey' ])
xlabel('% of journey complete')
ylabel('Road Segment')


%%%%%%%%
N_used_ids = size(used_wids_list,1);
figure,hold on
count=0;
for i=1:size(routes,2)
    wids_short=[];
    rt=routes(i);
    if (rt.wids(1) == mainpts.start.max_freq_id(rankid))
        count= count+1
        W_color =colors(mod(i,N_colors)+1)
        for j=1:size(rt.wids,2)
            wids_short(j) = find(used_wids_list  == rt.wids(j));
        end
        
        theta =  2*pi *wids_short ./ (N_used_ids);
        [x,y] = POL2CART(theta,1);
        
        plot(x,y,[W_color '.-']);
        plot(x(end),y(end),[W_color 'o'],'MarkerSize',10,'MarkerFaceColor',W_color);
        plot(x(1),y(1),['k+'],'MarkerSize',10,'MarkerFaceColor','k');
    end
end