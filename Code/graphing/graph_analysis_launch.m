% Analysis of Driving History Data
% Produces DAGs of routes from most common starting locations
% mfallon

close all
clear all
addpath('../rt2roadseg')
addpath('../tools')
load('drive_data.mat')
data.routes=routes;data.ways=ways;data.wayindex=wayindex;
data.colors='bgrcmk'; data.N_colors = size(data.colors,2);


% 1. Display the coarse set of journeys travelled
%most_common_segments(routes,ways,wayindex)

% 2. Find and display the most common start and end points
%    and the routes between them
start_date = [2000, 0, 0]
end_date = [2012 10 0]
[mainpts]=most_common_startlocations_find(data,start_date,end_date);
most_common_startlocations_plot(data,mainpts);


% 3. Display the evolution of journeys from one common start location:
%    This was the 1st attempt. Useful as an example of the difficulty:
%wid_rank=2;
%most_common_routes_plot_crude(data,mainpts,wid_rank)

% 4. Display the evolution of journeys from one common start location:
%    Create a DAG in an svn for analysis
wid_rank=3;
namenote = 'jan_20_2012'
most_common_routes_svg(data,mainpts,wid_rank,namenote,start_date,end_date)