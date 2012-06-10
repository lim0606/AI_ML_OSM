function most_common_routes_svg(data,mainpts,which_journeys,namenote,start_date,end_date)
% Input:
% - which_journeys: origin locations you are interested in plotting
%    can be either a number or an array e.g [3,4]
% Output:
% - svg of the route DAG
% - corresponding dot file

routes=data.routes;ways=data.ways;wayindex=data.wayindex;
N_colors=data.N_colors;colors=data.colors;

% Search through each route, find the links between road segments
% (which actually correpsond to intersections)
all_dot_wids=[];
conn= spalloc (20000,20000,10000);
for i=1:size(routes,2)
    rt=routes(i);
    % 
    
    date=find_date(rt);
    date_str=datestr(datenum(date),'yyyy-mm-dd');
    if datenum(date) < datenum(start_date)
        disp(['bskip ' date_str])
        continue
    end
    if  datenum(date) > datenum(end_date)
       disp(['askip ' date_str])
       continue
    end    
    
    % which rank: 
    if ~isempty(find(rt.wids(1) == mainpts.start.max_freq_id(which_journeys)))
    % specific id:
    %if ~isempty(find(rt.wids(1) == 4924))
        disp(['found: ' date_str])
        
        for j=1:(size(rt.wids,2) -1)
           conn(rt.wids(j),rt.wids(j+1)) =  conn(rt.wids(j),rt.wids(j+1)) + 1;
        end
        all_dot_wids = [all_dot_wids,rt.wids];
    end
end

% Parse the wids as nodes:
dot_wids=unique(all_dot_wids);
text_wids =[];
for i=1:size(dot_wids,2)
    i
   segname =  data.ways(data.wayindex(dot_wids(i))).name;
   line_out = {['"wid_' num2str(dot_wids(i)) '" [label="' num2str(dot_wids(i)) ' ' segname '"];']};
   text_wids = [text_wids;line_out];
end

% Parse the connections as edges (numbered by frequency)
[from_wid,to_wid,score]= find (conn);
text_conn =[];
for i=1:size(score,1)
   from  = ['"wid_' num2str(from_wid(i)) '"'];
   to  = ['"wid_' num2str(to_wid(i)) '"'];
   label =[' [label="' num2str(score(i)) '"];'];
   line_out = {[from ' -> '  to  label ]};    
   text_conn = [text_conn;line_out];
end

% Publish the nodes and edges
text_out= text_wids;
text_out= [text_out;{''};{''}];
text_out= [text_out;text_conn];
top = 'digraph TestGraph {';
bottom ='}';
fid = fopen('drive_history.dot','wt');
fprintf(fid,'%s\n',top);
for i=1:size(text_out,1)
    fprintf(fid,'%s\n',text_out{i});
end
fprintf(fid,'%s\n',bottom);
fclose(fid);

disp('About to make svg')
system(['dot -Tsvg drive_history.dot -o drive_history_journey' num2str(which_journeys) '_' namenote '.svg']);
disp('svg written')








function date=find_date(rt)
% Parse the filename to get the journey date
year_char = strfind(rt.name,'2011-');
if(isempty(year_char))
    year_char = strfind(rt.name,'2012-');
end
rt.name;
date=datevec(datenum(rt.name(year_char:year_char+10),'yyyy-mm-dd'));
date=date(1:3);