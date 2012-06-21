function smooth_batch()
% Smooth GPS data in ford mat files by calling iSAM
% output is saved back to mat files

clear all
close all
addpath('../tools')

%flist = '/home/mfallon/nfs_data/ford_drivehistory/2011-08-22-download1/extracted_files/'
flist= '/home/mfallon/nfs_data/ford_drivehistory/mat_smoothing/'
%flist = '/media/My Passport/ford_drivehistory/mat/'

f=dir([flist '*.mat']);
h1=figure;
h2=figure;

move_sats= 5;
move_sats_buffer=5*ones(200,1);

status = 1; % good
buffer=[];

%about 518 coming out of mit is interesting case for improving smoothing
% by increasing variance during sharp bends

for i=500:size(f,1) %1
    rdata=load([flist f(i).name]);
    
    disp ([num2str(i) ' of ' num2str(size(f,1)) ])
    for j=1:size(rdata.GPS_Data_Nav_1_GPS_Latitude_Degrees,1)
        
        % bug in data - arrays not always the same length:
        if size(rdata.GPS_Data_Nav_3_GPS_Sat_num_in_view,1) >=j
            % bug in data. 30 sats when non visable
            if rdata.GPS_Data_Nav_3_GPS_Sat_num_in_view(j) >10
                rdata.GPS_Data_Nav_3_GPS_Sat_num_in_view(j) =0;
            end
            move_sats = 0.95*move_sats + 0.05*  rdata.GPS_Data_Nav_3_GPS_Sat_num_in_view(j);
            
            infer = rdata.GPS_Data_Nav_2_GPS_Actual_vs_Infer_pos(j);
        else
            disp('bug in logging of GPS - sample skipped')
            infer = 0;
        end
        
        if (infer ==0) % if GPS was directly used to estimate position
            if status==0 % was bad previously
                if size(buffer,1) < 120 % skip short ones ie <120 seconds
                    buffer=[];
                else
                    % add current measurement to buffer:
                    entry=[i,j,rdata.lat_smoothed(j), ...
                        rdata.lon_smoothed(j), ...
                        rdata.GPS_Data_Nav_3_GPS_Sat_num_in_view(j),...
                        rdata.GPS_Data_Nav_3_GPS_Heading(j), ...
                        rdata.GPS_Data_Nav_2_GPS_Actual_vs_Infer_pos(j)];
                    
                    buffer=[buffer;entry];
                    
                    %figure;
                    %scatter(rdata.lon_smoothed,rdata.lat_smoothed,10,rdata.GPS_Data_Nav_3_GPS_Sat_num_in_view,'o')
                    
                    figure(h1)
                    plot(move_sats_buffer,'.')
                    axis([-inf inf 0 7])
                    drawnow
                    
                    figure(h2),clf,
                    subplot(2,2,1),hold on
                    [e,n]=LatLon2LocalGrid(buffer(:,3),buffer(:,4));
                    scatter(e,n,50,buffer(:,5),'o')
                    scatter(e(1),n(1),200,buffer(1,5),'o')
                    axis equal
                    colorbar
                    caxis([0 7])
                    
                    subplot(2,2,2),hold on
                    plot_background,
                    axis equal
                    axis([ min(buffer(:,4))-0.002 max(buffer(:,4))+0.002...
                        min(buffer(:,3))-0.002 max(buffer(:,3))+0.002])
                    
                    plot(rdata.lon_smoothed,rdata.lat_smoothed,'.g')
                    
                    %axis equal, axis([-71.18 -71.08 42.31 42.39])
                    scatter(buffer(:,4),buffer(:,3),50,buffer(:,5),'o')
                    
                    disp('about smooth')
                    smoothed = buffer_to_isam(buffer);
                    
                    subplot(2,2,3),hold on
                    
                    scatter(smoothed(:,1),smoothed(:,2),50,buffer(:,5),'+')
                    scatter(smoothed(1,1),smoothed(1,2),200,buffer(1,5),'+')
                    axis equal
                    colorbar
                    caxis([0 7])
                    
                    
                    subplot(2,2,4),hold on
                    plot_background,
                    axis equal
                    axis([ min(buffer(:,4))-0.002 max(buffer(:,4))+0.002...
                        min(buffer(:,3))-0.002 max(buffer(:,3))+0.002])
                    
                    plot(rdata.lon_smoothed,rdata.lat_smoothed,'.g')
                    [s_lat,s_lon]=LocalGrid2LatLon(smoothed(:,1),smoothed(:,2));
                    scatter(s_lon,s_lat,50,buffer(:,5),'+');
                    
                    % write data to KMCL - for googleearth
                    %kmlwrite('original.kml',buffer(:,3),buffer(:,4));%,'Icon','http://people.csail.mit.edu/mfallon/kmcl_global/map_overlay/marker.png')
                    %kmlwrite('smoothed.kml',s_lat,s_lon)
                    %kmlwrite('fullfile.kml',rdata.lat_smoothed,rdata.lon_smoothed);
                    
                    % write smoothed data to mat files                    
                    reply = input('Do you want more? Y/N [Y]: ', 's');
                    if (lower(reply)=='y')
                        disp('saving')
                        write_smoothed(buffer,s_lat,s_lon,i,f,flist)
                    else
                        disp('not saving')
                    end
                    
                    buffer=[]; % empty buffer for next time
                end
            end
            status =1;
        else
            % add entry to the buffer when we have failed GPS
            status=0;
            entry=[i,j,rdata.lat_smoothed(j), ...
                rdata.lon_smoothed(j), ...
                rdata.GPS_Data_Nav_3_GPS_Sat_num_in_view(j),...
                rdata.GPS_Data_Nav_3_GPS_Heading(j), ...
                rdata.GPS_Data_Nav_2_GPS_Actual_vs_Infer_pos(j)];
            buffer=[buffer;entry];
        end
        
        % moving average of n of sats. (legacy, not used)
        move_sats_buffer = [move_sats_buffer;move_sats];
        move_sats_buffer = move_sats_buffer(2:end);        
        if ( mod(j,50) ==0)
            figure(h1)
            plot(move_sats_buffer,'.')
            axis([-inf inf 0 7])
            drawnow
        end
    end
end



function plot_two_journeys(h,last_data,data)
figure(h)

subplot(2,2,1),hold on,
plot_background,axis equal, axis([-71.18 -71.08 42.31 42.39])
scatter( last_data.lon_smoothed,last_data.lat_smoothed,50,last_data.n_sats,'.')
scatter( data.lon_smoothed,data.lat_smoothed,50,data.n_sats,'x')
colorbar,caxis([0 9])
title('2 journeys. first o then x')

subplot(2,2,2),hold on,
axis equal, axis([-71.18 -71.08 42.31 42.39])
scatter( last_data.lon_smoothed,last_data.lat_smoothed,50,last_data.n_sats,'.')
scatter( last_data.lon_smoothed(1),last_data.lat_smoothed(1),700,last_data.n_sats(1),'.')
colorbar,caxis([0 9])

scatter( data.lon_smoothed,data.lat_smoothed,50,data.n_sats,'x')
scatter( data.lon_smoothed(1),data.lat_smoothed(1),700,data.n_sats(1),'x')
title('2 journeys. first o then x')

subplot(2,2,3),hold on,
axis equal
scatter( last_data.lon_smoothed,last_data.lat_smoothed,50,last_data.n_sats,'.')
scatter( last_data.lon_smoothed(1),last_data.lat_smoothed(1),700,last_data.n_sats(1),'.')
colorbar,caxis([0 9])
title('1st journey. starting at large .')

subplot(2,2,4),hold on,
axis equal
scatter( data.lon_smoothed,data.lat_smoothed,50,data.n_sats,'x')
scatter( data.lon_smoothed(1),data.lat_smoothed(1),700,data.n_sats(1),'x')
colorbar,caxis([0 9])
title('2nd journey. starting at large x')


function [v]=global_d_pos_and_heading_2_differential(d_pos,hdg)
% convert global differ positions estimates and current heading
% to differential measurements

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



function [smoothed] =buffer_to_isam(buffer)
% smooth the contents of buffer using iSAM C++ function "ford_smooth"
% global: e,n,n_sats,hdg
% relative: e,n,n_sats,d_hdg, d_forward, d_lateral
% .... ....
% global: e,n,n_sats,hdg
% normal: e,n,n_sats,hdg   (flo

% find the measurement where the GPS makes a big jump:
near_end = size(buffer,1)-20;
[e,n]=LatLon2LocalGrid(buffer(near_end:end,3),buffer(near_end:end,4));
jump = hypot(diff(e),diff(n));
[temp,idx] =max(jump);
jump_idx = near_end + idx; % index at which GPS jump acctually occurs


%%%% Create an DR log for the data to be smoothed:
% 1. last GPS fix assumed to be valid:
[e,n]=LatLon2LocalGrid(buffer(1,3),buffer(1,4));

hdg =  (90-   buffer(1,6) )*pi /180;
line =(['global,' num2str(e) ',' num2str(n)  ',' num2str(buffer(1,5)) ',' num2str(hdg)]);
all_lines{1} = line;

% 2. each incremental fix:
for i=2 :(jump_idx-1)
    [e_l,n_l]=LatLon2LocalGrid(buffer(i-1,3),buffer(i-1,4));
    [e,n]=LatLon2LocalGrid(buffer(i,3),buffer(i,4));
    
    d_pos(1) =e - e_l;
    d_pos(2) =n - n_l;
    
    d_pos_relative=  global_d_pos_and_heading_2_differential(d_pos,buffer (i-1,6));
    d_hdg =- (buffer(i,6) - buffer(i-1,6))*pi/180;
    h= buffer(i,6);
    
    
    
    line = (['relative,' num2str(e) ',' num2str(n)  ',' num2str(buffer(i,5)) ',' ...
        num2str( d_hdg) ',' num2str( d_pos_relative(1)) ',' num2str( d_pos_relative(2))]);
    all_lines = [all_lines;line];
end

hdg =  (90-   buffer(jump_idx,6) )*pi /180;
[e,n]=LatLon2LocalGrid(buffer(jump_idx,3),buffer(jump_idx,4));
line = (['global,' num2str(e) ',' num2str(n)  ',' num2str(buffer(jump_idx,5)) ',' num2str(hdg)]);
all_lines = [all_lines;line];

for i=(jump_idx+1): size(buffer,1)
    hdg =  (90-   buffer(i,6) )*pi /180;
    [e,n]=LatLon2LocalGrid(buffer(i,3),buffer(i,4));
    line = (['normal,' num2str(e) ',' num2str(n)  ',' num2str(buffer(i,5)) ',' num2str(hdg)]);
    all_lines = [all_lines;line];
end

% write input for iSAM function
fid = fopen('rel_motion','w');
for i=1:size(all_lines,1)
    fprintf(fid,'%s\n',all_lines{i});
    
end
fclose(fid);

% call iSAM C++ function:
system('source script.sh');

% read results of iSAM function
smoothed=[];
fid=fopen('rel_motion_smoothed');
while 1
    tline = fgetl(fid);
    if ~ischar(tline), break, end
    line = strread(tline,'%f','delimiter',',');
    
    smoothed = [smoothed;line'];
end
fclose(fid);

function write_smoothed(buffer,s_lat,s_lon,i,f,flist)
% output the smoothed lat/lon to the required files
% reads in the mat files, edits and saves again

mod_list = unique(buffer(:,1)); % the list of files to be modified 

for i=1:size(mod_list ,1)
    j = mod_list (i);
    data=load([flist f(j).name]);
    
    from_idx = find(buffer (:,1) == j);
    to_idx = buffer(from_idx,2);
    
    data.lat_smoothed(to_idx) = s_lat(from_idx);
    data.lon_smoothed(to_idx) = s_lon(from_idx);
    
    %    h=figure;plot(data.lon,data.lat,'.r')
    %    hold on
    %    plot(data.lon_smoothed,data.lat_smoothed,'og')
    %    plot(s_lon,s_lat,'xk')
    %    keyboard
    %    close(h)
    save([flist f(j).name],'-struct','data');
end