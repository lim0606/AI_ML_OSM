load ../drive_data_01_26

nn=cell(1,length(routes));
pts=cell(1,length(routes));
for i=1:length(routes)
nn{i}=routes(i).name;
ind=find(nn{i}=='-',1,'first');
gpx=textread(['../../gpx/' nn{i}(ind+1:ind+5) '/' nn{i}(1:end-3) '.gpx'],'%s');
tmp=cellfun(@(V) [ V(find(V=='"',1,'first')+1:find(V=='"',1,'last')-1) ','], gpx(8:5:end-6), 'Uniform', 0);
lat= str2num([tmp{:}]);
tmp=cellfun(@(V) [ V(find(V=='"',1,'first')+1:find(V=='"',1,'last')-1) ','], gpx(9:5:end-5), 'Uniform', 0);
lon= str2num([tmp{:}]);
pts{i}=[lon;lat];
end

save routes.mat pts
