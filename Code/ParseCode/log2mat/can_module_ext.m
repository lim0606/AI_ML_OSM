function can = can_module_ext(uniquemsgid, cantime, msg, b, canchannel, bfname)
% function can = can_module_ext(uniquemsgid, cantime, msg, b, canchannel, bfname)
% User/Local extension to can_load.m to extract local CAN messages from the data logs.
%
% uniquemsgid Unique message ID's by channel {1x2} Cell array of [?x1 double]
%             Note: use dec2hex() or hex2dec to convert HEX message ID's
% cantime      CAN time in microseconds       [Tx1 double]
% msg          CAN Message ID's of the DV log [Tx1 uint16]
% b            CAN message data bytes         [8xT double]
% canchannel   CAN Channel {0 or 1}           [Tx1 double]
% bfname       base file name                 [string]
% RETURNS
% can Structure of structures of CAN messages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% To add additional local CAN message decoding, create a sub-structure 
% of can for each CAN message group. All local extensions shall
% follow the basic form of:
%
% can.mystruct = struct('type','can-mystruct', 'version', mystruct_version, 'bfname', bfname, ...
%                        'idx', 'Suffix', 'nsamples', number_of_sample, 'ctime', [] ... 
%                         ... mystruct fields
%                         );
%
%
% Vector dbc File Names:
% Y2011_CGEA1.2_CMDB_v11.03_BodyCAN.dbc
% Y2011_CGEA1.2_CMDB_v11.03_PtCAN.dbc
%
% HISTORY:
%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AUTHOR:  selwart
% CREATED: 26-Apr-2011
% FORD MOTOR COMPANY PROPRIETARY
% � Copyright 2003-2011 All Rights Reserved. Ford Motor Company
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Interface Change. Algorithm Change . Documentation or bug fix
LocalReadVersion = '5.00.00';
% dbc Messages for Y2011_CGEA1.2_CMDB_v11.03_BodyCAN.dbc
if exist('module_Y2011_CGEA1_2_CMDB_v11_03_BodyCAN','file')     % If local function exists
    can_tmp = module_Y2011_CGEA1_2_CMDB_v11_03_BodyCAN(uniquemsgid, cantime, msg, b, canchannel, bfname);
    % Copy the fields of can_bcu to can
    if isstruct(can_tmp)
        fields = fieldnames(can_tmp);
        for k=1:length(fields)
            can.(fields{k}) = can_tmp.(fields{k});
        end
        clear can_tmp
    end
    works=1;
end

% dbc Messages for Y2011_CGEA1.2_CMDB_v11.03_PtCAN.dbc
if exist('module_Y2011_CGEA1_2_CMDB_v11_03_PtCAN','file')     % If local function exists
    can_tmp = module_Y2011_CGEA1_2_CMDB_v11_03_PtCAN(uniquemsgid, cantime, msg, b, canchannel, bfname);
    % Copy the fields of can_bcu to can
    if isstruct(can_tmp)
        fields = fieldnames(can_tmp);
        for k=1:length(fields)
            can.(fields{k}) = can_tmp.(fields{k});
        end
        clear can_tmp
    end
    works=2;
end

%% dbc Messages for Y2011_CGEA1.2_CMDB_v11.03_BodyCAN_GPSonly.dbc
% if exist('module_Y2011_CGEA1_2_CMDB_v11_03_BodyCAN_GPSonly','file')     % If local function exists
%     can_tmp = module_Y2011_CGEA1_2_CMDB_v11_03_BodyCAN_GPSonly(uniquemsgid, cantime, msg, b, canchannel, bfname);
%     % Copy the fields of can_bcu to can
%     if isstruct(can_tmp)
%         fields = fieldnames(can_tmp);
%         for k=1:length(fields)
%             can.(fields{k}) = can_tmp.(fields{k});
%         end
%         clear can_tmp
%     end
%     works=3
% end

can.sw.LocalReadVersion = LocalReadVersion;
can.sw.dbc2ModuleBatchVersion = '03.00.04';
