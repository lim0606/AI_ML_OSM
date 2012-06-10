%filename='mfallon mit 2011-08-19 13-06-03-315132 Partition 0.mat'
clear all
close all
addpath(pwd)


%1) convert .mat to .gpx
cd mat
f=dir('*.mat');
for i=1:length(f)
w_gpxwriter(f(i).name,'');
end

%2) write sta.txt recording [start pt-end pt+time] for all routes for each day
w_sta

%3) write cluter.txt to cluster nodes and routes based on sta.txt
w_count
