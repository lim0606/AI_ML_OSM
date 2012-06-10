function y=logparse(filepath)
%% 0.1) Get Files in .vsb and sort order
% [p,f]=get_files(extension,searchExpression,1);
%filepath = '/media/My Passport/ford_drivehistory/2011-08-22-download1/extracted_files/'
%filepath = '/media/My Passport/ford_drivehistory/2011-08-29-download2/extracted_files/'
%filepath = '/media/My Passport/ford_drivehistory/2011-09-07-download3/extracted_files/'
%filepath = '/media/My Passport/ford_drivehistory/2011-09-23-download4/extracted_files/'
%filepath = '/media/My Passport/ford_drivehistory/2011-10-07-download5/extracted_files/'
%filepath = '/media/My Passport/ford_drivehistory/sample/' % to send to ford
[p,f]=get_files(filepath,'*','*.vsb',1);
%[p,f]=get_files('*.vsb','U502*',1);

keyboard

%% 0.2) Which fields to parse:
% msgField = {'GPS_Data_Nav_1';...
%     'GPS_Data_Nav_2';...
%     'GPS_Data_Nav_3'};
msgField = {'GPS_Data_Nav_1';...
    'GPS_Data_Nav_2';...
    'GPS_Data_Nav_3';...
    'WheelSpeed_CG1';...
    'Yaw_Data'};

% msgField = {'ACCDATA';...
%     'ACCDATA_2';...
%     'ACCDATA_3'};
% 
% msgField = {'Accel_Data'};
% 
% msgField = {'Battery_Mgmt_1';...
%     'Battery_Mgmt_2'};
% 
% msgField = {'BrakeSnData_2';...
%     'BrakeSnData_3';...
%     'BrakeSnData_4'};
% msgField = {'BrakeSysFeatures';...
%     'BrakeSysFeatures_2'};
% 
% msgField = {'DesiredTorqBrk';...
%     'EngBrakeData';...
%     'EngVehicleSpThrottle'};
% msgField = {'EngineData_1';...
%     'EngineData_3';...
%     'EngineData_4'};
% msgField = {'Engine_Data_6';...
%     'Engine_Data_7';...
%     'Engine_Data_8'};
% msgField = {'Engine_Data_MS';...
%     'Engine_Data_2_MS'};
% msgField = {'EngineData_2_CG1';...
%     'EngineData_13_CG1'};
% 
% msgField = {'GPS_Data_Nav_1';...
%     'GPS_Data_Nav_2';...
%     'GPS_Data_Nav_3'};
% 
% msgField = {'Ignition_Switch_PositionM'};
% 
% msgField = {'PowertrainData_1';...
%     'PowertrainData_2'};
% 
% msgField = {'Side_Detect_CmdM'};
% 
% msgField = {'GPS_Data_Nav_1';...
%      'GPS_Data_Nav_2';...
%      'GPS_Data_Nav_3';...
%     'Side_Detect_L_StatusM';...
%     'Side_Detect_R_StatusM'};
% 
% msgField = {'Steering_Wheel_Data';...
%     'MS_Steering_Data'};
% 
% msgField = {'Tire_Pressure_Data';...
%     'TractionCtrlStatus'};
% 
% msgField = {'TransData_1';...
%     'TransData_2';...
%     'TransData_3'};
% 
% msgField = {'TransGearData';...
%     'TransGearData_2';...
%     'TransGearData_3';...
%     'TransGearData_4'};
% 
% msgField = {'WheelSpeed';...
%     'Yaw_Data'};


%% 1) For each File:
for fileNum = 1:length(f(:,1))
    tic    
    %% 1.1) Run CANLoad to generate struct - 90% of time taken
    can=CanLoad(filepath,f{fileNum,:});
    
    %% 1.2) Generate Matlab Arrays for each signal
    get_signals(filepath,f{fileNum,:},can,msgField);
    time_e = toc;
    disp(['finished file: ' f{fileNum,:} ' - ' num2str(fileNum) ' of ' num2str(length(f(:,1))) ': '  num2str(time_e) 'seconds'])
    %% 1.3) Potential:  Run resample to sample all data to one time stamp
    % may require interpolation based on nearest time, speed, gps
    % set time stamp for each message to a single ramp
    clear can
end




%%  5.0) Run gekmlplot_****.m for each message/signal
% if nargin > 2
%     switch saveKML
%         case xxx
%     gekmlplot_**** (( saveKML))
%         otherwise
%     end
% end
% gekmlplot_line(lat,lon,'filename',MyFileName,'color','yellow','width',3);
%if exist('GPS_Data_Nav_1_GPS_Latitude_Degrees','var')
%    limit(1) = 30;
%    limit(2) = 55;
%    limits= [limit(1) limit(2)];
%geKMLplot_c_Fz(MyFileName,lat,lon,GPS_Data_Nav_3_GPS_Speed,limits,GPS_Data_Nav_3_time,5);
%end
%%  X.0) Interpolated Lat / Lon
% load GPS_Data_Nav_U502_2011_0001_to_U502_2011_1701
% Steering_Wheel_lat = interp1(GPS_Data_Nav_1_time,lat,Steering_Wheel_Data_time);
% Steering_Wheel_lon = interp1(GPS_Data_Nav_1_time,lon,Steering_Wheel_Data_time);



