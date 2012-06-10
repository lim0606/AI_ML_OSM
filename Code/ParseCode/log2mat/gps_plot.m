function gps_plot
clear all
close all

filepath = '/media/My Passport/ford_drivehistory/2011-09-23-download4/extracted_files/'
%filepath = '/media/My Passport/ford_drivehistory/sample/'
filenames=dir([filepath '*.mat']);

colours = 'bgrcmyk';
for i=1:size(filenames,1)
    disp([ num2str(i) ' '  filenames(i).name])
    data = load([filepath  filenames(i).name]);
    [lat,long] = get_lat_long(data);
    
    summary(i).lat = lat;
    summary(i).long = long;
end

figure
hold on
for i=1:size(filenames,1)
    j=mod(i,size(colours,2))+1;
    plot(summary(i).long,summary(i).lat,colours(j))
end

disp('Type "return" to view last loaded mission video')
keyboard

figure; hold on
plot(long,lat,'.b')
axis equal
these_axis=axis
%plot(long,'r')


figure; hold on
steps= floor(linspace(2,size(long,1),50));
for i=steps
    clf
    hold on
    plot(long,lat,'-')
    k=   max([1,i-200]);
    plot(long(k:i),lat(k:i),'-r')
    plot(long(i),lat(i),'.r')
    
    axis equal
    axis(these_axis)
    pause(0.1)
end

% Write a KML file:
idx= floor(linspace(1,size(long,1),100));
kmlwrite('data_out.kml',lat(idx),long(idx))
figure; hold on
plot(long(idx),lat(idx),'.b')

function [lat,long]= get_lat_long(data)

lat = data.GPS_Data_Nav_1_GPS_Latitude_Degrees + data.GPS_Data_Nav_1_GPS_Latitude_Minutes/60  + data.GPS_Data_Nav_1_GPS_Latitude_Min_dec/(60);
long = data.GPS_Data_Nav_1_GPS_Longitude_Degrees - data.GPS_Data_Nav_1_GPS_Longitude_Minutes/60 - data.GPS_Data_Nav_1_GPS_Longitude_Min_dec/(60);
