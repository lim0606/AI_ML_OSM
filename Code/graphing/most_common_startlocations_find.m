function [mainpts]=most_common_startlocations_find(data,start_date,end_date)
routes=data.routes;ways=data.ways;wayindex=data.wayindex;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
start_points = zeros(20000,1);
end_points = zeros(20000,1);
for i=1:size(routes,2)
    rt=routes(i);
    date=find_date(rt);
    if datenum(date) < datenum(start_date)
        %disp(['skip ' date])
        continue
    end
    if  datenum(date) > datenum(end_date)
       %disp(['skip ' date])
       continue
    end
    route_seg =rt.wids(1);
    temp = wayindex(route_seg);
    start_map_seg =ways(temp);
    
    route_seg =rt.wids(end);
    temp = wayindex(route_seg);
    end_map_seg =ways(temp);

    start_points(start_map_seg.id)  = start_points(start_map_seg.id)+1;
    end_points(end_map_seg.id)  = end_points(end_map_seg.id)+1;
    
%     plot(start_map_seg.s_lon,start_map_seg.s_lat,'gx');
%     plot(start_map_seg.e_lon,start_map_seg.e_lat,'gx');
%     plot(end_map_seg.s_lon,end_map_seg.s_lat,'rx');
%     plot(end_map_seg.e_lon,end_map_seg.e_lat,'rx');
end

mainpts.start.list = find(start_points>0);
mainpts.start.freq = start_points(mainpts.start.list);

mainpts.end.list = find(end_points>0);
mainpts.end.freq = end_points(mainpts.end.list);

[max_freq_start_pointsa,which_max_freq_start_points] = sort(mainpts.start.freq,1,'descend');
mainpts.start.max_freq_id = mainpts.start.list(which_max_freq_start_points);


function date=find_date(rt)
% Parse the filename to get the journey date
year_char = strfind(rt.name,'2011-');
if(isempty(year_char))
    year_char = strfind(rt.name,'2012-');
end
rt.name
date=datevec(datenum(rt.name(year_char:year_char+10),'yyyy-mm-dd'));
date=date(1:3);