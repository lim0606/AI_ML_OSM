%filename='mfallon mit 2011-08-19 13-06-03-315132 Partition 0.mat'
function w_gpxwriter(filename,tofolder)
data=load(filename);
thres = 300;


if data.GPS_Data_Nav_1_nsamples>thres


tmpindex=find(filename=='-',1,'first');

fdate=[tofolder filename(tmpindex+1:tmpindex+5)];

if( exist(fdate)~=7 )
    mkdir(fdate)
end
xmlFileName = [fdate '/' filename(1:length(filename)-3) 'gpx'];

docNode = com.mathworks.xml.XMLUtils.createDocument('gpx');
gpx = docNode.getDocumentElement;
trk = docNode.createElement('trk');
trkseg = docNode.createElement('trkseg');

cc=0;
%sometimes the tracking time doesn't make sense....
plat=0;
plon=0;
%[length(data.GPS_Data_Nav_2_GPS_UTC_hours),length(data.lat_smoothed),data.GPS_Data_Nav_1_nsamples]
for i=1:data.GPS_Data_Nav_1_nsamples
    % in order to match the sample points, no pruning anymore....
    %if(data.GPS_Data_Nav_2_GPS_UTC_hours(i)<=24)
        %if(plat~=data.lat_smoothed(i) || plon~=data.lon_smoothed(i))
            trkpt = docNode.createElement('trkpt');
            trkpt.setAttribute('lat',sprintf('%f',data.lat_smoothed(i)));
            trkpt.setAttribute('lon',sprintf('%f',data.lon_smoothed(i)));
            %trkpt.setAttribute('lat',sprintf('%f',data.lat(i)));
            %trkpt.setAttribute('lon',sprintf('%f',data.lon(i)));
            time = docNode.createElement('time');
            tmp= [num2str(2009+data.GPS_Data_Nav_2_GpsUtcYr_No_Actl(i)) '-' ...
                num2str(data.GPS_Data_Nav_2_GpsUtcMnth_No_Actl(i)) '-' ...
                num2str(data.GPS_Data_Nav_2_GpsUtcDay_No_Actl(i)) 'T' ...
                num2str(data.GPS_Data_Nav_2_GPS_UTC_hours(i)) ':' ...
                num2str(data.GPS_Data_Nav_2_GPS_UTC_minutes(i)) ':' ...
                num2str(data.GPS_Data_Nav_2_GPS_UTC_seconds(i)) 'Z'];
            time.appendChild(docNode.createTextNode(tmp));
            trkpt.appendChild(time);
            trkseg.appendChild(trkpt);
            plat=data.lat_smoothed(i);
            plon=data.lon_smoothed(i);
            cc=cc+1;
        %end
    %end
    
end
trk.appendChild(trkseg);
gpx.appendChild(trk);
if(cc>thres)
    xmlwrite(xmlFileName,docNode);
end
%type(xmlFileName);


end

end
