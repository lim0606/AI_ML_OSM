% script to illustrate the success of smoothing the GPS denied data
% properly
% input data is the ouput of smooth_batch()
% mfallon march 2012

clear all
close all
flist= '/home/mfallon/nfs_data/ford_drivehistory/mat_smoothing/'

f=dir([flist '*.mat']);


h=figure;hold on
plot_background,
axis equal


h2=figure;
subplot(1,2,1),hold on,         plot_background,                    axis equal
subplot(1,2,2),hold on,         plot_background,                    axis equal


for i=1:size(f,1) %1
    rdata=load([flist f(i).name]);
    
    disp ([num2str(i) ' of ' num2str(size(f,1)) ])
    
    %gps(i,1) =  size(find(rdata.GPS_Data_Nav_3_GPS_Sat_num_in_view > 3),1);
    %gps(i,2) = size(find(rdata.GPS_Data_Nav_3_GPS_Sat_num_in_view <= 3),1);
    
    
    figure(h)
    plot(rdata.lon,rdata.lat,'.r')
    plot(rdata.lon_smoothed,rdata.lat_smoothed,'.b')
    title('Original red | Smoothed blue')
    
    
    figure(h2)
    subplot(1,2,1)
    plot(rdata.lon,rdata.lat,'.r')
    title('Original red | Smoothed blue')
    subplot(1,2,2)
    plot(rdata.lon_smoothed,rdata.lat_smoothed,'.b')
    title('Original red | Smoothed blue')
    
end

