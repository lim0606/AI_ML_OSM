%base='/home/mfall n/nfs_data/ford_drivehistory/';
base='/afs/csail.mit.edu/proj/drivehistory/data/';
code='/afs/csail.mit.edu/u/d/donglai/FORD/drivehistory_repo/matlab/ParseCode/'

%base='/home/donglai/nfs_data/ford_drivehistory/';
%code='/home/donglai/Desktop/OSM/drivehistory_repo/matlab/ParseCode/'

addpath(base)
%addpath([base 'mat'])
addpath([base 'mat_smoothed'])
addpath([base 'gpx'])

addpath(code)
addpath([code 'log2mat'])
addpath([code 'mat2gpx'])
addpath([code 'gpx2rt_py'])
addpath([code 'rt_py2mat'])



%
%
% %1. log->mat
%ff=dir(base);
%{
ff= dir([base '/*download*'])
for i=1:length(ff)
    if(sum(ff(i).name=='-')>0)
        fn=[base ff(i).name '/extracted_files/'];
        keyboard
        logparse(fn)
        movefile([fn '*.mat'],[base '/mat'])
        disp(['move mat files from ' fn])
    end
end
%}
% 
% 
% %2. mat->gpx
 ff=dir([base '/mat_smoothed/*.mat']);
 parfor i=1:length(ff)
 w_gpxwriter(ff(i).name,[base 'gpx/']);
 end
% 

%3. gpx->rt_py:python code
% cd ./gpx2rt_py
% python osm_main.py

keyboard

%4. rt_py->rt->mat
rt_py2mat([base 'route/'])


