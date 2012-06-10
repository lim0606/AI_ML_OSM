load drive_data

%{
ll=[1];
for i=2:length(routes)
if((routes(i).wids(1)==routes(1).wids(1)&&routes(i).wids(end)==routes(1).wids(end))||(routes(i).wids(1)==routes(1).wids(end)&&routes(i).wids(end)==routes(1).wids(1)))
ll=[ll,i];
end
end
%}
%{
figure;hold on;
for j=ll
for i=routes(j).wids
plot([ways(wayindex(i)).s_lon,ways(wayindex(i)).e_lon],[ways(wayindex(i)).s_lat,ways(wayindex(i)).e_lat],'b-')
%plot([ways(wayindex(i)).e_lon],[ways(wayindex(i)).e_lat],'rx')
end
end
%}

nn{1}=routes(1).name;
for i=1:length(nn)
ind=find(nn{i}=='-',1,'first');
gpx=textread(['../data_gpx/' nn{i}(ind+1:ind+5) '/' nn{i}(1:end-3) '.gpx'],'%s');
tmp=cellfun(@(V) [ V(find(V=='"',1,'first')+1:find(V=='"',1,'last')-1) ','], gpx(8:5:end-6), 'Uniform', 0);
lat= str2num([tmp{:}]);
tmp=cellfun(@(V) [ V(find(V=='"',1,'first')+1:find(V=='"',1,'last')-1) ','], gpx(9:5:end-5), 'Uniform', 0);
lon= str2num([tmp{:}]);
pts=[lon;lat];
end
gt=zeros(1,length(pts));

aa={ways(wayindex(routes(1).wids)).name};
bb=unique(aa);
tmp=routes(1).gpxs+1;
for i=1:length(bb)
for ind=find(ismember(aa, bb{i})==1) 
gt(tmp(1,ind):tmp(2,ind))=i; 
end

save gps pts gt
%{
%}
%statistics

sta=[];
for i=1:length(routes)
sta=[sta,routes(i).gpxs(2,:)-routes(i).gpxs(1,:)+1];
end
cc=histc(sta,1:max(sta));
figure;plot(sort(cc,'descend')/sum(cc),'r--')
hold on;
sb(30);
xlabel('number of points')
ylabel('proportion of road segments')
legend('Empirical','DP(30)')




%{
%debug direction
idn = 9039;
nn={'2011-08-22 08-56-35-708726 Partition 0 36.rt','2011-09-21 08-04-37-597329 Partition 0 22.rt',...
'2011-09-26 07-41-54-681485 Partition 0 22.rt','2011-10-17 08-28-27-226403 Partition 0 46.rt','2011-12-14 08-24-55-370476 Partition 0 12.rt'};

nn={'2011-08-22 08-56-35-708726 Partition 0 36.rt','2011-08-24 09-14-19-154160 Partition 0 13.rt'...
,'2011-08-25 08-36-25-401227 Partition 0 19.rt','2011-08-26 09-19-36-821972 Partition 0 23.rt'...
,'2011-08-29 09-11-13-694167 Partition 0 52.rt','2011-09-05 16-36-21-968189 Partition 0 21.rt'...
,'2011-09-08 08-06-27-663324 Partition 0 7.rt','2011-09-20 10-45-30-977231 Partition 0 16.rt'...
,'2011-09-21 08-04-37-597329 Partition 0 22.rt','2011-09-26 07-41-54-681485 Partition 0 22.rt'}


rr={'2011-10-05 16-19-50-923298 Partition 0 79.rt','2011-10-28 18-04-57-800685 Partition 0 22.rt','2011-11-01 17-06-15-636928 Partition 0.rt'};
rr={'2012-02-18 08-44-55-945282 Partition 0 31.rt'};

for i = 1:length(rr)
ind=find(cellfun(@strcmp,{routes.name},repmat(rr(i),1,length(routes))))
routes(ind).direct(find(routes(ind).wids==idn))
end
for i = 1:length(nn)
ind=find(cellfun(@strcmp,{routes.name},repmat(nn(i),1,length(routes))));
routes(ind).direct(find(routes(ind).wids==idn))
end

ind=find(cellfun(@strcmp,{a.name},repmat({'2011-10-21 15-45-18-918979 Partition 0.rt'},1,length(a))));

ind=find(cellfun(@strcmp,{a.name},repmat({routes(38).name},1,length(a))));

for ww = 1: length(ways)
if ways(ww).id==idn
    ww
    break
end
end


idn = 7322;
index=wayindex(idn)
rr={'2011-08-19 18-44-12-342476 Partition 0 4.rt'};
base='/afs/csail.mit.edu/proj/drivehistory/data/';
fn=[base 'route/']
a=dir([fn '*.rt']);
i=find(cellfun(@strcmp,{a.name},repmat(rr(1),1,length(a))));
cc=find(cellfun(@strcmp,{routes.name},repmat(rr(1),1,length(routes))))
j=find(routes(cc).wids==idn)
eval(['gpx = load(''' fn(1:end-6) 'mat_smoothed/' a(i).name(1:end-2) 'mat'');'])
tmp_slat=gpx.lat_smoothed(routes(cc).gpxs(1,j)+1);
tmp_slon=gpx.lon_smoothed(routes(cc).gpxs(1,j)+1);
tmp_slat2=gpx.lat_smoothed(routes(cc).gpxs(2,j)+1);
tmp_slon2=gpx.lon_smoothed(routes(cc).gpxs(2,j)+1);
if (abs(tmp_slon-tmp_slon2)+abs(tmp_slat-tmp_slat2)==0)
tmp_slat2=gpx.lat_smoothed(routes(cc).gpxs(2,j)+2);
tmp_slon2=gpx.lon_smoothed(routes(cc).gpxs(2,j)+2);

end
[tmp_slat,tmp_slon,tmp_slat2,tmp_slon2]

[ways(ww).s_lat,ways(ww).s_lon,ways(ww).e_lat,ways(ww).e_lon]
b=textread([fn a(i).name],'%s','delimiter',',');

%}

base='/afs/csail.mit.edu/proj/drivehistory/data/';
rt_py2mat([base 'route/'])

