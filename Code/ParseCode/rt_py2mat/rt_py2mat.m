function y=rt_py2mat(fn)

a=dir([fn '*.rt']);
% 0) basic data structure: 
routes=struct('name', {}, 'wids',{},'direct',{}, 'gpxs',{},'s_lat', {},'s_lon', {},'e_lat', {},'e_lon', {});
ways=struct('name', {},'id', {}, 's_lat', {},'s_lon', {},'e_lat', {},'e_lon', {});
%no hashtable in matlab, so sparse matrix instead...
wayindex=sparse(1,20000);

% 1) read all .rt and build data structure: 
cc=1;
for i=1:length(a)
i
b=textread([fn a(i).name],'%s','delimiter',',');

% 1.1) build route
tmp=cellfun(@(V) [V ','], b(1:8:end-7), 'Uniform', 0);
if(sum(str2num([tmp{:}])==-1)==0)
%if wayid=-1, then part of the route is out of boundary of the maplet, throw it away
routes(cc).wids=1+str2num([tmp{:}]);%way ids of road segments it contains
tmp=cellfun(@(V) [V ','], b(3:8:end-5), 'Uniform', 0);
tmp2=cellfun(@(V) [V ','], b(6:8:end-2), 'Uniform', 0);
routes(cc).gpxs=[str2num([tmp{:}]);str2num([tmp2{:}])];%gpx data corresponds to each road segment
routes(cc).name=a(i).name;
routes(cc).s_lat=str2num(b{4});
routes(cc).s_lon=str2num(b{5});
routes(cc).e_lat=str2num(b{end-1});
routes(cc).e_lon=str2num(b{end});
routes(cc).direct=ones(1,length(routes(cc).wids));;

% 1.2) build roadsegments and "hash" it
eval(['gpx = load(''' fn(1:end-6) 'mat_smoothed/' a(i).name(1:end-2) 'mat'');'])
for j=1:length(b)/8
%way index start from 0
index2=1+str2num(b{j*8-7});
if(index2~=0 && wayindex(index2)==0)
%new
index=length(ways)+1;
wayindex(index2)=index;
ways(index).id=index2;
ways(index).name=b{j*8-6};
ways(index).s_lat=str2num(b{j*8-4});
ways(index).s_lon=str2num(b{j*8-3});
ways(index).e_lat=str2num(b{j*8-1});
ways(index).e_lon=str2num(b{j*8});
%wayindex(index)=index;
end

    %if(j>1 && routes(cc).wids(j)==routes(cc).wids(j-1))
    %else
%routes(cc).gpxs
%[j,length(b)/8]
tmp_slat=gpx.lat_smoothed(routes(cc).gpxs(1,j)+1);
tmp_slon=gpx.lon_smoothed(routes(cc).gpxs(1,j)+1);
tmp_slat2=gpx.lat_smoothed(routes(cc).gpxs(2,j)+1);
tmp_slon2=gpx.lon_smoothed(routes(cc).gpxs(2,j)+1);

% hack 1: no movement
if (abs(tmp_slon-tmp_slon2)+abs(tmp_slat-tmp_slat2)==0)
    %length(gpx.lat_smoothed)
    %routes(cc).gpxs(:,j)
    if (length(gpx.lat_smoothed)>routes(cc).gpxs(2,j)+1)
    tmp_slat2=gpx.lat_smoothed(routes(cc).gpxs(2,j)+2);
    tmp_slon2=gpx.lon_smoothed(routes(cc).gpxs(2,j)+2);
elseif(routes(cc).gpxs(1,j)>0)
    tmp_slat=gpx.lat_smoothed(routes(cc).gpxs(1,j));
    tmp_slon=gpx.lon_smoothed(routes(cc).gpxs(1,j));
    end
end
% hack 2: discontinuity
add = 2;
while (abs(tmp_slon-tmp_slon2)+abs(tmp_slat-tmp_slat2)>=3e-4 && length(gpx.lat_smoothed)>routes(cc).gpxs(1,j)+add)
    tmp_slat=gpx.lat_smoothed(routes(cc).gpxs(1,j)+add);
    tmp_slon=gpx.lon_smoothed(routes(cc).gpxs(1,j)+add);
    add = add +1;
end



%compare L1 dist
%{
% one point estimation
if(abs(tmp_slat-ways(index).s_lat)+abs(tmp_slon-ways(index).s_lon)>...
abs(tmp_slat-ways(index).e_lat)+abs(tmp_slon-ways(index).e_lon))
%}
% two points estimation
index = wayindex(index2);
%{
if(abs(tmp_slat-ways(index).s_lat)+abs(tmp_slon-ways(index).s_lon)>...
abs(tmp_slat2-ways(index).s_lat)+abs(tmp_slon2-ways(index).s_lon))
%}
%use direction
if((tmp_slat-tmp_slat2)*(ways(index).s_lat-ways(index).e_lat)+...
(tmp_slon-tmp_slon2)*(ways(index).s_lon-ways(index).e_lon)<0)
routes(cc).direct(j)=0;
%[cc-1,j]
%end
end


end


rep = find(routes(cc).wids(2:end) - routes(cc).wids(1:end-1)==0);
if ~ isempty(rep)
 routes(cc).wids(rep)=[];
 routes(cc).direct(rep)=[];
 routes(cc).gpxs(2,rep)=routes(cc).gpxs(2,rep+1);
 routes(cc).gpxs(:,rep+1) = [];

end


cc=cc+1;




end
end

save drive_data.mat ways routes wayindex

end
%{
%test: draw a certain route
cc={'b-','r-','g-'};
figure;hold on;
for i=routes(1).wids
plot([ways(wayindex(i)).s_lon,ways(wayindex(i)).e_lon],[ways(wayindex(i)).s_lat,ways(wayindex(i)).e_lat],cc{mod(i,3)+1})
%plot([ways(wayindex(i)).e_lon],[ways(wayindex(i)).e_lat],'rx')
end
%}




