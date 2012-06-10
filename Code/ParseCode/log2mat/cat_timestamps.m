% Version Modified by Mfallon

% ACCDATA_time=0;
% for i=2:length(ACCDATA_ctime)
%     if(ACCDATA_ctime(i)-ACCDATA_ctime(i-1) > 1 || ACCDATA_ctime(i)-ACCDATA_ctime(i-1) < 0)
%         ACCDATA_time(i) = ACCDATA_time(i-1) + 0.02;
%     else
%         ACCDATA_time(i) = ACCDATA_time(i-1) + (ACCDATA_ctime(i)-ACCDATA_ctime(i-1));
%     end
% end

% Merge time stamps from array when time stamp was merged from multiple
% files for each message
for mi = 1:length(msgField)
    
    % Pre-allocate memory for each timestamps from each meassage
    if exist([msgField{mi} '_ctime'],'var')
        % creat a new parameter name for each message
        parname = [msgField{mi} '_time'];
        parlength = length(eval([msgField{mi} '_ctime']));
        eval([parname '(1:parlength) = 0;']);
        % find the delta time
        %dt = eval([msgField{mi} '_ctime(2)'])-eval([msgField{mi} '_ctime(1);']);
        
        % Time counter loops around, fix to unwrap this:
        % mfallon fix:
        val_diff=eval(['diff(' msgField{mi} '_ctime);' ] );
        jumps=find(val_diff < -20);
        steps = eval(['zeros(size(' msgField{mi} '_ctime));']);
        for i=1:size(jumps,1)
            j =jumps(i);
            steps(j+1:end) =steps(j+1:end) + eval([ msgField{mi} '_ctime(j);']);
        end
        eval([msgField{mi} '_time = ' msgField{mi} '_ctime(:) + steps(:);']);
        
        % Removed by mfallon: (much quicker now)
%         for ti=2:parlength
%             % only add time sets when data jumps signifying an end of file
%             % time reset
%             
%             if(eval([msgField{mi} '_ctime(ti)']) - eval([msgField{mi} '_ctime(ti-1)']) > 2 || ...
%                     eval([msgField{mi} '_ctime(ti)']) - eval([msgField{mi} '_ctime(ti-1)']) < 0)
%                 eval([msgField{mi} '_time(ti) = ' msgField{mi} '_time(ti-1) + dt;']);
%             else
%                 eval([msgField{mi} '_time(ti) = ' msgField{mi} '_time(ti-1) + (' ...
%                     msgField{mi} '_ctime(ti)-' msgField{mi} '_ctime(ti-1));']);
%             end
%         end
% For comparison:
%     figure
% plot(WheelSpeed_CG1_time_oldway);
% hold on
% plot(WheelSpeed_CG1_time,'r');    

        eval([msgField{mi} '_time_oldway = ' msgField{mi} '_time + ' msgField{mi} '_ctime(1);']);
    end
end


clear mi ti parname parlength dt
