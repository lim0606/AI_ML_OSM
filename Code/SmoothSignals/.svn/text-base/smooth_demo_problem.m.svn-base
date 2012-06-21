function smooth_demo_problem()
% demo a single instance of problems with the GPS
% not developted anymore. only for demoing this

clear all
close all
addpath('../tools')
%addpath(pwd)

flist = '/home/mfallon/nfs_data/ford_drivehistory/2011-09-23-download4/extracted_files/'
f=dir([flist '*.mat']);

i=22

last_data=load([flist f(i).name]);
last_data.n_sats =last_data.GPS_Data_Nav_3_GPS_Sat_num_in_view; % for simplicity
i=i+1
data=load([flist f(i).name]);
data.n_sats =data.GPS_Data_Nav_3_GPS_Sat_num_in_view; % for simplicity

h=figure
plot_two_journeys(h,last_data,data)



[data.east,data.north] =LatLon2LocalGrid(data.lat,data.lon)
[last_data.east,last_data.north] =LatLon2LocalGrid(last_data.lat,last_data.lon)
figure, hold on
scatter(last_data.east,last_data.north,50,last_data.n_sats,'.')
scatter(data.east,data.north,50,data.n_sats,'x')
axis equal,xlabel('M East'),xlabel('M North')

figure
subplot(2,1,1)
diff_dist = sqrt((diff(data.east)).^2 + (diff(data.north)).^2)
plot(diff_dist)
xlabel('Time [sec])')
ylabel('Diff in distance [m]')


figure;
subplot(2,1,1)
plot(last_data.lon)
hold on
plot(last_data.lat)
subplot(2,1,2)
plot(last_data.n_sats)


figure;
subplot(2,1,1)
plot(data.lon)
hold on
plot(data.lat)
subplot(2,1,2)
plot(data.n_sats)

st = 755
[e,n]=LatLon2LocalGrid(last_data.lat(st),last_data.lon(st))


hdg =  (90-   last_data.GPS_Data_Nav_3_GPS_Heading(st))*pi /180;

disp([num2str(e) ',' num2str(n)  ',' num2str(last_data.n_sats(st)) ',' num2str(hdg)])

for i=st+1 :size(last_data.lon,1)
    [e_l,n_l]=LatLon2LocalGrid(last_data.lat(i-1),last_data.lon(i-1));
    
    [e,n]=LatLon2LocalGrid(last_data.lat(i),last_data.lon(i));
    
    d_pos(1) =e - e_l;
    d_pos(2) =n - n_l;
    
    d_pos_relative=  global_d_pos_and_heading_2_differential(d_pos,last_data.GPS_Data_Nav_3_GPS_Heading(i-1));
    
    d_hdg =- (last_data.GPS_Data_Nav_3_GPS_Heading(i) - last_data.GPS_Data_Nav_3_GPS_Heading(i-1))*pi/180;
    
    h= last_data.GPS_Data_Nav_3_GPS_Heading(i);
    
    disp([num2str(e) ',' num2str(n)  ',' num2str(last_data.n_sats(i)) ',' ...
        num2str( d_hdg) ',' num2str( d_pos_relative(1)) ',' num2str( d_pos_relative(2))])
end




for i=1 : 4 %size(data.lon,1)
    if i==1
        e_l =e;
        n_l = n;
        h_l = h;
    else
        [e_l,n_l]=LatLon2LocalGrid(data.lat(i-1),data.lon(i-1));
        h_l = data.GPS_Data_Nav_3_GPS_Heading(i-1);
    end
    
    
    [e,n]=LatLon2LocalGrid(data.lat(i),data.lon(i));
    
    d_pos(1) =e - e_l;
    d_pos(2) =n - n_l;
    
    d_pos_relative=  global_d_pos_and_heading_2_differential(d_pos,h_l);
    
    d_hdg =- (data.GPS_Data_Nav_3_GPS_Heading(i) - h_l)*pi/180;
    
    disp([num2str(e) ',' num2str(n)  ',' num2str(data.n_sats(i)) ',' ...
        num2str( d_hdg) ',' num2str( d_pos_relative(1)) ',' num2str( d_pos_relative(2))])
end


keyboard




function plot_two_journeys(h,last_data,data)


figure(h)

subplot(2,2,1),hold on,
plot_background,axis equal, axis([-71.18 -71.08 42.31 42.39])
scatter( last_data.lon,last_data.lat,50,last_data.n_sats,'.')
colorbar,caxis([0 9])

subplot(2,2,2),hold on,
axis equal, axis([-71.18 -71.08 42.31 42.39])
scatter( last_data.lon,last_data.lat,50,last_data.n_sats,'.')
scatter( last_data.lon(1),last_data.lat(1),700,last_data.n_sats(1),'.')
colorbar,caxis([0 9])

subplot(2,2,1),hold on,
scatter( data.lon,data.lat,50,data.n_sats,'x')

subplot(2,2,2),hold on,
scatter( data.lon,data.lat,50,data.n_sats,'x')
scatter( data.lon(1),data.lat(1),700,data.n_sats(1),'x')
colorbar,caxis([0 9])


subplot(2,2,3),hold on,
axis equal
scatter( last_data.lon,last_data.lat,50,last_data.n_sats,'.')
scatter( last_data.lon(1),last_data.lat(1),700,last_data.n_sats(1),'.')
colorbar,caxis([0 9])

subplot(2,2,4),hold on,
axis equal
scatter( data.lon,data.lat,50,data.n_sats,'x')
scatter( data.lon(1),data.lat(1),700,data.n_sats(1),'x')
colorbar,caxis([0 9])



function [v]=global_d_pos_and_heading_2_differential(d_pos,hdg)
% + rotation anti clockwise
% + forward
% + left laterally
%d_pos = change in east and north meters
% hdg = current heading in degress from north 0->360   [90 is east]

% convert to usual radian convention
hdg= (90-hdg)*pi /180;


th = atan2(d_pos(2),d_pos(1));
r = hypot(d_pos(1),d_pos(2));

phi = hdg - th;
% forward translation:
v(1)= r*cos(phi);
% lateral translation:
v(2)= -r*sin(phi);
