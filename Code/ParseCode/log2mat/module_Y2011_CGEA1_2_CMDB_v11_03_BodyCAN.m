function can = module_Y2011_CGEA1_2_CMDB_v11_03_BodyCAN(uniquemsgid, cantime, msg, b, canchannel, bfname)
%
% Vector Database Message Decoding
%
% Vector dbc File Name: C:\Documents and Settings\selwart\My Documents\My Web\2011 Project\DriveHistory\CANLists\2011Explorer\Y2011_CGEA1.2_CMDB_v11.03_BodyCAN.dbc
% Created by dbc2Module.m Version: 07.03.07
%
%
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
% mfallon:
b=double(b);

can=[];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: BCM_m_FrP01
% Hex ID:3A
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3A = hex2dec('3A');

ix=find(msg == MSG_3A);          % Find all message 0x3A's
if ~isempty(ix)                   % If there are any ...
    can.BCM_m_FrP01 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3A messages
    
    can.BCM_m_FrP01.nsamples      = length(ix);
    can.BCM_m_FrP01.ctime         = cantime(ix);

    can.BCM_m_FrP01.units.ChildLockCmd     =  '';
    can.BCM_m_FrP01.ChildLockCmd     =    (bitget(bb(2,:),6))';
    can.BCM_m_FrP01.units.ChildLockCmd_UB     =  '';
    can.BCM_m_FrP01.ChildLockCmd_UB     =    (bitget(bb(2,:),5))';
    can.BCM_m_FrP01.units.CLockCmd     =  '';
    can.BCM_m_FrP01.CLockCmd     =    (bb(4,:))' ;
    can.BCM_m_FrP01.units.CLockCmd_UB     =  '';
    can.BCM_m_FrP01.CLockCmd_UB     =    (bitget(bb(2,:),7))';
    can.BCM_m_FrP01.units.DDShortDrop     =  '';
    can.BCM_m_FrP01.DDShortDrop     =    (bitand(bitshift(bb(1,:),-2),3))' ;
    can.BCM_m_FrP01.units.DDShortDrop_UB     =  '';
    can.BCM_m_FrP01.DDShortDrop_UB     =    (bitget(bb(1,:),5))';
    can.BCM_m_FrP01.units.DirectionIndication     =  '';
    can.BCM_m_FrP01.DirectionIndication     =    (bitand(bitshift(bb(2,:),-2),3))' ;
    can.BCM_m_FrP01.units.DirectionIndication_UB     =  '';
    can.BCM_m_FrP01.DirectionIndication_UB     =    (bitget(bb(1,:),1))';
    can.BCM_m_FrP01.units.EpsDrvInfo_D_Dsply     =  '';
    can.BCM_m_FrP01.EpsDrvInfo_D_Dsply     =    (bitand(bitshift(bb(5,:),-1),15))' ;
    can.BCM_m_FrP01.units.EpsDrvInfo_D_Dsply_UB     =  '';
    can.BCM_m_FrP01.EpsDrvInfo_D_Dsply_UB     =    (bitget(bb(5,:),8))';
    can.BCM_m_FrP01.units.GearRvrseActv_D_Actl     =  '';
    can.BCM_m_FrP01.GearRvrseActv_D_Actl     =    (bitand(bitshift(bb(5,:),-5),3))' ;
    can.BCM_m_FrP01.units.GearRvrseActv_D_Actl_UB     =  '';
    can.BCM_m_FrP01.GearRvrseActv_D_Actl_UB     =    (bitget(bb(2,:),8))';
    can.BCM_m_FrP01.units.VehVActlEng_D_Qf_3A     =  'SED';
    can.BCM_m_FrP01.VehVActlEng_D_Qf_3A     =    (bitand(bb(2,:),3))' ;
    can.BCM_m_FrP01.units.Veh_V_ActlEng_UB_3A     =  'SED';
    can.BCM_m_FrP01.Veh_V_ActlEng_UB_3A     =    (bitget(bb(1,:),2))';
    can.BCM_m_FrP01.units.Veh_V_ActlEng_3A     =  'kph';
    can.BCM_m_FrP01.Veh_V_ActlEng_3A     =    1.000000e-002*(2^8 * bb(7,:) + bb(8,:))' ;
    can.BCM_m_FrP01.units.Veh_V_DsplyCcSet     =  'Unitless';
    can.BCM_m_FrP01.Veh_V_DsplyCcSet     =    (bb(3,:))' ;
    can.BCM_m_FrP01.units.Veh_V_RqCcSet     =  'kph';
    can.BCM_m_FrP01.Veh_V_RqCcSet     =    5.000000e-001*(2^8 * bitand(bb(5,:),1) + bb(6,:))' ;
    can.BCM_m_FrP01.units.WasherFluidLevelLow     =  '';
    can.BCM_m_FrP01.WasherFluidLevelLow     =    (bitget(bb(1,:),6))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: BCM_m_FrP02
% Hex ID:40
% Last edited by: selwart
% Date:26-Apr-2011
MSG_40 = hex2dec('40');

ix=find(msg == MSG_40);          % Find all message 0x40's
if ~isempty(ix)                   % If there are any ...
    can.BCM_m_FrP02 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x40 messages
    can.BCM_m_FrP02.nsamples      = length(ix);
    can.BCM_m_FrP02.ctime         = cantime(ix);

    can.BCM_m_FrP02.units.FuelCutoffReq     =  'SED';
    can.BCM_m_FrP02.FuelCutoffReq     =    (bitand(bitshift(bb(1,:),-4),15))' ;
    can.BCM_m_FrP02.units.FuelCutoffReq_UB     =  '';
    can.BCM_m_FrP02.FuelCutoffReq_UB     =    (bitget(bb(2,:),1))';
    can.BCM_m_FrP02.units.KVRFRSettings     =  '';
    can.BCM_m_FrP02.KVRFRSettings     =    (2^8 * bitand(bb(7,:),127) + bb(8,:))' ;
    can.BCM_m_FrP02.units.KVRFRSettings_UB     =  '';
    can.BCM_m_FrP02.KVRFRSettings_UB     =    (bitget(bb(2,:),3))';
    can.BCM_m_FrP02.units.PsngrFrntDetct_D_Actl     =  'SED';
    can.BCM_m_FrP02.PsngrFrntDetct_D_Actl     =    (bitand(bitshift(bb(3,:),-6),3))' ;
    can.BCM_m_FrP02.units.PsngrFrntDetct_D_Actl_UB     =  '';
    can.BCM_m_FrP02.PsngrFrntDetct_D_Actl_UB     =    (bitget(bb(1,:),4))';
    can.BCM_m_FrP02.units.RILReq     =  'SED';
    can.BCM_m_FrP02.RILReq     =    (bitand(bitshift(bb(3,:),-4),3))' ;
    can.BCM_m_FrP02.units.RILReq_UB     =  '';
    can.BCM_m_FrP02.RILReq_UB     =    (bitget(bb(7,:),8))';
    can.BCM_m_FrP02.units.SecondRowBuckleDriver     =  'SED';
    can.BCM_m_FrP02.SecondRowBuckleDriver     =    (bitand(bitshift(bb(4,:),-6),3))' ;
    can.BCM_m_FrP02.units.SecondRowBuckleDriver_UB     =  '';
    can.BCM_m_FrP02.SecondRowBuckleDriver_UB     =    (bitget(bb(1,:),1))';
    can.BCM_m_FrP02.units.SecondRowBuckleMid     =  'SED';
    can.BCM_m_FrP02.SecondRowBuckleMid     =    (bitand(bitshift(bb(4,:),-4),3))' ;
    can.BCM_m_FrP02.units.SecondRowBuckleMid_UB     =  '';
    can.BCM_m_FrP02.SecondRowBuckleMid_UB     =    (bitget(bb(2,:),8))';
    can.BCM_m_FrP02.units.SecondRowBucklePsngr     =  'SED';
    can.BCM_m_FrP02.SecondRowBucklePsngr     =    (bitand(bitshift(bb(4,:),-2),3))' ;
    can.BCM_m_FrP02.units.SecondRowBucklePsngr_UB     =  '';
    can.BCM_m_FrP02.SecondRowBucklePsngr_UB     =    (bitget(bb(2,:),7))';
    can.BCM_m_FrP02.units.ThirdRowBuckleDriver     =  'SED';
    can.BCM_m_FrP02.ThirdRowBuckleDriver     =    (bitand(bb(4,:),3))' ;
    can.BCM_m_FrP02.units.ThirdRowBuckleDriver_UB     =  '';
    can.BCM_m_FrP02.ThirdRowBuckleDriver_UB     =    (bitget(bb(2,:),6))';
    can.BCM_m_FrP02.units.ThirdRowBucklePsngr     =  'SED';
    can.BCM_m_FrP02.ThirdRowBucklePsngr     =    (bitand(bitshift(bb(5,:),-4),3))' ;
    can.BCM_m_FrP02.units.ThirdRowBucklePsngr_UB     =  '';
    can.BCM_m_FrP02.ThirdRowBucklePsngr_UB     =    (bitget(bb(2,:),4))';
    can.BCM_m_FrP02.units.WheelRotationCnt     =  '';
    can.BCM_m_FrP02.WheelRotationCnt     =    (bb(6,:))' ;
    can.BCM_m_FrP02.units.WheelRotationCnt_UB     =  '';
    can.BCM_m_FrP02.WheelRotationCnt_UB     =    (bitget(bb(2,:),2))';
    can.BCM_m_FrP02.units.WheelRotationCntQF     =  '';
    can.BCM_m_FrP02.WheelRotationCntQF     =    (bitand(bitshift(bb(5,:),-2),3))' ;
    can.BCM_m_FrP02.units.WhlDirRr_D_Actl_UB_40     =  'SED';
    can.BCM_m_FrP02.WhlDirRr_D_Actl_UB_40     =    (bitget(bb(1,:),3))';
    can.BCM_m_FrP02.units.WhlDirRr_D_Actl_40     =  'SED';
    can.BCM_m_FrP02.WhlDirRr_D_Actl_40     =    (bitand(bitshift(bb(5,:),-6),3))' ;
    can.BCM_m_FrP02.units.WhlDirRl_D_Actl_UB_40     =  'SED';
    can.BCM_m_FrP02.WhlDirRl_D_Actl_UB_40     =    (bitget(bb(1,:),2))';
    can.BCM_m_FrP02.units.WhlDirRl_D_Actl_40     =  'SED';
    can.BCM_m_FrP02.WhlDirRl_D_Actl_40     =    (bitand(bb(5,:),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: MS_Steering_Data
% Hex ID:83
% Last edited by: selwart
% Date:26-Apr-2011
MSG_83 = hex2dec('83');

ix=find(msg == MSG_83);          % Find all message 0x83's
if ~isempty(ix)                   % If there are any ...
    can.MS_Steering_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x83 messages
    can.MS_Steering_Data.nsamples      = length(ix);
    can.MS_Steering_Data.ctime         = cantime(ix);

    can.MS_Steering_Data.units.SteColumn_Status_UB     =  'SED';
    can.MS_Steering_Data.SteColumn_Status_UB     =    (bitget(bb(4,:),5))';
    can.MS_Steering_Data.units.SteColumn_Status     =  'SED';
    can.MS_Steering_Data.SteColumn_Status     =    (bitand(bitshift(bb(4,:),-5),7))' ;
    can.MS_Steering_Data.units.SteCol_Manual_Override_UB     =  'SED';
    can.MS_Steering_Data.SteCol_Manual_Override_UB     =    (bitget(bb(4,:),3))';
    can.MS_Steering_Data.units.SteCol_Manual_Override     =  'SED';
    can.MS_Steering_Data.SteCol_Manual_Override     =    (bitget(bb(4,:),4))';
    can.MS_Steering_Data.units.SteWhlCtl_Send_UB     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_Send_UB     =    (bitget(bb(3,:),5))';
    can.MS_Steering_Data.units.SteWhlCtl_Send     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_Send     =    (bitget(bb(1,:),7))';
    can.MS_Steering_Data.units.SteWhlCtl_Phone_UB     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_Phone_UB     =    (bitget(bb(3,:),2))';
    can.MS_Steering_Data.units.SteWhlCtl_Phone     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_Phone     =    (bitget(bb(1,:),4))';
    can.MS_Steering_Data.units.SteWhlCtl_OK_UB     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_OK_UB     =    (bitget(bb(3,:),1))';
    can.MS_Steering_Data.units.SteWhlCtl_OK     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_OK     =    (bitget(bb(1,:),3))';
    can.MS_Steering_Data.units.SteWhlCtl_Volume_Up_UB     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_Volume_Up_UB     =    (bitget(bb(3,:),8))';
    can.MS_Steering_Data.units.SteWhlCtl_Volume_Down_UB     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_Volume_Down_UB     =    (bitget(bb(3,:),7))';
    can.MS_Steering_Data.units.SteWhlCtl_Voice_PTT_UB     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_Voice_PTT_UB     =    (bitget(bb(3,:),6))';
    can.MS_Steering_Data.units.SteWhlCtl_Seek_Right_UB     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_Seek_Right_UB     =    (bitget(bb(3,:),4))';
    can.MS_Steering_Data.units.SteWhlCtl_Seek_Left_UB     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_Seek_Left_UB     =    (bitget(bb(3,:),3))';
    can.MS_Steering_Data.units.SteWhlCtl_Mode_UB     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_Mode_UB     =    (bitget(bb(2,:),4))';
    can.MS_Steering_Data.units.SteWhlCtl_Mode     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_Mode     =    (bitget(bb(2,:),6))';
    can.MS_Steering_Data.units.SteWhlCtl_Media_UB     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_Media_UB     =    (bitget(bb(2,:),2))';
    can.MS_Steering_Data.units.SteWhlCtl_Volume_Up     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_Volume_Up     =    (bitget(bb(2,:),8))';
    can.MS_Steering_Data.units.SteWhlCtl_Volume_Down     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_Volume_Down     =    (bitget(bb(2,:),7))';
    can.MS_Steering_Data.units.SteWhlCtl_Voice_PTT     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_Voice_PTT     =    (bitget(bb(1,:),8))';
    can.MS_Steering_Data.units.SteWhlCtl_Seek_Right     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_Seek_Right     =    (bitget(bb(1,:),6))';
    can.MS_Steering_Data.units.SteWhlCtl_Seek_Left     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_Seek_Left     =    (bitget(bb(1,:),5))';
    can.MS_Steering_Data.units.SteWhlCtl_Media     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_Media     =    (bitget(bb(1,:),2))';
    can.MS_Steering_Data.units.VehYaw_W_Actl     =  'rad/s';
    can.MS_Steering_Data.VehYaw_W_Actl     =    2.000000e-004*(2^8 * bb(7,:) + bb(8,:))' +-6.50;
    can.MS_Steering_Data.units.SteWhlCtl_End_UB     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_End_UB     =    (bitget(bb(2,:),1))';
    can.MS_Steering_Data.units.SteWhlCtl_End     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_End     =    (bitget(bb(1,:),1))';
    can.MS_Steering_Data.units.VehYaw_W_Actl_UB     =  'SED';
    can.MS_Steering_Data.VehYaw_W_Actl_UB     =    (bitget(bb(6,:),1))';
    can.MS_Steering_Data.units.SteWhlCtl_Mute_UB     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_Mute_UB     =    (bitget(bb(2,:),3))';
    can.MS_Steering_Data.units.SteWhlCtl_Mute     =  'SED';
    can.MS_Steering_Data.SteWhlCtl_Mute     =    (bitget(bb(2,:),5))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Driver_Seat_Information
% Hex ID:101
% Last edited by: selwart
% Date:26-Apr-2011
MSG_101 = hex2dec('101');

ix=find(msg == MSG_101);          % Find all message 0x101's
if ~isempty(ix)                   % If there are any ...
    can.Driver_Seat_Information = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x101 messages
    can.Driver_Seat_Information.nsamples      = length(ix);
    can.Driver_Seat_Information.ctime         = cantime(ix);

    can.Driver_Seat_Information.units.Reverse_Mirror_Stat     =  'SED';
    can.Driver_Seat_Information.Reverse_Mirror_Stat     =    (bitand(bitshift(bb(1,:),-2),3))' ;
    can.Driver_Seat_Information.units.Memory_Feedback_Rqst     =  'SED';
    can.Driver_Seat_Information.Memory_Feedback_Rqst     =    (bitget(bb(1,:),6))';
    can.Driver_Seat_Information.units.Easy_Entry_Exit_Stat     =  'SED';
    can.Driver_Seat_Information.Easy_Entry_Exit_Stat     =    (bitand(bitshift(bb(1,:),-6),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Driver_Seat_Information_2
% Hex ID:104
% Last edited by: selwart
% Date:26-Apr-2011
MSG_104 = hex2dec('104');

ix=find(msg == MSG_104);          % Find all message 0x104's
if ~isempty(ix)                   % If there are any ...
    can.Driver_Seat_Information_2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x104 messages
    can.Driver_Seat_Information_2.nsamples      = length(ix);
    can.Driver_Seat_Information_2.ctime         = cantime(ix);

    can.Driver_Seat_Information_2.units.Memory_Cmd     =  'SED';
    can.Driver_Seat_Information_2.Memory_Cmd     =    (bitand(bitshift(bb(2,:),-4),15))' ;
    can.Driver_Seat_Information_2.units.Easy_Entry_Rqst     =  'SED';
    can.Driver_Seat_Information_2.Easy_Entry_Rqst     =    (bitand(bitshift(bb(1,:),-3),3))' ;
    can.Driver_Seat_Information_2.units.DrvSeat_Stat     =  'SED';
    can.Driver_Seat_Information_2.DrvSeat_Stat     =    (bitand(bitshift(bb(1,:),-5),7))' ;
    can.Driver_Seat_Information_2.units.Cancel_Auto_Movement     =  'SED';
    can.Driver_Seat_Information_2.Cancel_Auto_Movement     =    (bitget(bb(1,:),2))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: IdleShutdown_Legacy
% Hex ID:10D
% Last edited by: selwart
% Date:26-Apr-2011
MSG_10D = hex2dec('10D');

ix=find(msg == MSG_10D);          % Find all message 0x10D's
if ~isempty(ix)                   % If there are any ...
    can.IdleShutdown_Legacy = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x10D messages
    can.IdleShutdown_Legacy.nsamples      = length(ix);
    can.IdleShutdown_Legacy.ctime         = cantime(ix);

    can.IdleShutdown_Legacy.units.IDLE_ENGINE_SHUTDOWN     =  'SED';
    can.IdleShutdown_Legacy.IDLE_ENGINE_SHUTDOWN     =    (bitand(bitshift(bb(3,:),-6),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Keyfob_Pad_Stat
% Hex ID:110
% Last edited by: selwart
% Date:26-Apr-2011
MSG_110 = hex2dec('110');

ix=find(msg == MSG_110);          % Find all message 0x110's
if ~isempty(ix)                   % If there are any ...
    can.Keyfob_Pad_Stat = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x110 messages
    can.Keyfob_Pad_Stat.nsamples      = length(ix);
    can.Keyfob_Pad_Stat.ctime         = cantime(ix);

    can.Keyfob_Pad_Stat.units.L_Pwr_Sliding_Dr_Rqst     =  'SED';
    can.Keyfob_Pad_Stat.L_Pwr_Sliding_Dr_Rqst     =    (bitget(bb(4,:),5))';
    can.Keyfob_Pad_Stat.units.Power_Decklid_Rqst     =  'SED';
    can.Keyfob_Pad_Stat.Power_Decklid_Rqst     =    (bitget(bb(4,:),8))';
    can.Keyfob_Pad_Stat.units.R_Pwr_Sliding_Dr_Rqst     =  'SED';
    can.Keyfob_Pad_Stat.R_Pwr_Sliding_Dr_Rqst     =    (bitget(bb(4,:),6))';
    can.Keyfob_Pad_Stat.units.Keyfob_Pad_Msg_Count     =  'Counts';
    can.Keyfob_Pad_Stat.Keyfob_Pad_Msg_Count     =    (bb(3,:))' ;
    can.Keyfob_Pad_Stat.units.Keyfob_Pad_Id_Number     =  'SED';
    can.Keyfob_Pad_Stat.Keyfob_Pad_Id_Number     =    (bb(2,:))' ;
    can.Keyfob_Pad_Stat.units.Keyfob_Pad_Button_Pressed     =  'SED';
    can.Keyfob_Pad_Stat.Keyfob_Pad_Button_Pressed     =    (bb(1,:))' ;
    can.Keyfob_Pad_Stat.units.Power_Liftgate_Rqst     =  'SED';
    can.Keyfob_Pad_Stat.Power_Liftgate_Rqst     =    (bitget(bb(4,:),7))';
    can.Keyfob_Pad_Stat.units.Keycode_Status     =  '';
    can.Keyfob_Pad_Stat.Keycode_Status     =    (2^16 * bitand(bb(4,:),15) + 2^8 * bb(5,:) + bb(6,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Power_Liftgate_Mode_StatM
% Hex ID:113
% Last edited by: selwart
% Date:26-Apr-2011
MSG_113 = hex2dec('113');

ix=find(msg == MSG_113);          % Find all message 0x113's
if ~isempty(ix)                   % If there are any ...
    can.Power_Liftgate_Mode_StatM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x113 messages
    can.Power_Liftgate_Mode_StatM.nsamples      = length(ix);
    can.Power_Liftgate_Mode_StatM.ctime         = cantime(ix);

    can.Power_Liftgate_Mode_StatM.units.Power_Liftgate_Mode_Stat     =  'SED';
    can.Power_Liftgate_Mode_StatM.Power_Liftgate_Mode_Stat     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.Power_Liftgate_Mode_StatM.units.DrTgateChime_D_Rq     =  'SED';
    can.Power_Liftgate_Mode_StatM.DrTgateChime_D_Rq     =    (bitand(bitshift(bb(1,:),-4),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Running_Board_CmdM
% Hex ID:114
% Last edited by: selwart
% Date:26-Apr-2011
MSG_114 = hex2dec('114');

ix=find(msg == MSG_114);          % Find all message 0x114's
if ~isempty(ix)                   % If there are any ...
    can.Running_Board_CmdM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x114 messages
    can.Running_Board_CmdM.nsamples      = length(ix);
    can.Running_Board_CmdM.ctime         = cantime(ix);

    can.Running_Board_CmdM.units.Running_Board_Cmd     =  'SED';
    can.Running_Board_CmdM.Running_Board_Cmd     =    (bitand(bitshift(bb(1,:),-6),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Running_Board_StatM
% Hex ID:115
% Last edited by: selwart
% Date:26-Apr-2011
MSG_115 = hex2dec('115');

ix=find(msg == MSG_115);          % Find all message 0x115's
if ~isempty(ix)                   % If there are any ...
    can.Running_Board_StatM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x115 messages
    can.Running_Board_StatM.nsamples      = length(ix);
    can.Running_Board_StatM.ctime         = cantime(ix);

    can.Running_Board_StatM.units.Running_Board_Stat     =  'SED';
    can.Running_Board_StatM.Running_Board_Stat     =    (bitand(bitshift(bb(1,:),-6),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ClmtCtrlSeat_SetCmdlegacy1
% Hex ID:120
% Last edited by: selwart
% Date:26-Apr-2011
MSG_120 = hex2dec('120');

ix=find(msg == MSG_120);          % Find all message 0x120's
if ~isempty(ix)                   % If there are any ...
    can.ClmtCtrlSeat_SetCmdlegacy1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x120 messages
    can.ClmtCtrlSeat_SetCmdlegacy1.nsamples      = length(ix);
    can.ClmtCtrlSeat_SetCmdlegacy1.ctime         = cantime(ix);

    can.ClmtCtrlSeat_SetCmdlegacy1.units.ClmtCtrlSeat_SetCmd_Dvr     =  'SED';
    can.ClmtCtrlSeat_SetCmdlegacy1.ClmtCtrlSeat_SetCmd_Dvr     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ClmtCtrlSeat_SetStat_DvrM
% Hex ID:121
% Last edited by: selwart
% Date:26-Apr-2011
MSG_121 = hex2dec('121');

ix=find(msg == MSG_121);          % Find all message 0x121's
if ~isempty(ix)                   % If there are any ...
    can.ClmtCtrlSeat_SetStat_DvrM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x121 messages
    can.ClmtCtrlSeat_SetStat_DvrM.nsamples      = length(ix);
    can.ClmtCtrlSeat_SetStat_DvrM.ctime         = cantime(ix);

    can.ClmtCtrlSeat_SetStat_DvrM.units.ClmtCtrlSeat_SetStat_Dvr     =  'SED';
    can.ClmtCtrlSeat_SetStat_DvrM.ClmtCtrlSeat_SetStat_Dvr     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ClmtCtrlSeat_SetCmdlegacy2
% Hex ID:122
% Last edited by: selwart
% Date:26-Apr-2011
MSG_122 = hex2dec('122');

ix=find(msg == MSG_122);          % Find all message 0x122's
if ~isempty(ix)                   % If there are any ...
    can.ClmtCtrlSeat_SetCmdlegacy2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x122 messages
    can.ClmtCtrlSeat_SetCmdlegacy2.nsamples      = length(ix);
    can.ClmtCtrlSeat_SetCmdlegacy2.ctime         = cantime(ix);

    can.ClmtCtrlSeat_SetCmdlegacy2.units.ClmtCtrlSeat_SetCmd_Psgr     =  'SED';
    can.ClmtCtrlSeat_SetCmdlegacy2.ClmtCtrlSeat_SetCmd_Psgr     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ClmtCtrlSeat_SetStat_PsgrM
% Hex ID:123
% Last edited by: selwart
% Date:26-Apr-2011
MSG_123 = hex2dec('123');

ix=find(msg == MSG_123);          % Find all message 0x123's
if ~isempty(ix)                   % If there are any ...
    can.ClmtCtrlSeat_SetStat_PsgrM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x123 messages
    can.ClmtCtrlSeat_SetStat_PsgrM.nsamples      = length(ix);
    can.ClmtCtrlSeat_SetStat_PsgrM.ctime         = cantime(ix);

    can.ClmtCtrlSeat_SetStat_PsgrM.units.ClmtCtrlSeat_SetStat_Psgr     =  'SED';
    can.ClmtCtrlSeat_SetStat_PsgrM.ClmtCtrlSeat_SetStat_Psgr     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ClmtCtrlSeatSet_Cmd_v2_MS
% Hex ID:124
% Last edited by: selwart
% Date:26-Apr-2011
MSG_124 = hex2dec('124');

ix=find(msg == MSG_124);          % Find all message 0x124's
if ~isempty(ix)                   % If there are any ...
    can.ClmtCtrlSeatSet_Cmd_v2_MS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x124 messages
    can.ClmtCtrlSeatSet_Cmd_v2_MS.nsamples      = length(ix);
    can.ClmtCtrlSeatSet_Cmd_v2_MS.ctime         = cantime(ix);

    can.ClmtCtrlSeatSet_Cmd_v2_MS.units.ClmtCtrlSeat_SetCmd_Psgr     =  'SED';
    can.ClmtCtrlSeatSet_Cmd_v2_MS.ClmtCtrlSeat_SetCmd_Psgr     =    (bb(2,:))' ;
    can.ClmtCtrlSeatSet_Cmd_v2_MS.units.ClmtCtrlSeat_SetCmd_Dvr     =  'SED';
    can.ClmtCtrlSeatSet_Cmd_v2_MS.ClmtCtrlSeat_SetCmd_Dvr     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ClmtCtrlSeatSet_Stat_v2
% Hex ID:125
% Last edited by: selwart
% Date:26-Apr-2011
MSG_125 = hex2dec('125');

ix=find(msg == MSG_125);          % Find all message 0x125's
if ~isempty(ix)                   % If there are any ...
    can.ClmtCtrlSeatSet_Stat_v2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x125 messages
    can.ClmtCtrlSeatSet_Stat_v2.nsamples      = length(ix);
    can.ClmtCtrlSeatSet_Stat_v2.ctime         = cantime(ix);

    can.ClmtCtrlSeatSet_Stat_v2.units.ClmtCtrlSeat_SetStat_Psgr     =  'SED';
    can.ClmtCtrlSeatSet_Stat_v2.ClmtCtrlSeat_SetStat_Psgr     =    (bb(2,:))' ;
    can.ClmtCtrlSeatSet_Stat_v2.units.ClmtCtrlSeat_SetStat_Dvr     =  'SED';
    can.ClmtCtrlSeatSet_Stat_v2.ClmtCtrlSeat_SetStat_Dvr     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Mirror_Manual_Override_M
% Hex ID:130
% Last edited by: selwart
% Date:26-Apr-2011
MSG_130 = hex2dec('130');

ix=find(msg == MSG_130);          % Find all message 0x130's
if ~isempty(ix)                   % If there are any ...
    can.Mirror_Manual_Override_M = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x130 messages
    can.Mirror_Manual_Override_M.nsamples      = length(ix);
    can.Mirror_Manual_Override_M.ctime         = cantime(ix);

    can.Mirror_Manual_Override_M.units.Mirror_Manual_Override     =  'Binary';
    can.Mirror_Manual_Override_M.Mirror_Manual_Override     =    (bitget(bb(1,:),8))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Memory_Sw_StatM
% Hex ID:131
% Last edited by: selwart
% Date:26-Apr-2011
MSG_131 = hex2dec('131');

ix=find(msg == MSG_131);          % Find all message 0x131's
if ~isempty(ix)                   % If there are any ...
    can.Memory_Sw_StatM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x131 messages
    can.Memory_Sw_StatM.nsamples      = length(ix);
    can.Memory_Sw_StatM.ctime         = cantime(ix);

    can.Memory_Sw_StatM.units.Memory_Sw_Message_Count     =  'Counts';
    can.Memory_Sw_StatM.Memory_Sw_Message_Count     =    (bb(2,:))' ;
    can.Memory_Sw_StatM.units.Memory_Set_Sw_Stat     =  'Binary';
    can.Memory_Sw_StatM.Memory_Set_Sw_Stat     =    (bitget(bb(1,:),8))';
    can.Memory_Sw_StatM.units.Memory_Set_Cancel     =  'Binary';
    can.Memory_Sw_StatM.Memory_Set_Cancel     =    (bitget(bb(1,:),4))';
    can.Memory_Sw_StatM.units.Memory_3_Sw_Stat     =  'Binary';
    can.Memory_Sw_StatM.Memory_3_Sw_Stat     =    (bitget(bb(1,:),5))';
    can.Memory_Sw_StatM.units.Memory_2_Sw_Stat     =  'Binary';
    can.Memory_Sw_StatM.Memory_2_Sw_Stat     =    (bitget(bb(1,:),6))';
    can.Memory_Sw_StatM.units.Memory_1_Sw_Stat     =  'Binary';
    can.Memory_Sw_StatM.Memory_1_Sw_Stat     =    (bitget(bb(1,:),7))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Driver_Lock_Sw_StatM
% Hex ID:132
% Last edited by: selwart
% Date:26-Apr-2011
MSG_132 = hex2dec('132');

ix=find(msg == MSG_132);          % Find all message 0x132's
if ~isempty(ix)                   % If there are any ...
    can.Driver_Lock_Sw_StatM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x132 messages
    can.Driver_Lock_Sw_StatM.nsamples      = length(ix);
    can.Driver_Lock_Sw_StatM.ctime         = cantime(ix);

    can.Driver_Lock_Sw_StatM.units.Driver_Door_Key_Unlock     =  'SED';
    can.Driver_Lock_Sw_StatM.Driver_Door_Key_Unlock     =    (bitget(bb(2,:),5))';
    can.Driver_Lock_Sw_StatM.units.Driver_Door_Key_Lock     =  'SED';
    can.Driver_Lock_Sw_StatM.Driver_Door_Key_Lock     =    (bitget(bb(2,:),6))';
    can.Driver_Lock_Sw_StatM.units.Driver_Lock_Sw_Message_Cnt     =  'Counts';
    can.Driver_Lock_Sw_StatM.Driver_Lock_Sw_Message_Cnt     =    (bb(1,:))' ;
    can.Driver_Lock_Sw_StatM.units.Driver_Lock_Sw_Stat     =  'SED';
    can.Driver_Lock_Sw_StatM.Driver_Lock_Sw_Stat     =    (bitand(bitshift(bb(2,:),-6),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Memory_Cancel_Cmd_M
% Hex ID:135
% Last edited by: selwart
% Date:26-Apr-2011
MSG_135 = hex2dec('135');

ix=find(msg == MSG_135);          % Find all message 0x135's
if ~isempty(ix)                   % If there are any ...
    can.Memory_Cancel_Cmd_M = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x135 messages
    can.Memory_Cancel_Cmd_M.nsamples      = length(ix);
    can.Memory_Cancel_Cmd_M.ctime         = cantime(ix);

    can.Memory_Cancel_Cmd_M.units.Memory_Cancel_Cmd     =  'Binary';
    can.Memory_Cancel_Cmd_M.Memory_Cancel_Cmd     =    (bitget(bb(1,:),8))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Driver_Door_Lock_CmdM
% Hex ID:136
% Last edited by: selwart
% Date:26-Apr-2011
MSG_136 = hex2dec('136');

ix=find(msg == MSG_136);          % Find all message 0x136's
if ~isempty(ix)                   % If there are any ...
    can.Driver_Door_Lock_CmdM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x136 messages
    can.Driver_Door_Lock_CmdM.nsamples      = length(ix);
    can.Driver_Door_Lock_CmdM.ctime         = cantime(ix);

    can.Driver_Door_Lock_CmdM.units.Driver_Door_Lock_Msg_Cnt     =  'Counts';
    can.Driver_Door_Lock_CmdM.Driver_Door_Lock_Msg_Cnt     =    (bb(1,:))' ;
    can.Driver_Door_Lock_CmdM.units.Driver_Door_Lock_Cmd     =  'SED';
    can.Driver_Door_Lock_CmdM.Driver_Door_Lock_Cmd     =    (bitand(bitshift(bb(2,:),-4),15))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Pass_Mirror_Sw_StatM
% Hex ID:137
% Last edited by: selwart
% Date:26-Apr-2011
MSG_137 = hex2dec('137');

ix=find(msg == MSG_137);          % Find all message 0x137's
if ~isempty(ix)                   % If there are any ...
    can.Pass_Mirror_Sw_StatM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x137 messages
    can.Pass_Mirror_Sw_StatM.nsamples      = length(ix);
    can.Pass_Mirror_Sw_StatM.ctime         = cantime(ix);

    can.Pass_Mirror_Sw_StatM.units.Pass_Mirror_Sw_UD_Stat     =  'SED';
    can.Pass_Mirror_Sw_StatM.Pass_Mirror_Sw_UD_Stat     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.Pass_Mirror_Sw_StatM.units.Pass_Mirror_Sw_LR_Stat     =  'SED';
    can.Pass_Mirror_Sw_StatM.Pass_Mirror_Sw_LR_Stat     =    (bitand(bitshift(bb(1,:),-4),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RPwrSlideDr_Unlock_RqstM
% Hex ID:139
% Last edited by: selwart
% Date:26-Apr-2011
MSG_139 = hex2dec('139');

ix=find(msg == MSG_139);          % Find all message 0x139's
if ~isempty(ix)                   % If there are any ...
    can.RPwrSlideDr_Unlock_RqstM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x139 messages
    can.RPwrSlideDr_Unlock_RqstM.nsamples      = length(ix);
    can.RPwrSlideDr_Unlock_RqstM.ctime         = cantime(ix);

    can.RPwrSlideDr_Unlock_RqstM.units.RPwrSlideDr_Unlock_Rqst     =  'SED';
    can.RPwrSlideDr_Unlock_RqstM.RPwrSlideDr_Unlock_Rqst     =    (bitget(bb(1,:),8))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: LPwrSlideDr_Unlock_RqstM
% Hex ID:140
% Last edited by: selwart
% Date:26-Apr-2011
MSG_140 = hex2dec('140');

ix=find(msg == MSG_140);          % Find all message 0x140's
if ~isempty(ix)                   % If there are any ...
    can.LPwrSlideDr_Unlock_RqstM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x140 messages
    can.LPwrSlideDr_Unlock_RqstM.nsamples      = length(ix);
    can.LPwrSlideDr_Unlock_RqstM.ctime         = cantime(ix);

    can.LPwrSlideDr_Unlock_RqstM.units.LPwrSlideDr_Unlock_Rqst     =  'SED';
    can.LPwrSlideDr_Unlock_RqstM.LPwrSlideDr_Unlock_Rqst     =    (bitget(bb(1,:),8))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Passive_Entry_Ctrl_Data
% Hex ID:141
% Last edited by: selwart
% Date:26-Apr-2011
MSG_141 = hex2dec('141');

ix=find(msg == MSG_141);          % Find all message 0x141's
if ~isempty(ix)                   % If there are any ...
    can.Passive_Entry_Ctrl_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x141 messages
    can.Passive_Entry_Ctrl_Data.nsamples      = length(ix);
    can.Passive_Entry_Ctrl_Data.ctime         = cantime(ix);

    can.Passive_Entry_Ctrl_Data.units.PE_Control_Data_1     =  'Unitless';
    can.Passive_Entry_Ctrl_Data.PE_Control_Data_1     =    (bb(3,:))' ;
    can.Passive_Entry_Ctrl_Data.units.PE_Control_Cmd     =  'SED';
    can.Passive_Entry_Ctrl_Data.PE_Control_Cmd     =    (bitand(bitshift(bb(1,:),-5),7))' ;
    can.Passive_Entry_Ctrl_Data.units.PK_SearchResults_Prog     =  'Unitless';
    can.Passive_Entry_Ctrl_Data.PK_SearchResults_Prog     =    (bitand(bitshift(bb(8,:),-4),15))' ;
    can.Passive_Entry_Ctrl_Data.units.PK_SearchResults_MyKey     =  'Unitless';
    can.Passive_Entry_Ctrl_Data.PK_SearchResults_MyKey     =    (bitand(bitshift(bb(1,:),-1),15))' ;
    can.Passive_Entry_Ctrl_Data.units.PK_SearchResults_Found     =  'Unitless';
    can.Passive_Entry_Ctrl_Data.PK_SearchResults_Found     =    (bitand(bb(8,:),15))' ;
    can.Passive_Entry_Ctrl_Data.units.PK_Search_EvNum     =  'Counts';
    can.Passive_Entry_Ctrl_Data.PK_Search_EvNum     =    (bb(2,:))' ;
    can.Passive_Entry_Ctrl_Data.units.PE_Control_Data_5     =  'Unitless';
    can.Passive_Entry_Ctrl_Data.PE_Control_Data_5     =    (bb(7,:))' ;
    can.Passive_Entry_Ctrl_Data.units.PE_Control_Data_4     =  'Unitless';
    can.Passive_Entry_Ctrl_Data.PE_Control_Data_4     =    (bb(6,:))' ;
    can.Passive_Entry_Ctrl_Data.units.PE_Control_Data_3     =  'Unitless';
    can.Passive_Entry_Ctrl_Data.PE_Control_Data_3     =    (bb(5,:))' ;
    can.Passive_Entry_Ctrl_Data.units.PE_Control_Data_2     =  'Unitless';
    can.Passive_Entry_Ctrl_Data.PE_Control_Data_2     =    (bb(4,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Passive_Entry_Target_Data
% Hex ID:142
% Last edited by: selwart
% Date:26-Apr-2011
MSG_142 = hex2dec('142');

ix=find(msg == MSG_142);          % Find all message 0x142's
if ~isempty(ix)                   % If there are any ...
    can.Passive_Entry_Target_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x142 messages
    can.Passive_Entry_Target_Data.nsamples      = length(ix);
    can.Passive_Entry_Target_Data.ctime         = cantime(ix);

    can.Passive_Entry_Target_Data.units.PE_Target_Data_5     =  'Unitless';
    can.Passive_Entry_Target_Data.PE_Target_Data_5     =    (bb(6,:))' ;
    can.Passive_Entry_Target_Data.units.PE_Target_Cmd     =  'SED';
    can.Passive_Entry_Target_Data.PE_Target_Cmd     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.Passive_Entry_Target_Data.units.PE_Target_Status     =  'SED';
    can.Passive_Entry_Target_Data.PE_Target_Status     =    (bitget(bb(1,:),6))';
    can.Passive_Entry_Target_Data.units.PE_Target_Data_1     =  'Unitless';
    can.Passive_Entry_Target_Data.PE_Target_Data_1     =    (bb(2,:))' ;
    can.Passive_Entry_Target_Data.units.PE_Search_Rqst     =  'SED';
    can.Passive_Entry_Target_Data.PE_Search_Rqst     =    (bitand(bitshift(bb(1,:),-3),3))' ;
    can.Passive_Entry_Target_Data.units.PE_Target_Data_4     =  'Unitless';
    can.Passive_Entry_Target_Data.PE_Target_Data_4     =    (bb(5,:))' ;
    can.Passive_Entry_Target_Data.units.PE_Target_Data_3     =  'Unitless';
    can.Passive_Entry_Target_Data.PE_Target_Data_3     =    (bb(4,:))' ;
    can.Passive_Entry_Target_Data.units.PE_Target_Data_2     =  'Unitless';
    can.Passive_Entry_Target_Data.PE_Target_Data_2     =    (bb(3,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: BCM_m_FrP28
% Hex ID:241
% Last edited by: selwart
% Date:26-Apr-2011
MSG_241 = hex2dec('241');

ix=find(msg == MSG_241);          % Find all message 0x241's
if ~isempty(ix)                   % If there are any ...
    can.BCM_m_FrP28 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x241 messages
    can.BCM_m_FrP28.nsamples      = length(ix);
    can.BCM_m_FrP28.ctime         = cantime(ix);

    can.BCM_m_FrP28.units.WheelRotToothCntFrL     =  '';
    can.BCM_m_FrP28.WheelRotToothCntFrL     =    (bb(2,:))' ;
    can.BCM_m_FrP28.units.WheelRotToothCntFrL_UB     =  '';
    can.BCM_m_FrP28.WheelRotToothCntFrL_UB     =    (bitget(bb(6,:),3))';
    can.BCM_m_FrP28.units.WheelRotToothCntFrR     =  '';
    can.BCM_m_FrP28.WheelRotToothCntFrR     =    (bb(3,:))' ;
    can.BCM_m_FrP28.units.WheelRotToothCntFrR_UB     =  '';
    can.BCM_m_FrP28.WheelRotToothCntFrR_UB     =    (bitget(bb(6,:),2))';
    can.BCM_m_FrP28.units.WheelRotToothCntReL     =  '';
    can.BCM_m_FrP28.WheelRotToothCntReL     =    (bb(4,:))' ;
    can.BCM_m_FrP28.units.WheelRotToothCntReL_UB     =  '';
    can.BCM_m_FrP28.WheelRotToothCntReL_UB     =    (bitget(bb(6,:),1))';
    can.BCM_m_FrP28.units.WheelRotToothCntReR     =  '';
    can.BCM_m_FrP28.WheelRotToothCntReR     =    (bb(5,:))' ;
    can.BCM_m_FrP28.units.WheelRotToothCntReR_UB     =  '';
    can.BCM_m_FrP28.WheelRotToothCntReR_UB     =    (bitget(bb(6,:),4))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: FCIM_Button_Press
% Hex ID:2E0
% Last edited by: selwart
% Date:26-Apr-2011
MSG_2E0 = hex2dec('2E0');

ix=find(msg == MSG_2E0);          % Find all message 0x2E0's
if ~isempty(ix)                   % If there are any ...
    can.FCIM_Button_Press = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x2E0 messages
    can.FCIM_Button_Press.nsamples      = length(ix);
    can.FCIM_Button_Press.ctime         = cantime(ix);

    can.FCIM_Button_Press.units.FCIM_Target_ID     =  'SED';
    can.FCIM_Button_Press.FCIM_Target_ID     =    (bitand(bitshift(bb(2,:),-2),15))' ;
    can.FCIM_Button_Press.units.FCIM_Button_Type     =  'SED';
    can.FCIM_Button_Press.FCIM_Button_Type     =    (bb(1,:))' ;
    can.FCIM_Button_Press.units.FCIM_Button_State     =  'SED';
    can.FCIM_Button_Press.FCIM_Button_State     =    (bitand(bitshift(bb(2,:),-6),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Compressor_Req
% Hex ID:326
% Last edited by: selwart
% Date:26-Apr-2011
MSG_326 = hex2dec('326');

ix=find(msg == MSG_326);          % Find all message 0x326's
if ~isempty(ix)                   % If there are any ...
    can.Compressor_Req = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x326 messages
    can.Compressor_Req.nsamples      = length(ix);
    can.Compressor_Req.ctime         = cantime(ix);

    can.Compressor_Req.units.HvacEvap_Te_Rq     =  'Degrees C';
    can.Compressor_Req.HvacEvap_Te_Rq     =    1.250000e-001*(2^8 * bitand(bb(5,:),3) + bb(6,:))' +-50.00;
    can.Compressor_Req.units.HvacEvap_Te_Actl     =  'Degrees C';
    can.Compressor_Req.HvacEvap_Te_Actl     =    1.250000e-001*(2^8 * bitand(bb(3,:),3) + bb(4,:))' +-50.00;
    can.Compressor_Req.units.HvacAirCond_B_Rq     =  'SED';
    can.Compressor_Req.HvacAirCond_B_Rq     =    (bitget(bb(1,:),8))';
    can.Compressor_Req.units.HvacEvap_Te_Offst     =  'Degrees C';
    can.Compressor_Req.HvacEvap_Te_Offst     =    1.250000e-001*(2^8 * bitand(bb(1,:),3) + bb(2,:))' +-50.00;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: MassageSeat_Data1
% Hex ID:34A
% Last edited by: selwart
% Date:26-Apr-2011
MSG_34A = hex2dec('34A');

ix=find(msg == MSG_34A);          % Find all message 0x34A's
if ~isempty(ix)                   % If there are any ...
    can.MassageSeat_Data1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x34A messages
    can.MassageSeat_Data1.nsamples      = length(ix);
    can.MassageSeat_Data1.ctime         = cantime(ix);

    can.MassageSeat_Data1.units.SeatLmbrUpDrv_Pc_Actl     =  'Percent';
    can.MassageSeat_Data1.SeatLmbrUpDrv_Pc_Actl     =    (bitand(bb(5,:),127))' ;
    can.MassageSeat_Data1.units.SeatLmbrMidDrv_Pc_Actl     =  'Percent';
    can.MassageSeat_Data1.SeatLmbrMidDrv_Pc_Actl     =    (bitand(bb(4,:),127))' ;
    can.MassageSeat_Data1.units.SeatLmbrLoDrv_Pc_Actl     =  'Percent';
    can.MassageSeat_Data1.SeatLmbrLoDrv_Pc_Actl     =    (bitand(bb(3,:),127))' ;
    can.MassageSeat_Data1.units.SeatBlUpDrv_Pc_Actl     =  'Percent';
    can.MassageSeat_Data1.SeatBlUpDrv_Pc_Actl     =    (bitand(bb(2,:),127))' ;
    can.MassageSeat_Data1.units.SeatBlLoDrv_Pc_Actl     =  'Percent';
    can.MassageSeat_Data1.SeatBlLoDrv_Pc_Actl     =    (bitand(bb(1,:),127))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: MassageSeat_Data2
% Hex ID:34B
% Last edited by: selwart
% Date:26-Apr-2011
MSG_34B = hex2dec('34B');

ix=find(msg == MSG_34B);          % Find all message 0x34B's
if ~isempty(ix)                   % If there are any ...
    can.MassageSeat_Data2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x34B messages
    can.MassageSeat_Data2.nsamples      = length(ix);
    can.MassageSeat_Data2.ctime         = cantime(ix);

    can.MassageSeat_Data2.units.SeatLmbrUpPsgr_Pc_Actl     =  'Percent';
    can.MassageSeat_Data2.SeatLmbrUpPsgr_Pc_Actl     =    (bitand(bb(5,:),127))' ;
    can.MassageSeat_Data2.units.SeatLmbrMidPsgr_Pc_Actl     =  'Percent';
    can.MassageSeat_Data2.SeatLmbrMidPsgr_Pc_Actl     =    (bitand(bb(4,:),127))' ;
    can.MassageSeat_Data2.units.SeatLmbrLoPsgr_Pc_Actl     =  'Percent';
    can.MassageSeat_Data2.SeatLmbrLoPsgr_Pc_Actl     =    (bitand(bb(3,:),127))' ;
    can.MassageSeat_Data2.units.SeatBlUpPsgr_Pc_Actl     =  'Percent';
    can.MassageSeat_Data2.SeatBlUpPsgr_Pc_Actl     =    (bitand(bb(2,:),127))' ;
    can.MassageSeat_Data2.units.SeatBlLoPsgr_Pc_Actl     =  'Percent';
    can.MassageSeat_Data2.SeatBlLoPsgr_Pc_Actl     =    (bitand(bb(1,:),127))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: MassageSeat_Stat1
% Hex ID:34C
% Last edited by: selwart
% Date:26-Apr-2011
MSG_34C = hex2dec('34C');

ix=find(msg == MSG_34C);          % Find all message 0x34C's
if ~isempty(ix)                   % If there are any ...
    can.MassageSeat_Stat1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x34C messages
    can.MassageSeat_Stat1.nsamples      = length(ix);
    can.MassageSeat_Stat1.ctime         = cantime(ix);

    can.MassageSeat_Stat1.units.StmsLmbrDrv_D_Stat     =  'SED';
    can.MassageSeat_Stat1.StmsLmbrDrv_D_Stat     =    (bitand(bb(3,:),3))' ;
    can.MassageSeat_Stat1.units.StmsCshnDrv_D_Stat     =  'SED';
    can.MassageSeat_Stat1.StmsCshnDrv_D_Stat     =    (bitand(bitshift(bb(3,:),-2),3))' ;
    can.MassageSeat_Stat1.units.SeatSwtchDrv_B_Stat     =  'SED';
    can.MassageSeat_Stat1.SeatSwtchDrv_B_Stat     =    (bitget(bb(4,:),8))';
    can.MassageSeat_Stat1.units.SeatFnDrv_D_Stat     =  'SED';
    can.MassageSeat_Stat1.SeatFnDrv_D_Stat     =    (bitand(bitshift(bb(3,:),-5),7))' ;
    can.MassageSeat_Stat1.units.SeatAirAmb_P_Actl     =  'KiloPascal';
    can.MassageSeat_Stat1.SeatAirAmb_P_Actl     =    1.000000e-002*(2^8 * bb(1,:) + bb(2,:))' ;
    can.MassageSeat_Stat1.units.SeatPDrv_B_Stat     =  'SED';
    can.MassageSeat_Stat1.SeatPDrv_B_Stat     =    (bitget(bb(3,:),5))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: MassageSeat_Stat2
% Hex ID:34D
% Last edited by: selwart
% Date:26-Apr-2011
MSG_34D = hex2dec('34D');

ix=find(msg == MSG_34D);          % Find all message 0x34D's
if ~isempty(ix)                   % If there are any ...
    can.MassageSeat_Stat2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x34D messages
    can.MassageSeat_Stat2.nsamples      = length(ix);
    can.MassageSeat_Stat2.ctime         = cantime(ix);

    can.MassageSeat_Stat2.units.StmsLmbrPsgr_D_Stat     =  'SED';
    can.MassageSeat_Stat2.StmsLmbrPsgr_D_Stat     =    (bitand(bitshift(bb(2,:),-6),3))' ;
    can.MassageSeat_Stat2.units.StmsCshnPsgr_D_Stat     =  'SED';
    can.MassageSeat_Stat2.StmsCshnPsgr_D_Stat     =    (bitand(bitshift(bb(2,:),-4),3))' ;
    can.MassageSeat_Stat2.units.SeatSwtchPsgr_B_Stat     =  'SED';
    can.MassageSeat_Stat2.SeatSwtchPsgr_B_Stat     =    (bitget(bb(2,:),4))';
    can.MassageSeat_Stat2.units.SeatPPsgr_B_Stat     =  'SED';
    can.MassageSeat_Stat2.SeatPPsgr_B_Stat     =    (bitget(bb(1,:),8))';
    can.MassageSeat_Stat2.units.SeatFnPsgr_D_Stat     =  'SED';
    can.MassageSeat_Stat2.SeatFnPsgr_D_Stat     =    (bitand(bitshift(bb(1,:),-4),7))' ;
    can.MassageSeat_Stat2.units.PsgrMemFeedback_Rsp     =  'SED';
    can.MassageSeat_Stat2.PsgrMemFeedback_Rsp     =    (bitand(bb(1,:),15))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: MassageSeat_Req_MS
% Hex ID:34E
% Last edited by: selwart
% Date:26-Apr-2011
MSG_34E = hex2dec('34E');

ix=find(msg == MSG_34E);          % Find all message 0x34E's
if ~isempty(ix)                   % If there are any ...
    can.MassageSeat_Req_MS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x34E messages
    can.MassageSeat_Req_MS.nsamples      = length(ix);
    can.MassageSeat_Req_MS.ctime         = cantime(ix);

    can.MassageSeat_Req_MS.units.SeatFnPsgr_D_Rq     =  'SED';
    can.MassageSeat_Req_MS.SeatFnPsgr_D_Rq     =    (bitand(bitshift(bb(2,:),-5),7))' ;
    can.MassageSeat_Req_MS.units.SeatFnDrv_D_Rq     =  'SED';
    can.MassageSeat_Req_MS.SeatFnDrv_D_Rq     =    (bitand(bitshift(bb(2,:),-2),7))' ;
    can.MassageSeat_Req_MS.units.SeatFnDfaltPsgr_B_Rq     =  'SED';
    can.MassageSeat_Req_MS.SeatFnDfaltPsgr_B_Rq     =    (bitget(bb(2,:),2))';
    can.MassageSeat_Req_MS.units.SeatFnDfaltDrv_B_Rq     =  'SED';
    can.MassageSeat_Req_MS.SeatFnDfaltDrv_B_Rq     =    (bitget(bb(2,:),1))';
    can.MassageSeat_Req_MS.units.SeatFnChngPsgr_D_Rq     =  'SED';
    can.MassageSeat_Req_MS.SeatFnChngPsgr_D_Rq     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.MassageSeat_Req_MS.units.SeatFnChngDrv_D_Rq     =  'SED';
    can.MassageSeat_Req_MS.SeatFnChngDrv_D_Rq     =    (bitand(bitshift(bb(1,:),-4),3))' ;
    can.MassageSeat_Req_MS.units.PsgrMemory_Rq     =  'SED';
    can.MassageSeat_Req_MS.PsgrMemory_Rq     =    (bitand(bb(1,:),15))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: MassageSeat_Data3
% Hex ID:351
% Last edited by: selwart
% Date:26-Apr-2011
MSG_351 = hex2dec('351');

ix=find(msg == MSG_351);          % Find all message 0x351's
if ~isempty(ix)                   % If there are any ...
    can.MassageSeat_Data3 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x351 messages
    can.MassageSeat_Data3.nsamples      = length(ix);
    can.MassageSeat_Data3.ctime         = cantime(ix);

    can.MassageSeat_Data3.units.SeatCshnDrvRR_Pc_Actl     =  'Percent';
    can.MassageSeat_Data3.SeatCshnDrvRR_Pc_Actl     =    (bitand(bb(4,:),127))' ;
    can.MassageSeat_Data3.units.SeatCshnDrvRL_Pc_Actl     =  'Percent';
    can.MassageSeat_Data3.SeatCshnDrvRL_Pc_Actl     =    (bitand(bb(3,:),127))' ;
    can.MassageSeat_Data3.units.SeatCshnDrvFR_Pc_Actl     =  'Percent';
    can.MassageSeat_Data3.SeatCshnDrvFR_Pc_Actl     =    (bitand(bb(2,:),127))' ;
    can.MassageSeat_Data3.units.SeatCshnDrvFL_Pc_Actl     =  'Percent';
    can.MassageSeat_Data3.SeatCshnDrvFL_Pc_Actl     =    (bitand(bb(1,:),127))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: MassageSeat_Data4
% Hex ID:352
% Last edited by: selwart
% Date:26-Apr-2011
MSG_352 = hex2dec('352');

ix=find(msg == MSG_352);          % Find all message 0x352's
if ~isempty(ix)                   % If there are any ...
    can.MassageSeat_Data4 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x352 messages
    can.MassageSeat_Data4.nsamples      = length(ix);
    can.MassageSeat_Data4.ctime         = cantime(ix);

    can.MassageSeat_Data4.units.SeatCshnPsgrRR_Pc_Actl     =  'Percent';
    can.MassageSeat_Data4.SeatCshnPsgrRR_Pc_Actl     =    (bitand(bb(4,:),127))' ;
    can.MassageSeat_Data4.units.SeatCshnPsgrRL_Pc_Actl     =  'Percent';
    can.MassageSeat_Data4.SeatCshnPsgrRL_Pc_Actl     =    (bitand(bb(3,:),127))' ;
    can.MassageSeat_Data4.units.SeatCshnPsgrFR_Pc_Actl     =  'Percent';
    can.MassageSeat_Data4.SeatCshnPsgrFR_Pc_Actl     =    (bitand(bb(2,:),127))' ;
    can.MassageSeat_Data4.units.SeatCshnPsgrFL_Pc_Actl     =  'Percent';
    can.MassageSeat_Data4.SeatCshnPsgrFL_Pc_Actl     =    (bitand(bb(1,:),127))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EFP_CC_Status_MS
% Hex ID:355
% Last edited by: selwart
% Date:26-Apr-2011
MSG_355 = hex2dec('355');

ix=find(msg == MSG_355);          % Find all message 0x355's
if ~isempty(ix)                   % If there are any ...
    can.EFP_CC_Status_MS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x355 messages
    can.EFP_CC_Status_MS.nsamples      = length(ix);
    can.EFP_CC_Status_MS.ctime         = cantime(ix);

    can.EFP_CC_Status_MS.units.Save_My_Temp     =  'SED';
    can.EFP_CC_Status_MS.Save_My_Temp     =    (bitget(bb(8,:),4))';
    can.EFP_CC_Status_MS.units.Front_Left_Temp_Setpt     =  'Mixed';
    can.EFP_CC_Status_MS.Front_Left_Temp_Setpt     =    (bb(4,:))' ;
    can.EFP_CC_Status_MS.units.RrDefrost_HtdMirrorReq     =  'SED';
    can.EFP_CC_Status_MS.RrDefrost_HtdMirrorReq     =    (bitget(bb(8,:),5))';
    can.EFP_CC_Status_MS.units.Rear_Control_Status     =  'SED';
    can.EFP_CC_Status_MS.Rear_Control_Status     =    (bitget(bb(3,:),1))';
    can.EFP_CC_Status_MS.units.MultipleButtonPressReq     =  'SED';
    can.EFP_CC_Status_MS.MultipleButtonPressReq     =    (bitand(bitshift(bb(8,:),-5),7))' ;
    can.EFP_CC_Status_MS.units.Rear_System_Mode_Req     =  'SED';
    can.EFP_CC_Status_MS.Rear_System_Mode_Req     =    (bitand(bitshift(bb(3,:),-1),7))' ;
    can.EFP_CC_Status_MS.units.Recirc_Request     =  'SED';
    can.EFP_CC_Status_MS.Recirc_Request     =    (bitand(bitshift(bb(3,:),-6),3))' ;
    can.EFP_CC_Status_MS.units.Front_Rt_Temp_Setpt     =  'Mixed';
    can.EFP_CC_Status_MS.Front_Rt_Temp_Setpt     =    (bb(5,:))' ;
    can.EFP_CC_Status_MS.units.AC_Request     =  'SED';
    can.EFP_CC_Status_MS.AC_Request     =    (bitand(bitshift(bb(3,:),-4),3))' ;
    can.EFP_CC_Status_MS.units.Windshield_ModeRequest     =  '%';
    can.EFP_CC_Status_MS.Windshield_ModeRequest     =    8.330000e+000*(bitand(bitshift(bb(2,:),-4),15))' ;
    can.EFP_CC_Status_MS.units.Panel_Mode_Request     =  '%';
    can.EFP_CC_Status_MS.Panel_Mode_Request     =    8.330000e+000*(bitand(bitshift(bb(1,:),-4),15))' ;
    can.EFP_CC_Status_MS.units.Overriding_ModeReq     =  'SED';
    can.EFP_CC_Status_MS.Overriding_ModeReq     =    (bitand(bb(2,:),7))' ;
    can.EFP_CC_Status_MS.units.Floor_Mode_Request     =  '%';
    can.EFP_CC_Status_MS.Floor_Mode_Request     =    8.330000e+000*(bitand(bb(1,:),15))' ;
    can.EFP_CC_Status_MS.units.Rear_Right_Temp_Setpt     =  'Mixed';
    can.EFP_CC_Status_MS.Rear_Right_Temp_Setpt     =    (bb(7,:))' ;
    can.EFP_CC_Status_MS.units.Forced_Recirc_Req     =  'SED';
    can.EFP_CC_Status_MS.Forced_Recirc_Req     =    (bitget(bb(2,:),4))';
    can.EFP_CC_Status_MS.units.Rear_Left_Temp_Setpt     =  'Mixed';
    can.EFP_CC_Status_MS.Rear_Left_Temp_Setpt     =    (bb(6,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EFP_CC_Seat_Req_Stat_MS
% Hex ID:356
% Last edited by: selwart
% Date:26-Apr-2011
MSG_356 = hex2dec('356');

ix=find(msg == MSG_356);          % Find all message 0x356's
if ~isempty(ix)                   % If there are any ...
    can.EFP_CC_Seat_Req_Stat_MS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x356 messages
    can.EFP_CC_Seat_Req_Stat_MS.nsamples      = length(ix);
    can.EFP_CC_Seat_Req_Stat_MS.ctime         = cantime(ix);

    can.EFP_CC_Seat_Req_Stat_MS.units.Front_Rear_Blower_Req     =  'Detents';
    can.EFP_CC_Seat_Req_Stat_MS.Front_Rear_Blower_Req     =    (bitand(bitshift(bb(4,:),-2),63))' ;
    can.EFP_CC_Seat_Req_Stat_MS.units.Pass_Rr_Cond_Seat_Req     =  'SED';
    can.EFP_CC_Seat_Req_Stat_MS.Pass_Rr_Cond_Seat_Req     =    (bitand(bitshift(bb(3,:),-4),3))' ;
    can.EFP_CC_Seat_Req_Stat_MS.units.Pass_Rr_Cond_Seat_Lvl     =  'SED';
    can.EFP_CC_Seat_Req_Stat_MS.Pass_Rr_Cond_Seat_Lvl     =    (2^2 * bitand(bb(2,:),1) + bitand(bitshift(bb(3,:),-6),3))' ;
    can.EFP_CC_Seat_Req_Stat_MS.units.Pass_Fr_Cond_Seat_Req     =  'SED';
    can.EFP_CC_Seat_Req_Stat_MS.Pass_Fr_Cond_Seat_Req     =    (bitand(bitshift(bb(2,:),-4),3))' ;
    can.EFP_CC_Seat_Req_Stat_MS.units.Pass_Fr_Cond_Seat_Lvl     =  'SED';
    can.EFP_CC_Seat_Req_Stat_MS.Pass_Fr_Cond_Seat_Lvl     =    (bitand(bitshift(bb(2,:),-1),7))' ;
    can.EFP_CC_Seat_Req_Stat_MS.units.Drvr_Rr_Cond_Seat_Req     =  'SED';
    can.EFP_CC_Seat_Req_Stat_MS.Drvr_Rr_Cond_Seat_Req     =    (bitand(bitshift(bb(2,:),-6),3))' ;
    can.EFP_CC_Seat_Req_Stat_MS.units.Drvr_Rr_Cond_Seat_Lvl     =  'SED';
    can.EFP_CC_Seat_Req_Stat_MS.Drvr_Rr_Cond_Seat_Lvl     =    (bitand(bb(1,:),7))' ;
    can.EFP_CC_Seat_Req_Stat_MS.units.Drvr_Fr_Cond_Seat_Req     =  'SED';
    can.EFP_CC_Seat_Req_Stat_MS.Drvr_Fr_Cond_Seat_Req     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.EFP_CC_Seat_Req_Stat_MS.units.Drvr_Fr_Cond_Seat_Lvl     =  'SED';
    can.EFP_CC_Seat_Req_Stat_MS.Drvr_Fr_Cond_Seat_Lvl     =    (bitand(bitshift(bb(1,:),-3),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RCCM_CC_Status
% Hex ID:357
% Last edited by: selwart
% Date:26-Apr-2011
MSG_357 = hex2dec('357');

ix=find(msg == MSG_357);          % Find all message 0x357's
if ~isempty(ix)                   % If there are any ...
    can.RCCM_CC_Status = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x357 messages
    can.RCCM_CC_Status.nsamples      = length(ix);
    can.RCCM_CC_Status.ctime         = cantime(ix);

    can.RCCM_CC_Status.units.RrBlwrCondStLdShedStat     =  'SED';
    can.RCCM_CC_Status.RrBlwrCondStLdShedStat     =    (bitand(bb(4,:),3))' ;
    can.RCCM_CC_Status.units.FrBlwrCondStLdShedStat     =  'SED';
    can.RCCM_CC_Status.FrBlwrCondStLdShedStat     =    (bitand(bitshift(bb(3,:),-3),3))' ;
    can.RCCM_CC_Status.units.RCCM_Rr_Rt_TempSetpt     =  'Mixed';
    can.RCCM_CC_Status.RCCM_Rr_Rt_TempSetpt     =    (bb(8,:))' ;
    can.RCCM_CC_Status.units.RCCM_Rr_Left_TempSetpt     =  'Mixed';
    can.RCCM_CC_Status.RCCM_Rr_Left_TempSetpt     =    (bb(7,:))' ;
    can.RCCM_CC_Status.units.RCCM_Fr_Rt_TempSetpt     =  'Mixed';
    can.RCCM_CC_Status.RCCM_Fr_Rt_TempSetpt     =    (bb(6,:))' ;
    can.RCCM_CC_Status.units.RCCM_Fr_Left_TempSetpt     =  'Mixed';
    can.RCCM_CC_Status.RCCM_Fr_Left_TempSetpt     =    (bb(5,:))' ;
    can.RCCM_CC_Status.units.RCCM_Fr_Rr_Blower_Req     =  'Detents';
    can.RCCM_CC_Status.RCCM_Fr_Rr_Blower_Req     =    (bitand(bitshift(bb(4,:),-2),63))' ;
    can.RCCM_CC_Status.units.Panel_Mode_State     =  '%';
    can.RCCM_CC_Status.Panel_Mode_State     =    8.330000e+000*(bitand(bitshift(bb(1,:),-4),15))' ;
    can.RCCM_CC_Status.units.RrDefHtdMirrLdShedStat     =  'SED';
    can.RCCM_CC_Status.RrDefHtdMirrLdShedStat     =    (bitand(bitshift(bb(3,:),-1),3))' ;
    can.RCCM_CC_Status.units.Windshield_Mode_State     =  '%';
    can.RCCM_CC_Status.Windshield_Mode_State     =    8.330000e+000*(bitand(bitshift(bb(2,:),-4),15))' ;
    can.RCCM_CC_Status.units.Recirc_Door_State     =  'SED';
    can.RCCM_CC_Status.Recirc_Door_State     =    (bitand(bitshift(bb(2,:),-2),3))' ;
    can.RCCM_CC_Status.units.Rear_System_Mode_State     =  'SED';
    can.RCCM_CC_Status.Rear_System_Mode_State     =    (bitand(bitshift(bb(3,:),-5),7))' ;
    can.RCCM_CC_Status.units.Default_Defrost_State     =  'SED';
    can.RCCM_CC_Status.Default_Defrost_State     =    (bitget(bb(2,:),2))';
    can.RCCM_CC_Status.units.Auto_AC_Indicator_Temp     =  'SED';
    can.RCCM_CC_Status.Auto_AC_Indicator_Temp     =    (bitget(bb(3,:),1))';
    can.RCCM_CC_Status.units.Floor_Mode_State     =  '%';
    can.RCCM_CC_Status.Floor_Mode_State     =    8.330000e+000*(bitand(bb(1,:),15))' ;
    can.RCCM_CC_Status.units.RrDefrost_HtdMirrState     =  'SED';
    can.RCCM_CC_Status.RrDefrost_HtdMirrState     =    (bitget(bb(2,:),1))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RCCM_CC_Seat_Status
% Hex ID:358
% Last edited by: selwart
% Date:26-Apr-2011
MSG_358 = hex2dec('358');

ix=find(msg == MSG_358);          % Find all message 0x358's
if ~isempty(ix)                   % If there are any ...
    can.RCCM_CC_Seat_Status = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x358 messages
    can.RCCM_CC_Seat_Status.nsamples      = length(ix);
    can.RCCM_CC_Seat_Status.ctime         = cantime(ix);

    can.RCCM_CC_Seat_Status.units.Active_My_Temp     =  'SED';
    can.RCCM_CC_Seat_Status.Active_My_Temp     =    (bitget(bb(1,:),3))';
    can.RCCM_CC_Seat_Status.units.CC_HtdStrWhl_Req     =  'SED';
    can.RCCM_CC_Seat_Status.CC_HtdStrWhl_Req     =    (bitget(bb(4,:),1))';
    can.RCCM_CC_Seat_Status.units.RCCM_PR_Cond_Seat_Lvl     =  'SED';
    can.RCCM_CC_Seat_Status.RCCM_PR_Cond_Seat_Lvl     =    (bitand(bitshift(bb(4,:),-5),7))' ;
    can.RCCM_CC_Seat_Status.units.RCCM_PR_Cond_Seat_Req     =  'SED';
    can.RCCM_CC_Seat_Status.RCCM_PR_Cond_Seat_Req     =    (bitand(bitshift(bb(4,:),-3),3))' ;
    can.RCCM_CC_Seat_Status.units.RCCM_PF_Cond_Seat_Req     =  'SED';
    can.RCCM_CC_Seat_Status.RCCM_PF_Cond_Seat_Req     =    (bitand(bitshift(bb(3,:),-3),3))' ;
    can.RCCM_CC_Seat_Status.units.RCCM_PF_Cond_Seat_Lvl     =  'SED';
    can.RCCM_CC_Seat_Status.RCCM_PF_Cond_Seat_Lvl     =    (bitand(bitshift(bb(3,:),-5),7))' ;
    can.RCCM_CC_Seat_Status.units.RCCM_DR_Cond_Seat_Req     =  'SED';
    can.RCCM_CC_Seat_Status.RCCM_DR_Cond_Seat_Req     =    (bitand(bitshift(bb(2,:),-3),3))' ;
    can.RCCM_CC_Seat_Status.units.RCCM_DR_Cond_Seat_Lvl     =  'SED';
    can.RCCM_CC_Seat_Status.RCCM_DR_Cond_Seat_Lvl     =    (bitand(bitshift(bb(2,:),-5),7))' ;
    can.RCCM_CC_Seat_Status.units.RCCM_DF_Cond_Seat_Req     =  'SED';
    can.RCCM_CC_Seat_Status.RCCM_DF_Cond_Seat_Req     =    (bitand(bitshift(bb(1,:),-3),3))' ;
    can.RCCM_CC_Seat_Status.units.RCCM_DF_Cond_Seat_Lvl     =  'SED';
    can.RCCM_CC_Seat_Status.RCCM_DF_Cond_Seat_Lvl     =    (bitand(bitshift(bb(1,:),-5),7))' ;
    can.RCCM_CC_Seat_Status.units.PassRrCondStLdShedStat     =  'SED';
    can.RCCM_CC_Seat_Status.PassRrCondStLdShedStat     =    (bitand(bitshift(bb(4,:),-1),3))' ;
    can.RCCM_CC_Seat_Status.units.PassFrCondStLdShedStat     =  'SED';
    can.RCCM_CC_Seat_Status.PassFrCondStLdShedStat     =    (bitand(bitshift(bb(3,:),-1),3))' ;
    can.RCCM_CC_Seat_Status.units.DrvRrCondStLdShedStat     =  'SED';
    can.RCCM_CC_Seat_Status.DrvRrCondStLdShedStat     =    (bitand(bitshift(bb(2,:),-1),3))' ;
    can.RCCM_CC_Seat_Status.units.DrvFrCondStLdShedStat     =  'SED';
    can.RCCM_CC_Seat_Status.DrvFrCondStLdShedStat     =    (bitand(bb(1,:),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RCCM_CC_MBP_Press_Stat
% Hex ID:359
% Last edited by: selwart
% Date:26-Apr-2011
MSG_359 = hex2dec('359');

ix=find(msg == MSG_359);          % Find all message 0x359's
if ~isempty(ix)                   % If there are any ...
    can.RCCM_CC_MBP_Press_Stat = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x359 messages
    can.RCCM_CC_MBP_Press_Stat.nsamples      = length(ix);
    can.RCCM_CC_MBP_Press_Stat.ctime         = cantime(ix);

    can.RCCM_CC_MBP_Press_Stat.units.Report_Active     =  'SED';
    can.RCCM_CC_MBP_Press_Stat.Report_Active     =    (bitand(bb(5,:),3))' ;
    can.RCCM_CC_MBP_Press_Stat.units.Pass_Temp_Units     =  'SED';
    can.RCCM_CC_MBP_Press_Stat.Pass_Temp_Units     =    (bitget(bb(5,:),4))';
    can.RCCM_CC_MBP_Press_Stat.units.Front_Fan_Bars_Disply     =  'SED';
    can.RCCM_CC_MBP_Press_Stat.Front_Fan_Bars_Disply     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.RCCM_CC_MBP_Press_Stat.units.Drvr_Temp_Units     =  'SED';
    can.RCCM_CC_MBP_Press_Stat.Drvr_Temp_Units     =    (bitget(bb(5,:),5))';
    can.RCCM_CC_MBP_Press_Stat.units.MultBtnPushDsplyPass10     =  'Unitless';
    can.RCCM_CC_MBP_Press_Stat.MultBtnPushDsplyPass10     =    (bb(3,:))' ;
    can.RCCM_CC_MBP_Press_Stat.units.MultBtnPushDsplyPass1     =  'Unitless';
    can.RCCM_CC_MBP_Press_Stat.MultBtnPushDsplyPass1     =    (bb(4,:))' ;
    can.RCCM_CC_MBP_Press_Stat.units.MultBtnPushDsplyDrvr10     =  'Unitless';
    can.RCCM_CC_MBP_Press_Stat.MultBtnPushDsplyDrvr10     =    (bb(1,:))' ;
    can.RCCM_CC_MBP_Press_Stat.units.MultBtnPushDsplyDrvr1     =  'Unitless';
    can.RCCM_CC_MBP_Press_Stat.MultBtnPushDsplyDrvr1     =    (bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: MFD_CC_Status_MS
% Hex ID:35B
% Last edited by: selwart
% Date:26-Apr-2011
MSG_35B = hex2dec('35B');

ix=find(msg == MSG_35B);          % Find all message 0x35B's
if ~isempty(ix)                   % If there are any ...
    can.MFD_CC_Status_MS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x35B messages
    can.MFD_CC_Status_MS.nsamples      = length(ix);
    can.MFD_CC_Status_MS.ctime         = cantime(ix);

    can.MFD_CC_Status_MS.units.Rear_Mode_Bttn_Status     =  'SED';
    can.MFD_CC_Status_MS.Rear_Mode_Bttn_Status     =    (bitget(bb(5,:),7))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EFP_CC_Info_Status_MS
% Hex ID:35C
% Last edited by: selwart
% Date:26-Apr-2011
MSG_35C = hex2dec('35C');

ix=find(msg == MSG_35C);          % Find all message 0x35C's
if ~isempty(ix)                   % If there are any ...
    can.EFP_CC_Info_Status_MS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x35C messages
    can.EFP_CC_Info_Status_MS.nsamples      = length(ix);
    can.EFP_CC_Info_Status_MS.ctime         = cantime(ix);

    can.EFP_CC_Info_Status_MS.units.Rear_Panel_Btn_State     =  'SED';
    can.EFP_CC_Info_Status_MS.Rear_Panel_Btn_State     =    (bitget(bb(6,:),2))';
    can.EFP_CC_Info_Status_MS.units.Rear_Floor_Btn_State     =  'SED';
    can.EFP_CC_Info_Status_MS.Rear_Floor_Btn_State     =    (bitget(bb(6,:),1))';
    can.EFP_CC_Info_Status_MS.units.HtdStrWhl_SftBtt_Stt     =  'SED';
    can.EFP_CC_Info_Status_MS.HtdStrWhl_SftBtt_Stt     =    (bitand(bitshift(bb(5,:),-6),3))' ;
    can.EFP_CC_Info_Status_MS.units.AC_Sft_Button_State     =  'SED';
    can.EFP_CC_Info_Status_MS.AC_Sft_Button_State     =    (bitand(bitshift(bb(3,:),-6),3))' ;
    can.EFP_CC_Info_Status_MS.units.DrvRrCondSeatSftBttnSt     =  'SED';
    can.EFP_CC_Info_Status_MS.DrvRrCondSeatSftBttnSt     =    (bitand(bitshift(bb(6,:),-5),7))' ;
    can.EFP_CC_Info_Status_MS.units.DrvFrCondSeatSftBtnStt     =  'SED';
    can.EFP_CC_Info_Status_MS.DrvFrCondSeatSftBtnStt     =    (bitand(bitshift(bb(5,:),-3),7))' ;
    can.EFP_CC_Info_Status_MS.units.CC_RecircSBtn_St     =  'SED';
    can.EFP_CC_Info_Status_MS.CC_RecircSBtn_St     =    (bitand(bitshift(bb(4,:),-2),3))' ;
    can.EFP_CC_Info_Status_MS.units.CC_RrDefrSBtn_St     =  'SED';
    can.EFP_CC_Info_Status_MS.CC_RrDefrSBtn_St     =    (bitget(bb(4,:),1))';
    can.EFP_CC_Info_Status_MS.units.PasRrCondSeatSftBttnSt     =  'SED';
    can.EFP_CC_Info_Status_MS.PasRrCondSeatSftBttnSt     =    (bitand(bitshift(bb(6,:),-2),7))' ;
    can.EFP_CC_Info_Status_MS.units.PasFrCondSeatSftBtnStt     =  'SED';
    can.EFP_CC_Info_Status_MS.PasFrCondSeatSftBtnStt     =    (bitand(bb(5,:),7))' ;
    can.EFP_CC_Info_Status_MS.units.MyTemp_Soft_Bttn_State     =  'SED';
    can.EFP_CC_Info_Status_MS.MyTemp_Soft_Bttn_State     =    (bitget(bb(4,:),2))';
    can.EFP_CC_Info_Status_MS.units.CC_MaxACSBtn_St     =  'SED';
    can.EFP_CC_Info_Status_MS.CC_MaxACSBtn_St     =    (bitget(bb(4,:),5))';
    can.EFP_CC_Info_Status_MS.units.RearPowerButtonState     =  'SED';
    can.EFP_CC_Info_Status_MS.RearPowerButtonState     =    (bitget(bb(3,:),1))';
    can.EFP_CC_Info_Status_MS.units.RearCoolBarsDisplayed     =  'Bars_On';
    can.EFP_CC_Info_Status_MS.RearCoolBarsDisplayed     =    (bitand(bitshift(bb(2,:),-1),7))' ;
    can.EFP_CC_Info_Status_MS.units.Rear_Sft_Control_Stat     =  'SED';
    can.EFP_CC_Info_Status_MS.Rear_Sft_Control_Stat     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.EFP_CC_Info_Status_MS.units.CC_RrNeutralBarDsp_St     =  'SED';
    can.EFP_CC_Info_Status_MS.CC_RrNeutralBarDsp_St     =    (bitget(bb(2,:),1))';
    can.EFP_CC_Info_Status_MS.units.CC_RrHeatBarsDsp_St     =  'Bars_On';
    can.EFP_CC_Info_Status_MS.CC_RrHeatBarsDsp_St     =    (bitand(bitshift(bb(4,:),-5),7))' ;
    can.EFP_CC_Info_Status_MS.units.Rear_Fan_Bars_Displayed     =  'SED';
    can.EFP_CC_Info_Status_MS.Rear_Fan_Bars_Displayed     =    (bitand(bitshift(bb(3,:),-1),7))' ;
    can.EFP_CC_Info_Status_MS.units.CC_RrCtrlBtn_St     =  'SED';
    can.EFP_CC_Info_Status_MS.CC_RrCtrlBtn_St     =    (bitget(bb(3,:),5))';
    can.EFP_CC_Info_Status_MS.units.Rear_Auto_Button_State     =  'SED';
    can.EFP_CC_Info_Status_MS.Rear_Auto_Button_State     =    (bitget(bb(3,:),6))';
    can.EFP_CC_Info_Status_MS.units.CC_FrPowerSBtn_St     =  'SED';
    can.EFP_CC_Info_Status_MS.CC_FrPowerSBtn_St     =    (bitget(bb(2,:),7))';
    can.EFP_CC_Info_Status_MS.units.CC_FrDefrostSBtn_St     =  'SED';
    can.EFP_CC_Info_Status_MS.CC_FrDefrostSBtn_St     =    (bitget(bb(2,:),8))';
    can.EFP_CC_Info_Status_MS.units.Front_AUTO_Soft_Btn_Stt     =  'SED';
    can.EFP_CC_Info_Status_MS.Front_AUTO_Soft_Btn_Stt     =    (bitget(bb(2,:),6))';
    can.EFP_CC_Info_Status_MS.units.Front_AUTO_MODE_State     =  'SED';
    can.EFP_CC_Info_Status_MS.Front_AUTO_MODE_State     =    (bitget(bb(1,:),2))';
    can.EFP_CC_Info_Status_MS.units.Front_AUTO_FAN_State     =  'SED';
    can.EFP_CC_Info_Status_MS.Front_AUTO_FAN_State     =    (bitget(bb(1,:),1))';
    can.EFP_CC_Info_Status_MS.units.Dual_Button_State     =  'SED';
    can.EFP_CC_Info_Status_MS.Dual_Button_State     =    (bitget(bb(2,:),5))';
    can.EFP_CC_Info_Status_MS.units.CC_BarPnlSBtn_St     =  'SED';
    can.EFP_CC_Info_Status_MS.CC_BarPnlSBtn_St     =    (bitget(bb(1,:),6))';
    can.EFP_CC_Info_Status_MS.units.CC_BarPnFlrSBtn_St     =  'SED';
    can.EFP_CC_Info_Status_MS.CC_BarPnFlrSBtn_St     =    (bitget(bb(1,:),5))';
    can.EFP_CC_Info_Status_MS.units.CC_BarFlrWsSBtn_St     =  'SED';
    can.EFP_CC_Info_Status_MS.CC_BarFlrWsSBtn_St     =    (bitget(bb(1,:),3))';
    can.EFP_CC_Info_Status_MS.units.CC_BarDrvFlrSBtn_St     =  'SED';
    can.EFP_CC_Info_Status_MS.CC_BarDrvFlrSBtn_St     =    (bitget(bb(1,:),4))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: HSWheel_CC_Info_Stat
% Hex ID:35D
% Last edited by: selwart
% Date:26-Apr-2011
MSG_35D = hex2dec('35D');

ix=find(msg == MSG_35D);          % Find all message 0x35D's
if ~isempty(ix)                   % If there are any ...
    can.HSWheel_CC_Info_Stat = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x35D messages
    can.HSWheel_CC_Info_Stat.nsamples      = length(ix);
    can.HSWheel_CC_Info_Stat.ctime         = cantime(ix);

    can.HSWheel_CC_Info_Stat.units.HtdStrWhl_SftBtt_State     =  'SED';
    can.HSWheel_CC_Info_Stat.HtdStrWhl_SftBtt_State     =    (bitand(bb(8,:),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Climate_Control_Data_2
% Hex ID:35E
% Last edited by: selwart
% Date:26-Apr-2011
MSG_35E = hex2dec('35E');

ix=find(msg == MSG_35E);          % Find all message 0x35E's
if ~isempty(ix)                   % If there are any ...
    can.Climate_Control_Data_2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x35E messages
    can.Climate_Control_Data_2.nsamples      = length(ix);
    can.Climate_Control_Data_2.ctime         = cantime(ix);

    can.Climate_Control_Data_2.units.HvacRec_Pc_Est     =  'Percent';
    can.Climate_Control_Data_2.HvacRec_Pc_Est     =    (bitand(bitshift(bb(4,:),-1),127))' ;
    can.Climate_Control_Data_2.units.HvacEngIdleInc_B_Rq     =  'SED';
    can.Climate_Control_Data_2.HvacEngIdleInc_B_Rq     =    (bitget(bb(4,:),1))';
    can.Climate_Control_Data_2.units.HvacAir_Flw_Est     =  'liter/second';
    can.Climate_Control_Data_2.HvacAir_Flw_Est     =    5.000000e-001*(2^3 * bitand(bb(2,:),63) + bitand(bitshift(bb(3,:),-5),7))' ;
    can.Climate_Control_Data_2.units.AmbTempImpr     =  'degreesC';
    can.Climate_Control_Data_2.AmbTempImpr     =    2.500000e-001*(2^2 * bb(1,:) + bitand(bitshift(bb(2,:),-6),3))' +-128.00;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Vehicle_Access_RqstM
% Hex ID:384
% Last edited by: selwart
% Date:26-Apr-2011
MSG_384 = hex2dec('384');

ix=find(msg == MSG_384);          % Find all message 0x384's
if ~isempty(ix)                   % If there are any ...
    can.Vehicle_Access_RqstM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x384 messages
    can.Vehicle_Access_RqstM.nsamples      = length(ix);
    can.Vehicle_Access_RqstM.ctime         = cantime(ix);

    can.Vehicle_Access_RqstM.units.PE_AssocConfirm_D_Actl     =  'SED';
    can.Vehicle_Access_RqstM.PE_AssocConfirm_D_Actl     =    (bitand(bitshift(bb(8,:),-5),7))' ;
    can.Vehicle_Access_RqstM.units.DrTgateOpen_D_RqRfa     =  'SED';
    can.Vehicle_Access_RqstM.DrTgateOpen_D_RqRfa     =    (bitand(bitshift(bb(7,:),-2),3))' ;
    can.Vehicle_Access_RqstM.units.PE_Decklid_Inhibit_Rqst     =  'SED';
    can.Vehicle_Access_RqstM.PE_Decklid_Inhibit_Rqst     =    (bitand(bitshift(bb(7,:),-4),3))' ;
    can.Vehicle_Access_RqstM.units.PK_Program     =  'SED';
    can.Vehicle_Access_RqstM.PK_Program     =    (bitand(bitshift(bb(6,:),-4),3))' ;
    can.Vehicle_Access_RqstM.units.PE_Packet_Cnt     =  'Counts';
    can.Vehicle_Access_RqstM.PE_Packet_Cnt     =    (bb(4,:))' ;
    can.Vehicle_Access_RqstM.units.PE_Control_Status     =  'SED';
    can.Vehicle_Access_RqstM.PE_Control_Status     =    (bitand(bb(5,:),3))' ;
    can.Vehicle_Access_RqstM.units.PE_Control_Code     =  'Unitless';
    can.Vehicle_Access_RqstM.PE_Control_Code     =    (bb(1,:))' ;
    can.Vehicle_Access_RqstM.units.PE_Perimeter_Lighting_Stat     =  'SED';
    can.Vehicle_Access_RqstM.PE_Perimeter_Lighting_Stat     =    (bitand(bitshift(bb(2,:),-6),3))' ;
    can.Vehicle_Access_RqstM.units.PE_RKE_Flash_Rqst     =  'SED';
    can.Vehicle_Access_RqstM.PE_RKE_Flash_Rqst     =    (bitget(bb(5,:),3))';
    can.Vehicle_Access_RqstM.units.PE_Lock_EvNum     =  'Counts';
    can.Vehicle_Access_RqstM.PE_Lock_EvNum     =    (bb(3,:))' ;
    can.Vehicle_Access_RqstM.units.PE_Lock_Requestor     =  'SED';
    can.Vehicle_Access_RqstM.PE_Lock_Requestor     =    (bitand(bitshift(bb(5,:),-3),31))' ;
    can.Vehicle_Access_RqstM.units.PE_Lock_Sub_Id     =  'SED';
    can.Vehicle_Access_RqstM.PE_Lock_Sub_Id     =    (bitand(bb(2,:),15))' ;
    can.Vehicle_Access_RqstM.units.PE_Lock_Status     =  'SED';
    can.Vehicle_Access_RqstM.PE_Lock_Status     =    (bitand(bitshift(bb(2,:),-4),3))' ;
    can.Vehicle_Access_RqstM.units.PE_DrvCfg_Horn_Rqst     =  'SED';
    can.Vehicle_Access_RqstM.PE_DrvCfg_Horn_Rqst     =    (bitand(bitshift(bb(6,:),-6),3))' ;
    can.Vehicle_Access_RqstM.units.PEBackupSlot_Stats     =  'SED';
    can.Vehicle_Access_RqstM.PEBackupSlot_Stats     =    (bitand(bitshift(bb(7,:),-6),3))' ;
    can.Vehicle_Access_RqstM.units.PE_Fob_Number     =  'Number';
    can.Vehicle_Access_RqstM.PE_Fob_Number     =    (bitand(bb(6,:),15))' ;
    can.Vehicle_Access_RqstM.units.PE_Keypad_LiftGlass_Rqst     =  'SED';
    can.Vehicle_Access_RqstM.PE_Keypad_LiftGlass_Rqst     =    (bitget(bb(7,:),2))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Vehicle_Lock_Status
% Hex ID:385
% Last edited by: selwart
% Date:26-Apr-2011
MSG_385 = hex2dec('385');

ix=find(msg == MSG_385);          % Find all message 0x385's
if ~isempty(ix)                   % If there are any ...
    can.Vehicle_Lock_Status = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x385 messages
    can.Vehicle_Lock_Status.nsamples      = length(ix);
    can.Vehicle_Lock_Status.ctime         = cantime(ix);

    can.Vehicle_Lock_Status.units.CntrStkKeycodeActl     =  'Undefined';
    can.Vehicle_Lock_Status.CntrStkKeycodeActl     =    (2^8 * bb(7,:) + bb(8,:))' ;
    can.Vehicle_Lock_Status.units.CntrStk_D_RqAssoc_UB     =  'SED';
    can.Vehicle_Lock_Status.CntrStk_D_RqAssoc_UB     =    (bitget(bb(6,:),1))';
    can.Vehicle_Lock_Status.units.CntrStk_D_RqAssoc     =  'SED';
    can.Vehicle_Lock_Status.CntrStk_D_RqAssoc     =    (bitand(bitshift(bb(6,:),-1),7))' ;
    can.Vehicle_Lock_Status.units.KeyTypeChngMykey_D_Rq     =  'SED';
    can.Vehicle_Lock_Status.KeyTypeChngMykey_D_Rq     =    (bitand(bitshift(bb(6,:),-4),3))' ;
    can.Vehicle_Lock_Status.units.Veh_Lock_Sub_Id     =  'SED';
    can.Vehicle_Lock_Status.Veh_Lock_Sub_Id     =    (bitand(bitshift(bb(3,:),-2),15))' ;
    can.Vehicle_Lock_Status.units.Veh_Lock_Status     =  'SED';
    can.Vehicle_Lock_Status.Veh_Lock_Status     =    (bitand(bb(3,:),3))' ;
    can.Vehicle_Lock_Status.units.Veh_Lock_Requestor     =  'SED';
    can.Vehicle_Lock_Status.Veh_Lock_Requestor     =    (bitand(bitshift(bb(5,:),-3),31))' ;
    can.Vehicle_Lock_Status.units.Veh_Lock_EvNum     =  'Counts';
    can.Vehicle_Lock_Status.Veh_Lock_EvNum     =    (bb(4,:))' ;
    can.Vehicle_Lock_Status.units.Trim_Switch_Status_Count     =  'Counts';
    can.Vehicle_Lock_Status.Trim_Switch_Status_Count     =    (bb(2,:))' ;
    can.Vehicle_Lock_Status.units.Trim_Switch_Status     =  'SED';
    can.Vehicle_Lock_Status.Trim_Switch_Status     =    (bitand(bitshift(bb(3,:),-6),3))' ;
    can.Vehicle_Lock_Status.units.DF_KeyCyl_Switch_Stat_Cnt     =  'Counts';
    can.Vehicle_Lock_Status.DF_KeyCyl_Switch_Stat_Cnt     =    (bb(1,:))' ;
    can.Vehicle_Lock_Status.units.DF_KeyCyl_Switch_Stat     =  'SED';
    can.Vehicle_Lock_Status.DF_KeyCyl_Switch_Stat     =    (bitand(bitshift(bb(5,:),-1),3))' ;
    can.Vehicle_Lock_Status.units.Perimeter_Alarm_Status     =  'SED';
    can.Vehicle_Lock_Status.Perimeter_Alarm_Status     =    (bitand(bitshift(bb(6,:),-6),3))' ;
    can.Vehicle_Lock_Status.units.KeyTypeChngMykey_D_Rq_UB     =  'SED';
    can.Vehicle_Lock_Status.KeyTypeChngMykey_D_Rq_UB     =    (bitget(bb(5,:),1))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Remote_Start
% Hex ID:386
% Last edited by: selwart
% Date:26-Apr-2011
MSG_386 = hex2dec('386');

ix=find(msg == MSG_386);          % Find all message 0x386's
if ~isempty(ix)                   % If there are any ...
    can.Remote_Start = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x386 messages
    can.Remote_Start.nsamples      = length(ix);
    can.Remote_Start.ctime         = cantime(ix);

    can.Remote_Start.units.Remote_Start_Req     =  'SED';
    can.Remote_Start.Remote_Start_Req     =    (bitand(bitshift(bb(1,:),-6),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: CC_FCIM_Update
% Hex ID:387
% Last edited by: selwart
% Date:26-Apr-2011
MSG_387 = hex2dec('387');

ix=find(msg == MSG_387);          % Find all message 0x387's
if ~isempty(ix)                   % If there are any ...
    can.CC_FCIM_Update = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x387 messages
    can.CC_FCIM_Update.nsamples      = length(ix);
    can.CC_FCIM_Update.ctime         = cantime(ix);

    can.CC_FCIM_Update.units.Rr_Temp_M_H_Heat_Ind     =  'SED';
    can.CC_FCIM_Update.Rr_Temp_M_H_Heat_Ind     =    (bitget(bb(4,:),7))';
    can.CC_FCIM_Update.units.Rr_Fan_7_Indicator     =  'SED';
    can.CC_FCIM_Update.Rr_Fan_7_Indicator     =    (bitget(bb(6,:),6))';
    can.CC_FCIM_Update.units.Rr_Fan_6_Indicator     =  'SED';
    can.CC_FCIM_Update.Rr_Fan_6_Indicator     =    (bitget(bb(6,:),7))';
    can.CC_FCIM_Update.units.Rr_Fan_5_Indicator     =  'SED';
    can.CC_FCIM_Update.Rr_Fan_5_Indicator     =    (bitget(bb(6,:),8))';
    can.CC_FCIM_Update.units.Rr_Fan_4_Indicator     =  'SED';
    can.CC_FCIM_Update.Rr_Fan_4_Indicator     =    (bitget(bb(5,:),1))';
    can.CC_FCIM_Update.units.Rr_Fan_3_Indicator     =  'SED';
    can.CC_FCIM_Update.Rr_Fan_3_Indicator     =    (bitget(bb(5,:),2))';
    can.CC_FCIM_Update.units.Rr_Fan_2_Indicator     =  'SED';
    can.CC_FCIM_Update.Rr_Fan_2_Indicator     =    (bitget(bb(5,:),3))';
    can.CC_FCIM_Update.units.Rr_Fan_Low_Indicator     =  'SED';
    can.CC_FCIM_Update.Rr_Fan_Low_Indicator     =    (bitget(bb(5,:),4))';
    can.CC_FCIM_Update.units.AC_Indicator     =  'SED';
    can.CC_FCIM_Update.AC_Indicator     =    (bitget(bb(5,:),5))';
    can.CC_FCIM_Update.units.Floor_Mode_Indicator     =  'SED';
    can.CC_FCIM_Update.Floor_Mode_Indicator     =    (bitget(bb(5,:),6))';
    can.CC_FCIM_Update.units.Panel_Mode_Indicator     =  'SED';
    can.CC_FCIM_Update.Panel_Mode_Indicator     =    (bitget(bb(5,:),7))';
    can.CC_FCIM_Update.units.Windshield_Mode_Indicator     =  'SED';
    can.CC_FCIM_Update.Windshield_Mode_Indicator     =    (bitget(bb(5,:),8))';
    can.CC_FCIM_Update.units.Rr_Temp_High_Cool_Ind     =  'SED';
    can.CC_FCIM_Update.Rr_Temp_High_Cool_Ind     =    (bitget(bb(4,:),1))';
    can.CC_FCIM_Update.units.Rr_Temp_M_H_Cool_Ind     =  'SED';
    can.CC_FCIM_Update.Rr_Temp_M_H_Cool_Ind     =    (bitget(bb(4,:),2))';
    can.CC_FCIM_Update.units.Rr_Temp_M_L_Cool_Ind     =  'SED';
    can.CC_FCIM_Update.Rr_Temp_M_L_Cool_Ind     =    (bitget(bb(4,:),3))';
    can.CC_FCIM_Update.units.Rr_Temp_Low_Cool_Ind     =  'SED';
    can.CC_FCIM_Update.Rr_Temp_Low_Cool_Ind     =    (bitget(bb(4,:),4))';
    can.CC_FCIM_Update.units.Rr_Temp_Center_Ind_On     =  'SED';
    can.CC_FCIM_Update.Rr_Temp_Center_Ind_On     =    (bitget(bb(4,:),5))';
    can.CC_FCIM_Update.units.Rr_Temp_High_Heat_Ind     =  'SED';
    can.CC_FCIM_Update.Rr_Temp_High_Heat_Ind     =    (bitget(bb(4,:),6))';
    can.CC_FCIM_Update.units.Rr_Temp_M_L_Heat_Ind     =  'SED';
    can.CC_FCIM_Update.Rr_Temp_M_L_Heat_Ind     =    (bitget(bb(4,:),8))';
    can.CC_FCIM_Update.units.Rr_Temp_Low_Heat_Ind     =  'SED';
    can.CC_FCIM_Update.Rr_Temp_Low_Heat_Ind     =    (bitget(bb(3,:),1))';
    can.CC_FCIM_Update.units.Rear_Control_Indicator     =  'SED';
    can.CC_FCIM_Update.Rear_Control_Indicator     =    (bitget(bb(3,:),2))';
    can.CC_FCIM_Update.units.Auto_Indicator_Rear     =  'SED';
    can.CC_FCIM_Update.Auto_Indicator_Rear     =    (bitget(bb(3,:),3))';
    can.CC_FCIM_Update.units.Power_Indicator_Rear     =  'SED';
    can.CC_FCIM_Update.Power_Indicator_Rear     =    (bitget(bb(3,:),4))';
    can.CC_FCIM_Update.units.Rt_Side_U_R_Seat_Cool_Ind     =  'SED';
    can.CC_FCIM_Update.Rt_Side_U_R_Seat_Cool_Ind     =    (bitget(bb(3,:),5))';
    can.CC_FCIM_Update.units.Rt_Side_M_Seat_Cool_Ind     =  'SED';
    can.CC_FCIM_Update.Rt_Side_M_Seat_Cool_Ind     =    (bitget(bb(3,:),6))';
    can.CC_FCIM_Update.units.Rt_Side_L_L_Seat_Cool_Ind     =  'SED';
    can.CC_FCIM_Update.Rt_Side_L_L_Seat_Cool_Ind     =    (bitget(bb(3,:),7))';
    can.CC_FCIM_Update.units.Rt_Side_U_R_Seat_Heat_Ind     =  'SED';
    can.CC_FCIM_Update.Rt_Side_U_R_Seat_Heat_Ind     =    (bitget(bb(3,:),8))';
    can.CC_FCIM_Update.units.Rt_Side_M_Seat_Heat_Ind     =  'SED';
    can.CC_FCIM_Update.Rt_Side_M_Seat_Heat_Ind     =    (bitget(bb(2,:),1))';
    can.CC_FCIM_Update.units.Rt_Side_L_L_Seat_Heat_Ind     =  'SED';
    can.CC_FCIM_Update.Rt_Side_L_L_Seat_Heat_Ind     =    (bitget(bb(2,:),2))';
    can.CC_FCIM_Update.units.Lft_Side_U_R_Seat_Cool_Ind     =  'SED';
    can.CC_FCIM_Update.Lft_Side_U_R_Seat_Cool_Ind     =    (bitget(bb(2,:),3))';
    can.CC_FCIM_Update.units.Lft_Side_M_Seat_Cool_Ind     =  'SED';
    can.CC_FCIM_Update.Lft_Side_M_Seat_Cool_Ind     =    (bitget(bb(2,:),4))';
    can.CC_FCIM_Update.units.Lft_Side_L_L_Seat_Cool_Ind     =  'SED';
    can.CC_FCIM_Update.Lft_Side_L_L_Seat_Cool_Ind     =    (bitget(bb(2,:),5))';
    can.CC_FCIM_Update.units.Lft_Side_U_R_Seat_Heat_Ind     =  'SED';
    can.CC_FCIM_Update.Lft_Side_U_R_Seat_Heat_Ind     =    (bitget(bb(2,:),6))';
    can.CC_FCIM_Update.units.Lft_Side_M_Seat_Heat_Ind     =  'SED';
    can.CC_FCIM_Update.Lft_Side_M_Seat_Heat_Ind     =    (bitget(bb(2,:),7))';
    can.CC_FCIM_Update.units.Lft_Side_L_L_Seat_Heat_Ind     =  'SED';
    can.CC_FCIM_Update.Lft_Side_L_L_Seat_Heat_Ind     =    (bitget(bb(2,:),8))';
    can.CC_FCIM_Update.units.Single_Mode_Indicator     =  'SED';
    can.CC_FCIM_Update.Single_Mode_Indicator     =    (bitget(bb(1,:),1))';
    can.CC_FCIM_Update.units.Auto_Indicator     =  'SED';
    can.CC_FCIM_Update.Auto_Indicator     =    (bitget(bb(1,:),2))';
    can.CC_FCIM_Update.units.Recirc_Indicator     =  'SED';
    can.CC_FCIM_Update.Recirc_Indicator     =    (bitget(bb(1,:),3))';
    can.CC_FCIM_Update.units.Max_AC_Econ_Indicator     =  'SED';
    can.CC_FCIM_Update.Max_AC_Econ_Indicator     =    (bitget(bb(1,:),4))';
    can.CC_FCIM_Update.units.Rear_DefHtd_Mirr_Indicator     =  'SED';
    can.CC_FCIM_Update.Rear_DefHtd_Mirr_Indicator     =    (bitget(bb(1,:),5))';
    can.CC_FCIM_Update.units.Defrost_Indicator     =  'SED';
    can.CC_FCIM_Update.Defrost_Indicator     =    (bitget(bb(1,:),6))';
    can.CC_FCIM_Update.units.Rt_Temp_Dual_Indicator     =  'SED';
    can.CC_FCIM_Update.Rt_Temp_Dual_Indicator     =    (bitget(bb(1,:),7))';
    can.CC_FCIM_Update.units.Power_Indicator_Front     =  'SED';
    can.CC_FCIM_Update.Power_Indicator_Front     =    (bitget(bb(1,:),8))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: CC_NavChassis_Info_Status
% Hex ID:388
% Last edited by: selwart
% Date:26-Apr-2011
MSG_388 = hex2dec('388');

ix=find(msg == MSG_388);          % Find all message 0x388's
if ~isempty(ix)                   % If there are any ...
    can.CC_NavChassis_Info_Status = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x388 messages
    can.CC_NavChassis_Info_Status.nsamples      = length(ix);
    can.CC_NavChassis_Info_Status.ctime         = cantime(ix);

    can.CC_NavChassis_Info_Status.units.Rear_Defrost_Soft_Bttn_Stt     =  'SED';
    can.CC_NavChassis_Info_Status.Rear_Defrost_Soft_Bttn_Stt     =    (bitget(bb(7,:),5))';
    can.CC_NavChassis_Info_Status.units.Recirc_Soft_Button_State     =  'SED';
    can.CC_NavChassis_Info_Status.Recirc_Soft_Button_State     =    (bitand(bitshift(bb(7,:),-5),3))' ;
    can.CC_NavChassis_Info_Status.units.Max_AC_Soft_Button_State     =  'SED';
    can.CC_NavChassis_Info_Status.Max_AC_Soft_Button_State     =    (bitget(bb(7,:),8))';
    can.CC_NavChassis_Info_Status.units.Front_AUTO_Soft_Btn_Stt     =  'SED';
    can.CC_NavChassis_Info_Status.Front_AUTO_Soft_Btn_Stt     =    (bitget(bb(4,:),1))';
    can.CC_NavChassis_Info_Status.units.Front_Power_Soft_Btn_State     =  'SED';
    can.CC_NavChassis_Info_Status.Front_Power_Soft_Btn_State     =    (bitget(bb(4,:),2))';
    can.CC_NavChassis_Info_Status.units.Front_Defrost_Soft_Btn_Stt     =  'SED';
    can.CC_NavChassis_Info_Status.Front_Defrost_Soft_Btn_Stt     =    (bitget(bb(4,:),3))';
    can.CC_NavChassis_Info_Status.units.Rear_Power_Button_State     =  'SED';
    can.CC_NavChassis_Info_Status.Rear_Power_Button_State     =    (bitget(bb(5,:),2))';
    can.CC_NavChassis_Info_Status.units.Front_AUTO_FAN_Indicator     =  'SED';
    can.CC_NavChassis_Info_Status.Front_AUTO_FAN_Indicator     =    (bitget(bb(4,:),4))';
    can.CC_NavChassis_Info_Status.units.Front_AUTO_MODE_Indicator     =  'SED';
    can.CC_NavChassis_Info_Status.Front_AUTO_MODE_Indicator     =    (bitget(bb(4,:),5))';
    can.CC_NavChassis_Info_Status.units.CC_Bar_Rear_Set_Temp_Display     =  'SED';
    can.CC_NavChassis_Info_Status.CC_Bar_Rear_Set_Temp_Display     =    (bitget(bb(3,:),2))';
    can.CC_NavChassis_Info_Status.units.CC_Bar_Rear_Set_Temp_Units     =  'SED';
    can.CC_NavChassis_Info_Status.CC_Bar_Rear_Set_Temp_Units     =    (bitand(bitshift(bb(3,:),-2),3))' ;
    can.CC_NavChassis_Info_Status.units.Rear_Heat_Bars_Displayed     =  'Bars_On';
    can.CC_NavChassis_Info_Status.Rear_Heat_Bars_Displayed     =    (bitand(bb(6,:),7))' ;
    can.CC_NavChassis_Info_Status.units.CC_Bar_Rear_Set_Temp_Dig3     =  'SED';
    can.CC_NavChassis_Info_Status.CC_Bar_Rear_Set_Temp_Dig3     =    (bitand(bitshift(bb(3,:),-4),3))' ;
    can.CC_NavChassis_Info_Status.units.CC_Bar_Rear_Set_Temp_Dig2     =  'ASCII';
    can.CC_NavChassis_Info_Status.CC_Bar_Rear_Set_Temp_Dig2     =    (bb(2,:))' ;
    can.CC_NavChassis_Info_Status.units.CC_Bar_Rear_Set_Temp_Dig1     =  'ASCII';
    can.CC_NavChassis_Info_Status.CC_Bar_Rear_Set_Temp_Dig1     =    (bb(1,:))' ;
    can.CC_NavChassis_Info_Status.units.Rear_Neutral_Bar_Displayed     =  'SED';
    can.CC_NavChassis_Info_Status.Rear_Neutral_Bar_Displayed     =    (bitget(bb(6,:),4))';
    can.CC_NavChassis_Info_Status.units.Rear_Fan_Bars_Displayed     =  'SED';
    can.CC_NavChassis_Info_Status.Rear_Fan_Bars_Displayed     =    (bitand(bitshift(bb(6,:),-4),7))' ;
    can.CC_NavChassis_Info_Status.units.Rear_Control_Button_State     =  'SED';
    can.CC_NavChassis_Info_Status.Rear_Control_Button_State     =    (bitget(bb(6,:),8))';
    can.CC_NavChassis_Info_Status.units.Rear_Auto_Button_State     =  'SED';
    can.CC_NavChassis_Info_Status.Rear_Auto_Button_State     =    (bitget(bb(5,:),1))';
    can.CC_NavChassis_Info_Status.units.AC_Sft_Button_State     =  'SED';
    can.CC_NavChassis_Info_Status.AC_Sft_Button_State     =    (bitand(bitshift(bb(5,:),-2),3))' ;
    can.CC_NavChassis_Info_Status.units.Rear_Cool_Bars_Displayed     =  'Bars_On';
    can.CC_NavChassis_Info_Status.Rear_Cool_Bars_Displayed     =    (bitand(bitshift(bb(5,:),-4),7))' ;
    can.CC_NavChassis_Info_Status.units.Dual_Button_State     =  'SED';
    can.CC_NavChassis_Info_Status.Dual_Button_State     =    (bitget(bb(5,:),8))';
    can.CC_NavChassis_Info_Status.units.CC_Bar_Sft_Btn_FlrWs_State     =  'SED';
    can.CC_NavChassis_Info_Status.CC_Bar_Sft_Btn_FlrWs_State     =    (bitget(bb(4,:),6))';
    can.CC_NavChassis_Info_Status.units.CC_Bar_Sft_Btn_Floor_State     =  'SED';
    can.CC_NavChassis_Info_Status.CC_Bar_Sft_Btn_Floor_State     =    (bitget(bb(4,:),7))';
    can.CC_NavChassis_Info_Status.units.CC_Bar_Sft_Btn_PnFlr_State     =  'SED';
    can.CC_NavChassis_Info_Status.CC_Bar_Sft_Btn_PnFlr_State     =    (bitget(bb(4,:),8))';
    can.CC_NavChassis_Info_Status.units.CC_Bar_Sft_Btn_Pnl_State     =  'SED';
    can.CC_NavChassis_Info_Status.CC_Bar_Sft_Btn_Pnl_State     =    (bitget(bb(3,:),1))';
    can.CC_NavChassis_Info_Status.units.Rear_Sft_Control_Status     =  'SED';
    can.CC_NavChassis_Info_Status.Rear_Sft_Control_Status     =    (bitand(bitshift(bb(3,:),-6),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: FCIM_CC_Status
% Hex ID:398
% Last edited by: selwart
% Date:26-Apr-2011
MSG_398 = hex2dec('398');

ix=find(msg == MSG_398);          % Find all message 0x398's
if ~isempty(ix)                   % If there are any ...
    can.FCIM_CC_Status = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x398 messages
    can.FCIM_CC_Status.nsamples      = length(ix);
    can.FCIM_CC_Status.ctime         = cantime(ix);

    can.FCIM_CC_Status.units.Manual_Temp_Knob_Pos     =  'Degrees CW';
    can.FCIM_CC_Status.Manual_Temp_Knob_Pos     =    (2^8 * bitand(bb(2,:),1) + bb(3,:))' ;
    can.FCIM_CC_Status.units.Manual_Blower_Knob_Pos     =  'Degrees CW';
    can.FCIM_CC_Status.Manual_Blower_Knob_Pos     =    (2^8 * bitand(bb(4,:),1) + bb(5,:))' ;
    can.FCIM_CC_Status.units.Rear_Blower_IncreaseButton     =  'SED';
    can.FCIM_CC_Status.Rear_Blower_IncreaseButton     =    (bitget(bb(6,:),1))';
    can.FCIM_CC_Status.units.Rear_Blower_DecreaseButton     =  'SED';
    can.FCIM_CC_Status.Rear_Blower_DecreaseButton     =    (bitget(bb(7,:),8))';
    can.FCIM_CC_Status.units.Rear_Temp_Decrease_Button     =  'SED';
    can.FCIM_CC_Status.Rear_Temp_Decrease_Button     =    (bitget(bb(6,:),2))';
    can.FCIM_CC_Status.units.Rear_Temp_Increase_Button     =  'SED';
    can.FCIM_CC_Status.Rear_Temp_Increase_Button     =    (bitget(bb(6,:),3))';
    can.FCIM_CC_Status.units.Rear_Control_Button     =  'SED';
    can.FCIM_CC_Status.Rear_Control_Button     =    (bitget(bb(6,:),4))';
    can.FCIM_CC_Status.units.Auto_Button_Rear     =  'SED';
    can.FCIM_CC_Status.Auto_Button_Rear     =    (bitget(bb(6,:),5))';
    can.FCIM_CC_Status.units.Power_Button_Rear     =  'SED';
    can.FCIM_CC_Status.Power_Button_Rear     =    (bitget(bb(6,:),6))';
    can.FCIM_CC_Status.units.Rt_Side_Heated_Seat_Btn     =  'SED';
    can.FCIM_CC_Status.Rt_Side_Heated_Seat_Btn     =    (bitget(bb(6,:),8))';
    can.FCIM_CC_Status.units.Rt_Side_Cooled_Seat_Btn     =  'SED';
    can.FCIM_CC_Status.Rt_Side_Cooled_Seat_Btn     =    (bitget(bb(6,:),7))';
    can.FCIM_CC_Status.units.Lft_Side_Cooled_Seat_Btn     =  'SED';
    can.FCIM_CC_Status.Lft_Side_Cooled_Seat_Btn     =    (bitget(bb(2,:),2))';
    can.FCIM_CC_Status.units.Lft_Side_Heated_Seat_Btn     =  'SED';
    can.FCIM_CC_Status.Lft_Side_Heated_Seat_Btn     =    (bitget(bb(2,:),3))';
    can.FCIM_CC_Status.units.Blower_Decrease_Button     =  'SED';
    can.FCIM_CC_Status.Blower_Decrease_Button     =    (bitget(bb(4,:),2))';
    can.FCIM_CC_Status.units.Blower_Increase_Button     =  'SED';
    can.FCIM_CC_Status.Blower_Increase_Button     =    (bitget(bb(4,:),3))';
    can.FCIM_CC_Status.units.Floor_Defrost_Mode_Button     =  'SED';
    can.FCIM_CC_Status.Floor_Defrost_Mode_Button     =    (bitget(bb(4,:),4))';
    can.FCIM_CC_Status.units.Floor_Mode_Button     =  'SED';
    can.FCIM_CC_Status.Floor_Mode_Button     =    (bitget(bb(4,:),5))';
    can.FCIM_CC_Status.units.Panel_Floor_Mode_Button     =  'SED';
    can.FCIM_CC_Status.Panel_Floor_Mode_Button     =    (bitget(bb(4,:),6))';
    can.FCIM_CC_Status.units.Panel_Mode_Button     =  'SED';
    can.FCIM_CC_Status.Panel_Mode_Button     =    (bitget(bb(4,:),7))';
    can.FCIM_CC_Status.units.Mode_Change_Button     =  'SED';
    can.FCIM_CC_Status.Mode_Change_Button     =    (bitget(bb(4,:),8))';
    can.FCIM_CC_Status.units.Rt_Side_Temp_Increase     =  'SED';
    can.FCIM_CC_Status.Rt_Side_Temp_Increase     =    (bitget(bb(2,:),5))';
    can.FCIM_CC_Status.units.Rt_Side_Temp_Decrease     =  'SED';
    can.FCIM_CC_Status.Rt_Side_Temp_Decrease     =    (bitget(bb(2,:),4))';
    can.FCIM_CC_Status.units.Lft_Side_Temp_Decrease     =  'SED';
    can.FCIM_CC_Status.Lft_Side_Temp_Decrease     =    (bitget(bb(2,:),6))';
    can.FCIM_CC_Status.units.Lft_Side_Temp_Increase     =  'SED';
    can.FCIM_CC_Status.Lft_Side_Temp_Increase     =    (bitget(bb(2,:),7))';
    can.FCIM_CC_Status.units.Auto_Button_Front     =  'SED';
    can.FCIM_CC_Status.Auto_Button_Front     =    (bitget(bb(2,:),8))';
    can.FCIM_CC_Status.units.Recirc_Button     =  'SED';
    can.FCIM_CC_Status.Recirc_Button     =    (bitget(bb(1,:),1))';
    can.FCIM_CC_Status.units.Max_AC_Econ_Button     =  'SED';
    can.FCIM_CC_Status.Max_AC_Econ_Button     =    (bitget(bb(1,:),2))';
    can.FCIM_CC_Status.units.AC_Button     =  'SED';
    can.FCIM_CC_Status.AC_Button     =    (bitget(bb(1,:),3))';
    can.FCIM_CC_Status.units.Rr_Def_Htd_Mirr_Button     =  'SED';
    can.FCIM_CC_Status.Rr_Def_Htd_Mirr_Button     =    (bitget(bb(1,:),4))';
    can.FCIM_CC_Status.units.Front_Defrost_Button     =  'SED';
    can.FCIM_CC_Status.Front_Defrost_Button     =    (bitget(bb(1,:),5))';
    can.FCIM_CC_Status.units.Rt_Side_Temp_Dual_Button     =  'SED';
    can.FCIM_CC_Status.Rt_Side_Temp_Dual_Button     =    (bitget(bb(1,:),6))';
    can.FCIM_CC_Status.units.Power_Button_Front     =  'SED';
    can.FCIM_CC_Status.Power_Button_Front     =    (bitget(bb(1,:),7))';
    can.FCIM_CC_Status.units.Climate_Button     =  'SED';
    can.FCIM_CC_Status.Climate_Button     =    (bitget(bb(1,:),8))';
    can.FCIM_CC_Status.units.CcdMde_D_Rq     =  'SED';
    can.FCIM_CC_Status.CcdMde_D_Rq     =    (bitand(bitshift(bb(7,:),-5),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Nav_CC_Status
% Hex ID:399
% Last edited by: selwart
% Date:26-Apr-2011
MSG_399 = hex2dec('399');

ix=find(msg == MSG_399);          % Find all message 0x399's
if ~isempty(ix)                   % If there are any ...
    can.Nav_CC_Status = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x399 messages
    can.Nav_CC_Status.nsamples      = length(ix);
    can.Nav_CC_Status.ctime         = cantime(ix);

    can.Nav_CC_Status.units.Front_System_Button_Status     =  'SED';
    can.Nav_CC_Status.Front_System_Button_Status     =    (bitand(bitshift(bb(1,:),-3),31))' ;
    can.Nav_CC_Status.units.Rear_Temp_Button_Status     =  'SED';
    can.Nav_CC_Status.Rear_Temp_Button_Status     =    (bitand(bitshift(bb(3,:),-6),3))' ;
    can.Nav_CC_Status.units.Rear_Man_Temp_Bar_Status     =  'SED';
    can.Nav_CC_Status.Rear_Man_Temp_Bar_Status     =    (bitand(bb(2,:),15))' ;
    can.Nav_CC_Status.units.Rear_Fan_Button_Status     =  'SED';
    can.Nav_CC_Status.Rear_Fan_Button_Status     =    (bitand(bitshift(bb(2,:),-4),3))' ;
    can.Nav_CC_Status.units.Rear_Man_ATC_Button_Status     =  'SED';
    can.Nav_CC_Status.Rear_Man_ATC_Button_Status     =    (bitand(bitshift(bb(2,:),-6),3))' ;
    can.Nav_CC_Status.units.Rear_Blower_Bar_Status     =  '# of Bars';
    can.Nav_CC_Status.Rear_Blower_Bar_Status     =    (bitand(bb(1,:),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: VoiceRec_CC_Request
% Hex ID:39A
% Last edited by: selwart
% Date:26-Apr-2011
MSG_39A = hex2dec('39A');

ix=find(msg == MSG_39A);          % Find all message 0x39A's
if ~isempty(ix)                   % If there are any ...
    can.VoiceRec_CC_Request = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x39A messages
    can.VoiceRec_CC_Request.nsamples      = length(ix);
    can.VoiceRec_CC_Request.ctime         = cantime(ix);

    can.VoiceRec_CC_Request.units.Recirculate_On     =  'SED';
    can.VoiceRec_CC_Request.Recirculate_On     =    (bitget(bb(2,:),3))';
    can.VoiceRec_CC_Request.units.Recirculate_Off     =  'SED';
    can.VoiceRec_CC_Request.Recirculate_Off     =    (bitget(bb(2,:),2))';
    can.VoiceRec_CC_Request.units.Rear_Defrost_On     =  'SED';
    can.VoiceRec_CC_Request.Rear_Defrost_On     =    (bitget(bb(2,:),5))';
    can.VoiceRec_CC_Request.units.Rear_Defrost_Off     =  'SED';
    can.VoiceRec_CC_Request.Rear_Defrost_Off     =    (bitget(bb(2,:),4))';
    can.VoiceRec_CC_Request.units.Max_AC_On     =  'SED';
    can.VoiceRec_CC_Request.Max_AC_On     =    (bitget(bb(1,:),1))';
    can.VoiceRec_CC_Request.units.Max_AC_Off     =  'SED';
    can.VoiceRec_CC_Request.Max_AC_Off     =    (bitget(bb(2,:),8))';
    can.VoiceRec_CC_Request.units.Front_Defrost_On     =  'SED';
    can.VoiceRec_CC_Request.Front_Defrost_On     =    (bitget(bb(2,:),7))';
    can.VoiceRec_CC_Request.units.Front_Defrost_Off     =  'SED';
    can.VoiceRec_CC_Request.Front_Defrost_Off     =    (bitget(bb(2,:),6))';
    can.VoiceRec_CC_Request.units.Front_Blower_Increment     =  'SED';
    can.VoiceRec_CC_Request.Front_Blower_Increment     =    (bitget(bb(2,:),1))';
    can.VoiceRec_CC_Request.units.Front_Blower_Decrement     =  'SED';
    can.VoiceRec_CC_Request.Front_Blower_Decrement     =    (bitget(bb(3,:),8))';
    can.VoiceRec_CC_Request.units.Dual_Zone_Off     =  'SED';
    can.VoiceRec_CC_Request.Dual_Zone_Off     =    (bitget(bb(1,:),6))';
    can.VoiceRec_CC_Request.units.Driver_Temp_Increment     =  'SED';
    can.VoiceRec_CC_Request.Driver_Temp_Increment     =    (bitget(bb(3,:),7))';
    can.VoiceRec_CC_Request.units.Driver_Temp_Decrement     =  'SED';
    can.VoiceRec_CC_Request.Driver_Temp_Decrement     =    (bitget(bb(3,:),6))';
    can.VoiceRec_CC_Request.units.Climate_On     =  'SED';
    can.VoiceRec_CC_Request.Climate_On     =    (bitget(bb(1,:),5))';
    can.VoiceRec_CC_Request.units.Climate_Off     =  'SED';
    can.VoiceRec_CC_Request.Climate_Off     =    (bitget(bb(1,:),4))';
    can.VoiceRec_CC_Request.units.Automatic_Mode     =  'SED';
    can.VoiceRec_CC_Request.Automatic_Mode     =    (bitget(bb(1,:),7))';
    can.VoiceRec_CC_Request.units.AC_On     =  'SED';
    can.VoiceRec_CC_Request.AC_On     =    (bitget(bb(1,:),3))';
    can.VoiceRec_CC_Request.units.AC_Off     =  'SED';
    can.VoiceRec_CC_Request.AC_Off     =    (bitget(bb(1,:),2))';
    can.VoiceRec_CC_Request.units.Voice_Blower_Limit     =  'SED';
    can.VoiceRec_CC_Request.Voice_Blower_Limit     =    (bitget(bb(1,:),8))';
    can.VoiceRec_CC_Request.units.Driver_Set_Temp     =  'Degrees';
    can.VoiceRec_CC_Request.Driver_Set_Temp     =    5.000000e-001*(bb(4,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Ignition_Switch_PositionM
% Hex ID:3A0
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3A0 = hex2dec('3A0');

ix=find(msg == MSG_3A0);          % Find all message 0x3A0's
if ~isempty(ix)                   % If there are any ...
    can.Ignition_Switch_PositionM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3A0 messages
    can.Ignition_Switch_PositionM.nsamples      = length(ix);
    can.Ignition_Switch_PositionM.ctime         = cantime(ix);

    can.Ignition_Switch_PositionM.units.AirAmb_Te_ActlFilt_UB     =  'SED';
    can.Ignition_Switch_PositionM.AirAmb_Te_ActlFilt_UB     =    (bitget(bb(2,:),7))';
    can.Ignition_Switch_PositionM.units.AirAmb_Te_ActlFilt     =  'deg C';
    can.Ignition_Switch_PositionM.AirAmb_Te_ActlFilt     =    2.500000e-001*(2^8 * bitand(bb(7,:),3) + bb(8,:))' +-128.00;
    can.Ignition_Switch_PositionM.units.OdometerMasterValue_UB     =  'SED';
    can.Ignition_Switch_PositionM.OdometerMasterValue_UB     =    (bitget(bb(2,:),8))';
    can.Ignition_Switch_PositionM.units.OdometerMasterValue     =  'km';
    can.Ignition_Switch_PositionM.OdometerMasterValue     =    (2^16 * bb(4,:) + 2^8 * bb(5,:) + bb(6,:))' ;
    can.Ignition_Switch_PositionM.units.Remote_Start_Status     =  'SED';
    can.Ignition_Switch_PositionM.Remote_Start_Status     =    (bitand(bitshift(bb(2,:),-4),3))' ;
    can.Ignition_Switch_PositionM.units.Key_In_Ignition_Stat     =  'SED';
    can.Ignition_Switch_PositionM.Key_In_Ignition_Stat     =    (bitand(bitshift(bb(1,:),-2),3))' ;
    can.Ignition_Switch_PositionM.units.Ignition_Switch_Stable     =  'SED';
    can.Ignition_Switch_PositionM.Ignition_Switch_Stable     =    (bitand(bb(1,:),3))' ;
    can.Ignition_Switch_PositionM.units.Ignition_Status     =  'SED';
    can.Ignition_Switch_PositionM.Ignition_Status     =    (bitand(bitshift(bb(1,:),-4),15))' ;
    can.Ignition_Switch_PositionM.units.BOO_Switch_Status     =  'SED';
    can.Ignition_Switch_PositionM.BOO_Switch_Status     =    (bitand(bb(2,:),3))' ;
    can.Ignition_Switch_PositionM.units.Remote_Device_Feedback     =  'SED';
    can.Ignition_Switch_PositionM.Remote_Device_Feedback     =    (bitand(bitshift(bb(3,:),-5),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Side_Detect_L_StatusM
% Hex ID:3A6
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3A6 = hex2dec('3A6');

ix=find(msg == MSG_3A6);          % Find all message 0x3A6's
if ~isempty(ix)                   % If there are any ...
    can.Side_Detect_L_StatusM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3A6 messages
    can.Side_Detect_L_StatusM.nsamples      = length(ix);
    can.Side_Detect_L_StatusM.ctime         = cantime(ix);

    can.Side_Detect_L_StatusM.units.Cross_Traffic_L_SnState     =  'SED';
    can.Side_Detect_L_StatusM.Cross_Traffic_L_SnState     =    (bitand(bitshift(bb(3,:),-6),3))' ;
    can.Side_Detect_L_StatusM.units.SideDetect_L_SysOpState     =  'SED';
    can.Side_Detect_L_StatusM.SideDetect_L_SysOpState     =    (bitand(bitshift(bb(1,:),-2),3))' ;
    can.Side_Detect_L_StatusM.units.SideDetect_L_SnsrState     =  'SED';
    can.Side_Detect_L_StatusM.SideDetect_L_SnsrState     =    (bitand(bb(1,:),3))' ;
    can.Side_Detect_L_StatusM.units.Side_Detect_L_Illum     =  'Percent';
    can.Side_Detect_L_StatusM.Side_Detect_L_Illum     =    (bb(2,:))' ;
    can.Side_Detect_L_StatusM.units.Side_Detect_L_Detect     =  'SED';
    can.Side_Detect_L_StatusM.Side_Detect_L_Detect     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.Side_Detect_L_StatusM.units.Cross_Traffic_L_Op_State     =  'SED';
    can.Side_Detect_L_StatusM.Cross_Traffic_L_Op_State     =    (bitand(bitshift(bb(3,:),-4),3))' ;
    can.Side_Detect_L_StatusM.units.Cross_Traffic_L_Alert     =  'SED';
    can.Side_Detect_L_StatusM.Cross_Traffic_L_Alert     =    (bitand(bitshift(bb(3,:),-2),3))' ;
    can.Side_Detect_L_StatusM.units.Side_Detect_L_Alert     =  'SED';
    can.Side_Detect_L_StatusM.Side_Detect_L_Alert     =    (bitand(bitshift(bb(1,:),-4),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Side_Detect_R_StatusM
% Hex ID:3A7
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3A7 = hex2dec('3A7');

ix=find(msg == MSG_3A7);          % Find all message 0x3A7's
if ~isempty(ix)                   % If there are any ...
    can.Side_Detect_R_StatusM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3A7 messages
    can.Side_Detect_R_StatusM.nsamples      = length(ix);
    can.Side_Detect_R_StatusM.ctime         = cantime(ix);

    can.Side_Detect_R_StatusM.units.Cross_Traffic_R_Alert     =  'SED';
    can.Side_Detect_R_StatusM.Cross_Traffic_R_Alert     =    (bitand(bitshift(bb(3,:),-6),3))' ;
    can.Side_Detect_R_StatusM.units.Cross_Traffic_R_SnState     =  'SED';
    can.Side_Detect_R_StatusM.Cross_Traffic_R_SnState     =    (bitand(bitshift(bb(3,:),-2),3))' ;
    can.Side_Detect_R_StatusM.units.Cross_Traffic_R_Op_State     =  'SED';
    can.Side_Detect_R_StatusM.Cross_Traffic_R_Op_State     =    (bitand(bitshift(bb(3,:),-4),3))' ;
    can.Side_Detect_R_StatusM.units.Side_Detect_R_Detect     =  'SED';
    can.Side_Detect_R_StatusM.Side_Detect_R_Detect     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.Side_Detect_R_StatusM.units.Side_Detect_R_Illum     =  'Percent';
    can.Side_Detect_R_StatusM.Side_Detect_R_Illum     =    (bb(2,:))' ;
    can.Side_Detect_R_StatusM.units.SideDetect_R_SnsrState     =  'SED';
    can.Side_Detect_R_StatusM.SideDetect_R_SnsrState     =    (bitand(bb(1,:),3))' ;
    can.Side_Detect_R_StatusM.units.SideDetect_R_SysOpState     =  'SED';
    can.Side_Detect_R_StatusM.SideDetect_R_SysOpState     =    (bitand(bitshift(bb(1,:),-2),3))' ;
    can.Side_Detect_R_StatusM.units.Side_Detect_R_Alert     =  'SED';
    can.Side_Detect_R_StatusM.Side_Detect_R_Alert     =    (bitand(bitshift(bb(1,:),-4),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Body_Information_6_MS
% Hex ID:3B0
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3B0 = hex2dec('3B0');

ix=find(msg == MSG_3B0);          % Find all message 0x3B0's
if ~isempty(ix)                   % If there are any ...
    can.Body_Information_6_MS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3B0 messages
    can.Body_Information_6_MS.nsamples      = length(ix);
    can.Body_Information_6_MS.ctime         = cantime(ix);

    can.Body_Information_6_MS.units.DRV_SELECT_STAT     =  'SED';
    can.Body_Information_6_MS.DRV_SELECT_STAT     =    (bitand(bb(1,:),15))' ;
    can.Body_Information_6_MS.units.reserve_2bits     =  '';
    can.Body_Information_6_MS.reserve_2bits     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.Body_Information_6_MS.units.reserve_2     =  'unitless';
    can.Body_Information_6_MS.reserve_2     =    (bitget(bb(1,:),6))';
    can.Body_Information_6_MS.units.reserve_3     =  'unitless';
    can.Body_Information_6_MS.reserve_3     =    (bitget(bb(1,:),5))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Ajar_Stat
% Hex ID:3B1
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3B1 = hex2dec('3B1');

ix=find(msg == MSG_3B1);          % Find all message 0x3B1's
if ~isempty(ix)                   % If there are any ...
    can.Ajar_Stat = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3B1 messages
    can.Ajar_Stat.nsamples      = length(ix);
    can.Ajar_Stat.ctime         = cantime(ix);

    can.Ajar_Stat.units.Decklid_Ajar_Status     =  'SED';
    can.Ajar_Stat.Decklid_Ajar_Status     =    (bitget(bb(1,:),4))';
    can.Ajar_Stat.units.Hood_Ajar_Status     =  'SED';
    can.Ajar_Stat.Hood_Ajar_Status     =    (bitget(bb(1,:),1))';
    can.Ajar_Stat.units.LG_Glass_Ajar_Status     =  'SED';
    can.Ajar_Stat.LG_Glass_Ajar_Status     =    (bitget(bb(1,:),3))';
    can.Ajar_Stat.units.DF_Door_Ajar_Status     =  'SED';
    can.Ajar_Stat.DF_Door_Ajar_Status     =    (bitget(bb(1,:),8))';
    can.Ajar_Stat.units.PF_Door_Ajar_Status     =  'SED';
    can.Ajar_Stat.PF_Door_Ajar_Status     =    (bitget(bb(1,:),7))';
    can.Ajar_Stat.units.DR_Door_Ajar_Status     =  'SED';
    can.Ajar_Stat.DR_Door_Ajar_Status     =    (bitget(bb(1,:),6))';
    can.Ajar_Stat.units.PR_Door_Ajar_Status     =  'SED';
    can.Ajar_Stat.PR_Door_Ajar_Status     =    (bitget(bb(1,:),5))';
    can.Ajar_Stat.units.LG_Door_Ajar_Status     =  'SED';
    can.Ajar_Stat.LG_Door_Ajar_Status     =    (bitget(bb(1,:),2))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Body_Information_5_MS
% Hex ID:3B2
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3B2 = hex2dec('3B2');

ix=find(msg == MSG_3B2);          % Find all message 0x3B2's
if ~isempty(ix)                   % If there are any ...
    can.Body_Information_5_MS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3B2 messages
    can.Body_Information_5_MS.nsamples      = length(ix);
    can.Body_Information_5_MS.ctime         = cantime(ix);

    can.Body_Information_5_MS.units.CoolantFanStepAct_UB     =  'SED';
    can.Body_Information_5_MS.CoolantFanStepAct_UB     =    (bitget(bb(2,:),1))';
    can.Body_Information_5_MS.units.AirCondRec_B_Rq_UB     =  'SED';
    can.Body_Information_5_MS.AirCondRec_B_Rq_UB     =    (bitget(bb(5,:),7))';
    can.Body_Information_5_MS.units.AirCondRec_B_Rq     =  'SED';
    can.Body_Information_5_MS.AirCondRec_B_Rq     =    (bitget(bb(5,:),8))';
    can.Body_Information_5_MS.units.AirCondEvdc_D_Stats_UB     =  'SED';
    can.Body_Information_5_MS.AirCondEvdc_D_Stats_UB     =    (bitget(bb(5,:),3))';
    can.Body_Information_5_MS.units.AirCondEvdc_D_Stats     =  'SED';
    can.Body_Information_5_MS.AirCondEvdc_D_Stats     =    (bitand(bitshift(bb(5,:),-3),7))' ;
    can.Body_Information_5_MS.units.AirCondClutch_B_Stats_UB     =  'SED';
    can.Body_Information_5_MS.AirCondClutch_B_Stats_UB     =    (bitget(bb(3,:),4))';
    can.Body_Information_5_MS.units.AirCondClutch_B_Stats     =  'SED';
    can.Body_Information_5_MS.AirCondClutch_B_Stats     =    (bitget(bb(3,:),5))';
    can.Body_Information_5_MS.units.CoolantFanStepAct     =  'Steps';
    can.Body_Information_5_MS.CoolantFanStepAct     =    (bitand(bitshift(bb(6,:),-3),31))' ;
    can.Body_Information_5_MS.units.AirCondFluidHi_P_Actl_UB     =  'SED';
    can.Body_Information_5_MS.AirCondFluidHi_P_Actl_UB     =    (bitget(bb(3,:),3))';
    can.Body_Information_5_MS.units.AirCondFluidHi_P_Actl     =  'bar';
    can.Body_Information_5_MS.AirCondFluidHi_P_Actl     =    1.250000e-001*(bb(4,:))' ;
    can.Body_Information_5_MS.units.SECONDARY_HEATER_STAT_UB     =  'SED';
    can.Body_Information_5_MS.SECONDARY_HEATER_STAT_UB     =    (bitget(bb(8,:),8))';
    can.Body_Information_5_MS.units.CURRENT_DRAW_UB     =  'SED';
    can.Body_Information_5_MS.CURRENT_DRAW_UB     =    (bitget(bb(8,:),7))';
    can.Body_Information_5_MS.units.SECONDARY_HEATER_STAT     =  'SED';
    can.Body_Information_5_MS.SECONDARY_HEATER_STAT     =    (bitget(bb(6,:),1))';
    can.Body_Information_5_MS.units.CURRENT_DRAW     =  'Amps';
    can.Body_Information_5_MS.CURRENT_DRAW     =    5.000000e-001*(bb(7,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: BodyInformation_3_MS
% Hex ID:3B3
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3B3 = hex2dec('3B3');

ix=find(msg == MSG_3B3);          % Find all message 0x3B3's
if ~isempty(ix)                   % If there are any ...
    can.BodyInformation_3_MS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3B3 messages
    can.BodyInformation_3_MS.nsamples      = length(ix);
    can.BodyInformation_3_MS.ctime         = cantime(ix);

    can.BodyInformation_3_MS.units.CamraDefog_B_Req_UB     =  'SED';
    can.BodyInformation_3_MS.CamraDefog_B_Req_UB     =    (bitget(bb(8,:),3))';
    can.BodyInformation_3_MS.units.TrStats_D_Actl_UB     =  'SED';
    can.BodyInformation_3_MS.TrStats_D_Actl_UB     =    (bitget(bb(7,:),1))';
    can.BodyInformation_3_MS.units.RearFog_Lamp_Dbnce_UB     =  'SED';
    can.BodyInformation_3_MS.RearFog_Lamp_Dbnce_UB     =    (bitget(bb(7,:),2))';
    can.BodyInformation_3_MS.units.TrStats_D_Actl     =  'SED';
    can.BodyInformation_3_MS.TrStats_D_Actl     =    (bitand(bitshift(bb(2,:),-4),3))' ;
    can.BodyInformation_3_MS.units.CamraDefog_B_Req     =  'SED';
    can.BodyInformation_3_MS.CamraDefog_B_Req     =    (bitget(bb(6,:),1))';
    can.BodyInformation_3_MS.units.RearFog_Lamp_Dbnce     =  'SED';
    can.BodyInformation_3_MS.RearFog_Lamp_Dbnce     =    (bitget(bb(1,:),1))';
    can.BodyInformation_3_MS.units.CarMode     =  'SED';
    can.BodyInformation_3_MS.CarMode     =    (bitand(bitshift(bb(7,:),-2),15))' ;
    can.BodyInformation_3_MS.units.Day_Night_Status     =  'SED';
    can.BodyInformation_3_MS.Day_Night_Status     =    (bitand(bitshift(bb(2,:),-6),3))' ;
    can.BodyInformation_3_MS.units.Parklamp_Status     =  'SED';
    can.BodyInformation_3_MS.Parklamp_Status     =    (bitand(bitshift(bb(1,:),-2),3))' ;
    can.BodyInformation_3_MS.units.Dimming_Lvl     =  'SED';
    can.BodyInformation_3_MS.Dimming_Lvl     =    (bb(4,:))' ;
    can.BodyInformation_3_MS.units.Litval     =  'SED';
    can.BodyInformation_3_MS.Litval     =    (bb(3,:))' ;
    can.BodyInformation_3_MS.units.Mfs_Turn_Stalk_SW_Status     =  'SED';
    can.BodyInformation_3_MS.Mfs_Turn_Stalk_SW_Status     =    (bitand(bitshift(bb(2,:),-2),3))' ;
    can.BodyInformation_3_MS.units.PwMdeExten_D_Actl     =  'SED';
    can.BodyInformation_3_MS.PwMdeExten_D_Actl     =    (bitand(bitshift(bb(8,:),-3),31))' ;
    can.BodyInformation_3_MS.units.STR_WHL_ANGLE     =  'Degrees';
    can.BodyInformation_3_MS.STR_WHL_ANGLE     =    1.000000e-001*(2^7 * bb(5,:) + bitand(bitshift(bb(6,:),-1),127))' +-1000.00;
    can.BodyInformation_3_MS.units.Turn_Seq_Cmd_Right     =  'SED';
    can.BodyInformation_3_MS.Turn_Seq_Cmd_Right     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.BodyInformation_3_MS.units.Turn_Seq_Cmd_Left     =  'SED';
    can.BodyInformation_3_MS.Turn_Seq_Cmd_Left     =    (bitand(bitshift(bb(1,:),-4),3))' ;
    can.BodyInformation_3_MS.units.Smart_Wiper_Motor_Stat_UB     =  'SED';
    can.BodyInformation_3_MS.Smart_Wiper_Motor_Stat_UB     =    (bitget(bb(2,:),1))';
    can.BodyInformation_3_MS.units.Smart_Wiper_Motor_Stat     =  'SED';
    can.BodyInformation_3_MS.Smart_Wiper_Motor_Stat     =    (bitand(bitshift(bb(7,:),-6),3))' ;
    can.BodyInformation_3_MS.units.Mfs_Turn_Stalk_SW_Status_UB     =  'SED';
    can.BodyInformation_3_MS.Mfs_Turn_Stalk_SW_Status_UB     =    (bitget(bb(2,:),2))';
    can.BodyInformation_3_MS.units.reserve     =  'unitless';
    can.BodyInformation_3_MS.reserve     =    (bitget(bb(1,:),2))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RKE_Packet
% Hex ID:3B6
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3B6 = hex2dec('3B6');

ix=find(msg == MSG_3B6);          % Find all message 0x3B6's
if ~isempty(ix)                   % If there are any ...
    can.RKE_Packet = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3B6 messages
    can.RKE_Packet.nsamples      = length(ix);
    can.RKE_Packet.ctime         = cantime(ix);

    can.RKE_Packet.units.RemoteKey_Packet_TIC     =  'Unitless';
    can.RKE_Packet.RemoteKey_Packet_TIC     =    (2^24 * bb(1,:) + 2^16 * bb(2,:) + 2^8 * bb(3,:) + bb(4,:))' ;
    can.RKE_Packet.units.RemoteKey_Packet_RollB     =  'Unitless';
    can.RKE_Packet.RemoteKey_Packet_RollB     =    (bb(7,:))' ;
    can.RKE_Packet.units.RemoteKey_Packet_RollA     =  'Unitless';
    can.RKE_Packet.RemoteKey_Packet_RollA     =    (bb(6,:))' ;
    can.RKE_Packet.units.RemoteKey_Packet_Ctrl     =  'Unitless';
    can.RKE_Packet.RemoteKey_Packet_Ctrl     =    (bb(5,:))' ;
    can.RKE_Packet.units.RemoteKey_Packet_CkSum     =  'Unitless';
    can.RKE_Packet.RemoteKey_Packet_CkSum     =    (bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TPM_Frame
% Hex ID:3B7
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3B7 = hex2dec('3B7');

ix=find(msg == MSG_3B7);          % Find all message 0x3B7's
if ~isempty(ix)                   % If there are any ...
    can.TPM_Frame = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3B7 messages
    can.TPM_Frame.nsamples      = length(ix);
    can.TPM_Frame.ctime         = cantime(ix);

    can.TPM_Frame.units.TirePress_Frame_Temp     =  'Unitless';
    can.TPM_Frame.TirePress_Frame_Temp     =    (bb(6,:))' ;
    can.TPM_Frame.units.TirePress_Frame_Status     =  'Unitless';
    can.TPM_Frame.TirePress_Frame_Status     =    (bb(7,:))' ;
    can.TPM_Frame.units.TirePress_Frame_Press     =  'Unitless';
    can.TPM_Frame.TirePress_Frame_Press     =    (bb(5,:))' ;
    can.TPM_Frame.units.TirePress_Frame_ID     =  'Unitless';
    can.TPM_Frame.TirePress_Frame_ID     =    (2^24 * bb(1,:) + 2^16 * bb(2,:) + 2^8 * bb(3,:) + bb(4,:))' ;
    can.TPM_Frame.units.TirePress_Frame_CkSum     =  'Unitless';
    can.TPM_Frame.TirePress_Frame_CkSum     =    (bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RKE_TPM_Info
% Hex ID:3B8
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3B8 = hex2dec('3B8');

ix=find(msg == MSG_3B8);          % Find all message 0x3B8's
if ~isempty(ix)                   % If there are any ...
    can.RKE_TPM_Info = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3B8 messages
    can.RKE_TPM_Info.nsamples      = length(ix);
    can.RKE_TPM_Info.ctime         = cantime(ix);

    can.RKE_TPM_Info.units.TirePress_HitRate_Ctrl     =  'SED';
    can.RKE_TPM_Info.TirePress_HitRate_Ctrl     =    (bitget(bb(2,:),8))';
    can.RKE_TPM_Info.units.RemoteKey_HitRate_Ctrl     =  'SED';
    can.RKE_TPM_Info.RemoteKey_HitRate_Ctrl     =    (bitget(bb(2,:),7))';
    can.RKE_TPM_Info.units.RemoteKey_Antenna_Ctrl     =  'SED';
    can.RKE_TPM_Info.RemoteKey_Antenna_Ctrl     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.RKE_TPM_Info.units.TirePress_Filter_Ctrl     =  'SED';
    can.RKE_TPM_Info.TirePress_Filter_Ctrl     =    (bitand(bitshift(bb(1,:),-4),3))' ;
    can.RKE_TPM_Info.units.RemoteKey_Filter_Ctrl     =  'SED';
    can.RKE_TPM_Info.RemoteKey_Filter_Ctrl     =    (bitand(bitshift(bb(1,:),-2),3))' ;
    can.RKE_TPM_Info.units.Modulation_Ctrl     =  'SED';
    can.RKE_TPM_Info.Modulation_Ctrl     =    (bitand(bb(1,:),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RKE_Info
% Hex ID:3B9
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3B9 = hex2dec('3B9');

ix=find(msg == MSG_3B9);          % Find all message 0x3B9's
if ~isempty(ix)                   % If there are any ...
    can.RKE_Info = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3B9 messages
    can.RKE_Info.nsamples      = length(ix);
    can.RKE_Info.ctime         = cantime(ix);

    can.RKE_Info.units.RemoteKey_Info_TIC     =  'Unitless';
    can.RKE_Info.RemoteKey_Info_TIC     =    (2^24 * bb(1,:) + 2^16 * bb(2,:) + 2^8 * bb(3,:) + bb(4,:))' ;
    can.RKE_Info.units.RemoteKey_Info_RollB     =  'Unitless';
    can.RKE_Info.RemoteKey_Info_RollB     =    (bb(7,:))' ;
    can.RKE_Info.units.RemoteKey_Info_RollA     =  'Unitless';
    can.RKE_Info.RemoteKey_Info_RollA     =    (bb(6,:))' ;
    can.RKE_Info.units.RemoteKey_Info_Ctrl     =  'Unitless';
    can.RKE_Info.RemoteKey_Info_Ctrl     =    (bb(5,:))' ;
    can.RKE_Info.units.RemoteKey_Info_CkSum     =  'Unitless';
    can.RKE_Info.RemoteKey_Info_CkSum     =    (bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Tire_Pressure_Info
% Hex ID:3BA
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3BA = hex2dec('3BA');

ix=find(msg == MSG_3BA);          % Find all message 0x3BA's
if ~isempty(ix)                   % If there are any ...
    can.Tire_Pressure_Info = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3BA messages
    can.Tire_Pressure_Info.nsamples      = length(ix);
    can.Tire_Pressure_Info.ctime         = cantime(ix);

    can.Tire_Pressure_Info.units.TirePress_Info_MaxInd     =  'Unitless';
    can.Tire_Pressure_Info.TirePress_Info_MaxInd     =    (bb(6,:))' ;
    can.Tire_Pressure_Info.units.TirePress_Info_Index     =  'Unitless';
    can.Tire_Pressure_Info.TirePress_Info_Index     =    (bb(5,:))' ;
    can.Tire_Pressure_Info.units.TirePress_Info_ID     =  'Unitless';
    can.Tire_Pressure_Info.TirePress_Info_ID     =    (2^24 * bb(1,:) + 2^16 * bb(2,:) + 2^8 * bb(3,:) + bb(4,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Body_Information_7_MS
% Hex ID:3BC
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3BC = hex2dec('3BC');

ix=find(msg == MSG_3BC);          % Find all message 0x3BC's
if ~isempty(ix)                   % If there are any ...
    can.Body_Information_7_MS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3BC messages
    can.Body_Information_7_MS.nsamples      = length(ix);
    can.Body_Information_7_MS.ctime         = cantime(ix);

    can.Body_Information_7_MS.units.GearLvrPos_D_Actl_UB     =  'SED';
    can.Body_Information_7_MS.GearLvrPos_D_Actl_UB     =    (bitget(bb(3,:),6))';
    can.Body_Information_7_MS.units.PrplWhlTot_Tq_Actl     =  'Nm';
    can.Body_Information_7_MS.PrplWhlTot_Tq_Actl     =    4.000000e+000*(2^8 * bb(4,:) + bb(5,:))' +-131072.00;
    can.Body_Information_7_MS.units.GearLvrPos_D_Actl     =  'SED';
    can.Body_Information_7_MS.GearLvrPos_D_Actl     =    (bitand(bitshift(bb(1,:),-4),15))' ;
    can.Body_Information_7_MS.units.ApedPos_Pc_ActlArb     =  '%';
    can.Body_Information_7_MS.ApedPos_Pc_ActlArb     =    1.000000e-001*(2^2 * bb(2,:) + bitand(bitshift(bb(3,:),-6),3))' ;
    can.Body_Information_7_MS.units.PrplWhlTot_Tq_Actl_UB     =  'SED';
    can.Body_Information_7_MS.PrplWhlTot_Tq_Actl_UB     =    (bitget(bb(3,:),2))';
    can.Body_Information_7_MS.units.EngOff_T_Actl     =  'seconds';
    can.Body_Information_7_MS.EngOff_T_Actl     =    (2^8 * bb(6,:) + bb(7,:))' ;
    can.Body_Information_7_MS.units.ApedPos_Pc_ActlArb_UB     =  'SED';
    can.Body_Information_7_MS.ApedPos_Pc_ActlArb_UB     =    (bitget(bb(3,:),5))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Rear_FoglampStat
% Hex ID:3BE
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3BE = hex2dec('3BE');

ix=find(msg == MSG_3BE);          % Find all message 0x3BE's
if ~isempty(ix)                   % If there are any ...
    can.Rear_FoglampStat = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3BE messages
    can.Rear_FoglampStat.nsamples      = length(ix);
    can.Rear_FoglampStat.ctime         = cantime(ix);

    can.Rear_FoglampStat.units.RearFog_Lamp_Ind     =  'SED';
    can.Rear_FoglampStat.RearFog_Lamp_Ind     =    (bitget(bb(1,:),8))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: BCM_to_MS_Body
% Hex ID:3C3
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3C3 = hex2dec('3C3');

ix=find(msg == MSG_3C3);          % Find all message 0x3C3's
if ~isempty(ix)                   % If there are any ...
    can.BCM_to_MS_Body = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3C3 messages
    can.BCM_to_MS_Body.nsamples      = length(ix);
    can.BCM_to_MS_Body.ctime         = cantime(ix);

    can.BCM_to_MS_Body.units.LF_Low_Beam_CKT_CAN     =  'SED';
    can.BCM_to_MS_Body.LF_Low_Beam_CKT_CAN     =    (bitget(bb(1,:),3))';
    can.BCM_to_MS_Body.units.IKT_Program_Status     =  'SED';
    can.BCM_to_MS_Body.IKT_Program_Status     =    (bitand(bitshift(bb(7,:),-2),3))' ;
    can.BCM_to_MS_Body.units.Veh_Spd_Slow_Puddle_Status     =  'SED';
    can.BCM_to_MS_Body.Veh_Spd_Slow_Puddle_Status     =    (bitand(bb(6,:),3))' ;
    can.BCM_to_MS_Body.units.Illuminated_Exit_Status     =  'SED';
    can.BCM_to_MS_Body.Illuminated_Exit_Status     =    (bitand(bitshift(bb(6,:),-2),3))' ;
    can.BCM_to_MS_Body.units.Illuminated_Entry_Status     =  'SED';
    can.BCM_to_MS_Body.Illuminated_Entry_Status     =    (bitand(bitshift(bb(6,:),-4),3))' ;
    can.BCM_to_MS_Body.units.Door_Courtesy_Light_Status     =  'SED';
    can.BCM_to_MS_Body.Door_Courtesy_Light_Status     =    (bitand(bitshift(bb(6,:),-6),3))' ;
    can.BCM_to_MS_Body.units.Courtesy_Demand_BSave_Stat     =  'SED';
    can.BCM_to_MS_Body.Courtesy_Demand_BSave_Stat     =    (bitand(bb(5,:),3))' ;
    can.BCM_to_MS_Body.units.Alarm_Lights_Courtesy_Stat     =  'SED';
    can.BCM_to_MS_Body.Alarm_Lights_Courtesy_Stat     =    (bitand(bitshift(bb(5,:),-2),3))' ;
    can.BCM_to_MS_Body.units.Courtesy_Delay_Status     =  'SED';
    can.BCM_to_MS_Body.Courtesy_Delay_Status     =    (bitand(bitshift(bb(5,:),-4),3))' ;
    can.BCM_to_MS_Body.units.Courtesy_Mode_Status     =  'SED';
    can.BCM_to_MS_Body.Courtesy_Mode_Status     =    (bitand(bitshift(bb(5,:),-6),3))' ;
    can.BCM_to_MS_Body.units.Front_Fog_Light_SW_Status     =  'SED';
    can.BCM_to_MS_Body.Front_Fog_Light_SW_Status     =    (bitand(bitshift(bb(3,:),-5),3))' ;
    can.BCM_to_MS_Body.units.Brake_Lamp_On_Status     =  'SED';
    can.BCM_to_MS_Body.Brake_Lamp_On_Status     =    (bitget(bb(3,:),8))';
    can.BCM_to_MS_Body.units.ParkLamps_CKT_CAN     =  'SED';
    can.BCM_to_MS_Body.ParkLamps_CKT_CAN     =    (bitget(bb(2,:),1))';
    can.BCM_to_MS_Body.units.RF_Low_Beam_CKT_CAN     =  'SED';
    can.BCM_to_MS_Body.RF_Low_Beam_CKT_CAN     =    (bitget(bb(2,:),6))';
    can.BCM_to_MS_Body.units.Brk_Fluid_Lvl_Low     =  'SED';
    can.BCM_to_MS_Body.Brk_Fluid_Lvl_Low     =    (bitand(bitshift(bb(2,:),-6),3))' ;
    can.BCM_to_MS_Body.units.Park_Brake_Status     =  'SED';
    can.BCM_to_MS_Body.Park_Brake_Status     =    (bitget(bb(1,:),5))';
    can.BCM_to_MS_Body.units.High_Beam_Indicator_Rqst     =  'SED';
    can.BCM_to_MS_Body.High_Beam_Indicator_Rqst     =    (bitget(bb(1,:),2))';
    can.BCM_to_MS_Body.units.Headlamp_On_Wrning_Cmd     =  'SED';
    can.BCM_to_MS_Body.Headlamp_On_Wrning_Cmd     =    (bitget(bb(1,:),7))';
    can.BCM_to_MS_Body.units.Key_In_Ignition_Warn_Cmd     =  'SED';
    can.BCM_to_MS_Body.Key_In_Ignition_Warn_Cmd     =    (bitget(bb(1,:),6))';
    can.BCM_to_MS_Body.units.Park_Brake_Chime_Rqst     =  'SED';
    can.BCM_to_MS_Body.Park_Brake_Chime_Rqst     =    (bitget(bb(1,:),4))';
    can.BCM_to_MS_Body.units.Daytime_Running_Lamps     =  'SED';
    can.BCM_to_MS_Body.Daytime_Running_Lamps     =    (bitget(bb(1,:),1))';
    can.BCM_to_MS_Body.units.AutoHighBeam_Cmd     =  'SED';
    can.BCM_to_MS_Body.AutoHighBeam_Cmd     =    (bitand(bitshift(bb(3,:),-1),3))' ;
    can.BCM_to_MS_Body.units.Perimeter_Alarm_Chime_Rqst     =  'SED';
    can.BCM_to_MS_Body.Perimeter_Alarm_Chime_Rqst     =    (bitand(bitshift(bb(3,:),-3),3))' ;
    can.BCM_to_MS_Body.units.OCSSensrDataUpperLim_UB     =  'SED';
    can.BCM_to_MS_Body.OCSSensrDataUpperLim_UB     =    (bitget(bb(2,:),4))';
    can.BCM_to_MS_Body.units.OCSSensrDataLowerLim_UB     =  'SED';
    can.BCM_to_MS_Body.OCSSensrDataLowerLim_UB     =    (bitget(bb(2,:),5))';
    can.BCM_to_MS_Body.units.OCSSensrDataUpperLim     =  'SED';
    can.BCM_to_MS_Body.OCSSensrDataUpperLim     =    (bb(8,:))' ;
    can.BCM_to_MS_Body.units.OCSSensrDataLowerLim     =  'SED';
    can.BCM_to_MS_Body.OCSSensrDataLowerLim     =    (bb(4,:))' ;
    can.BCM_to_MS_Body.units.AutoHighBeam_Cmd_UB     =  'SED';
    can.BCM_to_MS_Body.AutoHighBeam_Cmd_UB     =    (bitget(bb(3,:),1))';
    can.BCM_to_MS_Body.units.PrkBrkActv_B_Actl     =  'SED';
    can.BCM_to_MS_Body.PrkBrkActv_B_Actl     =    (bitget(bb(1,:),8))';
    can.BCM_to_MS_Body.units.Headlamp_Switch_Stat     =  'SED';
    can.BCM_to_MS_Body.Headlamp_Switch_Stat     =    (bitand(bb(7,:),3))' ;
    can.BCM_to_MS_Body.units.Perimeter_Alarm_Inclin_Cmd     =  'SED';
    can.BCM_to_MS_Body.Perimeter_Alarm_Inclin_Cmd     =    (bitand(bitshift(bb(7,:),-4),3))' ;
    can.BCM_to_MS_Body.units.Perimeter_Alarm_Intrus_Cmd     =  'SED';
    can.BCM_to_MS_Body.Perimeter_Alarm_Intrus_Cmd     =    (bitand(bitshift(bb(7,:),-6),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: BodyInformation_2_MS
% Hex ID:3C4
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3C4 = hex2dec('3C4');

ix=find(msg == MSG_3C4);          % Find all message 0x3C4's
if ~isempty(ix)                   % If there are any ...
    can.BodyInformation_2_MS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3C4 messages
    can.BodyInformation_2_MS.nsamples      = length(ix);
    can.BodyInformation_2_MS.ctime         = cantime(ix);

    can.BodyInformation_2_MS.units.LockInhibit     =  'SED';
    can.BodyInformation_2_MS.LockInhibit     =    (bitget(bb(6,:),2))';
    can.BodyInformation_2_MS.units.MetricActvTe_B_Actl_UB     =  'SED';
    can.BodyInformation_2_MS.MetricActvTe_B_Actl_UB     =    (bitget(bb(2,:),5))';
    can.BodyInformation_2_MS.units.MetricActvTe_B_Actl     =  'SED';
    can.BodyInformation_2_MS.MetricActvTe_B_Actl     =    (bitget(bb(2,:),7))';
    can.BodyInformation_2_MS.units.Power_Liftgate_Mode_Cmd     =  'SED';
    can.BodyInformation_2_MS.Power_Liftgate_Mode_Cmd     =    (bitget(bb(6,:),3))';
    can.BodyInformation_2_MS.units.AirAmb_Te_Actl     =  'degC';
    can.BodyInformation_2_MS.AirAmb_Te_Actl     =    2.500000e-001*(2^2 * bb(7,:) + bitand(bitshift(bb(8,:),-6),3))' +-128.00;
    can.BodyInformation_2_MS.units.EngClntTe_D_Qf     =  'SED';
    can.BodyInformation_2_MS.EngClntTe_D_Qf     =    (bitand(bitshift(bb(6,:),-6),3))' ;
    can.BodyInformation_2_MS.units.Cross_Traffic_Cmd     =  'SED';
    can.BodyInformation_2_MS.Cross_Traffic_Cmd     =    (bitand(bitshift(bb(4,:),-1),3))' ;
    can.BodyInformation_2_MS.units.Side_Detect_Cmd     =  'SED';
    can.BodyInformation_2_MS.Side_Detect_Cmd     =    (bitand(bitshift(bb(4,:),-3),3))' ;
    can.BodyInformation_2_MS.units.SAPPStatusCoding     =  'SED';
    can.BodyInformation_2_MS.SAPPStatusCoding     =    (bb(5,:))' ;
    can.BodyInformation_2_MS.units.Delay_Accy     =  'SED';
    can.BodyInformation_2_MS.Delay_Accy     =    (bitget(bb(4,:),8))';
    can.BodyInformation_2_MS.units.Volume_Cutback     =  'SED';
    can.BodyInformation_2_MS.Volume_Cutback     =    (bitget(bb(1,:),8))';
    can.BodyInformation_2_MS.units.MetricActv_B_Actl     =  'SED';
    can.BodyInformation_2_MS.MetricActv_B_Actl     =    (bitget(bb(1,:),1))';
    can.BodyInformation_2_MS.units.DrStatTgate_B_Actl     =  'SED';
    can.BodyInformation_2_MS.DrStatTgate_B_Actl     =    (bitget(bb(1,:),2))';
    can.BodyInformation_2_MS.units.DrStatRr_B_Actl     =  'SED';
    can.BodyInformation_2_MS.DrStatRr_B_Actl     =    (bitget(bb(1,:),3))';
    can.BodyInformation_2_MS.units.DrStatRl_B_Actl     =  'SED';
    can.BodyInformation_2_MS.DrStatRl_B_Actl     =    (bitget(bb(1,:),4))';
    can.BodyInformation_2_MS.units.DrStatPsngr_B_Actl     =  'SED';
    can.BodyInformation_2_MS.DrStatPsngr_B_Actl     =    (bitget(bb(1,:),5))';
    can.BodyInformation_2_MS.units.DrStatInnrTgate_B_Actl     =  'SED';
    can.BodyInformation_2_MS.DrStatInnrTgate_B_Actl     =    (bitget(bb(1,:),6))';
    can.BodyInformation_2_MS.units.DrStatHood_B_Actl     =  'SED';
    can.BodyInformation_2_MS.DrStatHood_B_Actl     =    (bitget(bb(1,:),7))';
    can.BodyInformation_2_MS.units.DrStatDrv_B_Actl     =  'SED';
    can.BodyInformation_2_MS.DrStatDrv_B_Actl     =    (bitget(bb(2,:),3))';
    can.BodyInformation_2_MS.units.EngClnt_Te_Actl     =  'degC';
    can.BodyInformation_2_MS.EngClnt_Te_Actl     =    (bb(3,:))' +-60.00;
    can.BodyInformation_2_MS.units.AirAmbTe_D_Qf_UB     =  'SED';
    can.BodyInformation_2_MS.AirAmbTe_D_Qf_UB     =    (bitget(bb(8,:),4))';
    can.BodyInformation_2_MS.units.Volume_Cutback_UB     =  'SED';
    can.BodyInformation_2_MS.Volume_Cutback_UB     =    (bitget(bb(8,:),3))';
    can.BodyInformation_2_MS.units.Side_Detect_Cmd_UB     =  'SED';
    can.BodyInformation_2_MS.Side_Detect_Cmd_UB     =    (bitget(bb(8,:),2))';
    can.BodyInformation_2_MS.units.SAPPStatusCoding_UB     =  'SED';
    can.BodyInformation_2_MS.SAPPStatusCoding_UB     =    (bitget(bb(8,:),1))';
    can.BodyInformation_2_MS.units.Power_Liftgate_Mode_Cmd_UB     =  'SED';
    can.BodyInformation_2_MS.Power_Liftgate_Mode_Cmd_UB     =    (bitget(bb(2,:),8))';
    can.BodyInformation_2_MS.units.MetricActv_B_Actl_UB     =  'SED';
    can.BodyInformation_2_MS.MetricActv_B_Actl_UB     =    (bitget(bb(2,:),6))';
    can.BodyInformation_2_MS.units.Cross_Traffic_Cmd_UB     =  'SED';
    can.BodyInformation_2_MS.Cross_Traffic_Cmd_UB     =    (bitget(bb(2,:),4))';
    can.BodyInformation_2_MS.units.AirAmbTe_D_Qf     =  'SED';
    can.BodyInformation_2_MS.AirAmbTe_D_Qf     =    (bitand(bitshift(bb(8,:),-4),3))' ;
    can.BodyInformation_2_MS.units.AirAmb_Te_Actl_UB     =  'SED';
    can.BodyInformation_2_MS.AirAmb_Te_Actl_UB     =    (bitget(bb(6,:),1))';
    can.BodyInformation_2_MS.units.EngClnt_Te_Actl_UB     =  'unitless';
    can.BodyInformation_2_MS.EngClnt_Te_Actl_UB     =    (bitget(bb(4,:),1))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Delay_AccyM_for_P473
% Hex ID:3C6
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3C6 = hex2dec('3C6');

ix=find(msg == MSG_3C6);          % Find all message 0x3C6's
if ~isempty(ix)                   % If there are any ...
    can.Delay_AccyM_for_P473 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3C6 messages
    can.Delay_AccyM_for_P473.nsamples      = length(ix);
    can.Delay_AccyM_for_P473.ctime         = cantime(ix);

    can.Delay_AccyM_for_P473.units.Delay_Accy     =  'SED';
    can.Delay_AccyM_for_P473.Delay_Accy     =    (bitget(bb(1,:),8))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: CMPS_FDM_Info_StatusMS
% Hex ID:3C7
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3C7 = hex2dec('3C7');

ix=find(msg == MSG_3C7);          % Find all message 0x3C7's
if ~isempty(ix)                   % If there are any ...
    can.CMPS_FDM_Info_StatusMS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3C7 messages
    can.CMPS_FDM_Info_StatusMS.nsamples      = length(ix);
    can.CMPS_FDM_Info_StatusMS.ctime         = cantime(ix);

    can.CMPS_FDM_Info_StatusMS.units.Segment_MSD_UB     =  'SED';
    can.CMPS_FDM_Info_StatusMS.Segment_MSD_UB     =    (bitget(bb(5,:),6))';
    can.CMPS_FDM_Info_StatusMS.units.Segment_LSD_UB     =  'SED';
    can.CMPS_FDM_Info_StatusMS.Segment_LSD_UB     =    (bitget(bb(5,:),5))';
    can.CMPS_FDM_Info_StatusMS.units.Compass_Display_UB     =  'SED';
    can.CMPS_FDM_Info_StatusMS.Compass_Display_UB     =    (bitget(bb(5,:),4))';
    can.CMPS_FDM_Info_StatusMS.units.Segment_LSD     =  'Dimensionless';
    can.CMPS_FDM_Info_StatusMS.Segment_LSD     =    (bb(2,:))' ;
    can.CMPS_FDM_Info_StatusMS.units.Segment_MSD     =  'Dimensionless';
    can.CMPS_FDM_Info_StatusMS.Segment_MSD     =    (bb(1,:))' ;
    can.CMPS_FDM_Info_StatusMS.units.Cal_Icon     =  'SED';
    can.CMPS_FDM_Info_StatusMS.Cal_Icon     =    (bitget(bb(3,:),6))';
    can.CMPS_FDM_Info_StatusMS.units.Zone_Icon     =  'SED';
    can.CMPS_FDM_Info_StatusMS.Zone_Icon     =    (bitget(bb(3,:),7))';
    can.CMPS_FDM_Info_StatusMS.units.Compass_Display     =  'SED';
    can.CMPS_FDM_Info_StatusMS.Compass_Display     =    (bitget(bb(3,:),8))';
    can.CMPS_FDM_Info_StatusMS.units.Zone_Icon_UB     =  'SED';
    can.CMPS_FDM_Info_StatusMS.Zone_Icon_UB     =    (bitget(bb(5,:),3))';
    can.CMPS_FDM_Info_StatusMS.units.Cal_Icon_UB     =  'SED';
    can.CMPS_FDM_Info_StatusMS.Cal_Icon_UB     =    (bitget(bb(5,:),2))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EATC_FDM_Info_Status
% Hex ID:3C8
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3C8 = hex2dec('3C8');

ix=find(msg == MSG_3C8);          % Find all message 0x3C8's
if ~isempty(ix)                   % If there are any ...
    can.EATC_FDM_Info_Status = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3C8 messages
    can.EATC_FDM_Info_Status.nsamples      = length(ix);
    can.EATC_FDM_Info_Status.ctime         = cantime(ix);

    can.EATC_FDM_Info_Status.units.Outside_Rear_Temp_Digit3     =  'BCD';
    can.EATC_FDM_Info_Status.Outside_Rear_Temp_Digit3     =    (bitand(bitshift(bb(6,:),-4),15))' ;
    can.EATC_FDM_Info_Status.units.Outside_Rear_Temp_Digit2     =  'BCD';
    can.EATC_FDM_Info_Status.Outside_Rear_Temp_Digit2     =    (bitand(bb(5,:),15))' ;
    can.EATC_FDM_Info_Status.units.Outside_Rear_Temp_Digit1     =  'BCD';
    can.EATC_FDM_Info_Status.Outside_Rear_Temp_Digit1     =    (bitand(bitshift(bb(5,:),-4),15))' ;
    can.EATC_FDM_Info_Status.units.EATC_Out_Rear_Units     =  'SED';
    can.EATC_FDM_Info_Status.EATC_Out_Rear_Units     =    (bitand(bitshift(bb(8,:),-1),3))' ;
    can.EATC_FDM_Info_Status.units.Outside_Rear_Temp_Digit4     =  'SED';
    can.EATC_FDM_Info_Status.Outside_Rear_Temp_Digit4     =    (bitand(bitshift(bb(7,:),-6),3))' ;
    can.EATC_FDM_Info_Status.units.EATC_RHS_Units     =  'SED';
    can.EATC_FDM_Info_Status.EATC_RHS_Units     =    (bitand(bitshift(bb(8,:),-3),3))' ;
    can.EATC_FDM_Info_Status.units.EATC_Fan_Speed     =  'SED';
    can.EATC_FDM_Info_Status.EATC_Fan_Speed     =    (bitand(bitshift(bb(7,:),-1),7))' ;
    can.EATC_FDM_Info_Status.units.EATC_Outside_Rear_Display     =  'SED';
    can.EATC_FDM_Info_Status.EATC_Outside_Rear_Display     =    (bitand(bitshift(bb(8,:),-5),3))' ;
    can.EATC_FDM_Info_Status.units.RHS_Temp_Display_Digit2     =  'ASCII';
    can.EATC_FDM_Info_Status.RHS_Temp_Display_Digit2     =    (bb(4,:))' ;
    can.EATC_FDM_Info_Status.units.RHS_Temp_Display_Digit3     =  'SED';
    can.EATC_FDM_Info_Status.RHS_Temp_Display_Digit3     =    (bitand(bb(6,:),3))' ;
    can.EATC_FDM_Info_Status.units.RHS_Temp_Display_Digit1     =  'ASCII';
    can.EATC_FDM_Info_Status.RHS_Temp_Display_Digit1     =    (bb(3,:))' ;
    can.EATC_FDM_Info_Status.units.EATC_RHS_Display     =  'SED';
    can.EATC_FDM_Info_Status.EATC_RHS_Display     =    (bitget(bb(8,:),8))';
    can.EATC_FDM_Info_Status.units.LHS_Temp_Display_Digit3     =  'SED';
    can.EATC_FDM_Info_Status.LHS_Temp_Display_Digit3     =    (bitand(bitshift(bb(6,:),-2),3))' ;
    can.EATC_FDM_Info_Status.units.LHS_Temp_Display_Digit2     =  'ASCII';
    can.EATC_FDM_Info_Status.LHS_Temp_Display_Digit2     =    (bb(2,:))' ;
    can.EATC_FDM_Info_Status.units.LHS_Temp_Display_Digit1     =  'ASCII';
    can.EATC_FDM_Info_Status.LHS_Temp_Display_Digit1     =    (bb(1,:))' ;
    can.EATC_FDM_Info_Status.units.EATC_LHS_Display     =  'SED';
    can.EATC_FDM_Info_Status.EATC_LHS_Display     =    (bitget(bb(7,:),1))';
    can.EATC_FDM_Info_Status.units.EATC_LHS_Units     =  'SED';
    can.EATC_FDM_Info_Status.EATC_LHS_Units     =    (bitand(bitshift(bb(7,:),-4),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Aux_Body_Ctrl_Mod_Status
% Hex ID:3C9
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3C9 = hex2dec('3C9');

ix=find(msg == MSG_3C9);          % Find all message 0x3C9's
if ~isempty(ix)                   % If there are any ...
    can.Aux_Body_Ctrl_Mod_Status = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3C9 messages
    can.Aux_Body_Ctrl_Mod_Status.nsamples      = length(ix);
    can.Aux_Body_Ctrl_Mod_Status.ctime         = cantime(ix);

    can.Aux_Body_Ctrl_Mod_Status.units.Perimeter_Alrm_Intrus_Stat     =  'SED';
    can.Aux_Body_Ctrl_Mod_Status.Perimeter_Alrm_Intrus_Stat     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.Aux_Body_Ctrl_Mod_Status.units.Turn_Outage_Stat_Rt_Rear     =  'SED';
    can.Aux_Body_Ctrl_Mod_Status.Turn_Outage_Stat_Rt_Rear     =    (bitand(bitshift(bb(2,:),-6),3))' ;
    can.Aux_Body_Ctrl_Mod_Status.units.Turn_Outage_Stat_Left_Rear     =  'SED';
    can.Aux_Body_Ctrl_Mod_Status.Turn_Outage_Stat_Left_Rear     =    (bitand(bb(1,:),3))' ;
    can.Aux_Body_Ctrl_Mod_Status.units.Perimeter_Alrm_Inclin_Stat     =  'SED';
    can.Aux_Body_Ctrl_Mod_Status.Perimeter_Alrm_Inclin_Stat     =    (bitand(bitshift(bb(1,:),-4),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Veh_Characteristic_Set_2
% Hex ID:3D0
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3D0 = hex2dec('3D0');

ix=find(msg == MSG_3D0);          % Find all message 0x3D0's
if ~isempty(ix)                   % If there are any ...
    can.Veh_Characteristic_Set_2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3D0 messages
    can.Veh_Characteristic_Set_2.nsamples      = length(ix);
    can.Veh_Characteristic_Set_2.ctime         = cantime(ix);

    can.Veh_Characteristic_Set_2.units.VehMykey_Vl_LimRq_UB     =  'SED';
    can.Veh_Characteristic_Set_2.VehMykey_Vl_LimRq_UB     =    (bitget(bb(2,:),1))';
    can.Veh_Characteristic_Set_2.units.CamraFrntStat_D_Stat     =  'SED';
    can.Veh_Characteristic_Set_2.CamraFrntStat_D_Stat     =    (bitand(bitshift(bb(3,:),-4),3))' ;
    can.Veh_Characteristic_Set_2.units.CamraZoomMan_D_Actl     =  'SED';
    can.Veh_Characteristic_Set_2.CamraZoomMan_D_Actl     =    (bitand(bitshift(bb(2,:),-2),7))' ;
    can.Veh_Characteristic_Set_2.units.CamZoomActiveState     =  'SED';
    can.Veh_Characteristic_Set_2.CamZoomActiveState     =    (bitand(bb(3,:),3))' ;
    can.Veh_Characteristic_Set_2.units.CamraOvrlStat_D_Actl     =  'SED';
    can.Veh_Characteristic_Set_2.CamraOvrlStat_D_Actl     =    (bitand(bitshift(bb(3,:),-2),3))' ;
    can.Veh_Characteristic_Set_2.units.CamraOvrlDyn_D_Actl     =  'SED';
    can.Veh_Characteristic_Set_2.CamraOvrlDyn_D_Actl     =    (bitand(bitshift(bb(5,:),-6),3))' ;
    can.Veh_Characteristic_Set_2.units.CamPDCGuidStat     =  'SED';
    can.Veh_Characteristic_Set_2.CamPDCGuidStat     =    (bitand(bitshift(bb(4,:),-6),3))' ;
    can.Veh_Characteristic_Set_2.units.VehMykey_Vl_LimRq     =  'SED';
    can.Veh_Characteristic_Set_2.VehMykey_Vl_LimRq     =    (bitget(bb(2,:),7))';
    can.Veh_Characteristic_Set_2.units.IgnKeyType_D_Actl     =  'SED';
    can.Veh_Characteristic_Set_2.IgnKeyType_D_Actl     =    (bitand(bitshift(bb(1,:),-1),15))' ;
    can.Veh_Characteristic_Set_2.units.New_Module_Attn_Event     =  'SED';
    can.Veh_Characteristic_Set_2.New_Module_Attn_Event     =    (bitget(bb(1,:),1))';
    can.Veh_Characteristic_Set_2.units.Beltminder_Warn_Stats     =  'SED';
    can.Veh_Characteristic_Set_2.Beltminder_Warn_Stats     =    (bitget(bb(2,:),2))';
    can.Veh_Characteristic_Set_2.units.Attn_Info_Audio     =  'SED';
    can.Veh_Characteristic_Set_2.Attn_Info_Audio     =    (bitand(bitshift(bb(1,:),-5),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ClmtCtrlSeat_SetCmd_LRPM
% Hex ID:3D1
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3D1 = hex2dec('3D1');

ix=find(msg == MSG_3D1);          % Find all message 0x3D1's
if ~isempty(ix)                   % If there are any ...
    can.ClmtCtrlSeat_SetCmd_LRPM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3D1 messages
    can.ClmtCtrlSeat_SetCmd_LRPM.nsamples      = length(ix);
    can.ClmtCtrlSeat_SetCmd_LRPM.ctime         = cantime(ix);

    can.ClmtCtrlSeat_SetCmd_LRPM.units.ClmtCtrlSeat_SetCmd_LRP     =  'SED';
    can.ClmtCtrlSeat_SetCmd_LRPM.ClmtCtrlSeat_SetCmd_LRP     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ClmtCtrlSeat_SetStat_LRPM
% Hex ID:3D2
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3D2 = hex2dec('3D2');

ix=find(msg == MSG_3D2);          % Find all message 0x3D2's
if ~isempty(ix)                   % If there are any ...
    can.ClmtCtrlSeat_SetStat_LRPM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3D2 messages
    can.ClmtCtrlSeat_SetStat_LRPM.nsamples      = length(ix);
    can.ClmtCtrlSeat_SetStat_LRPM.ctime         = cantime(ix);

    can.ClmtCtrlSeat_SetStat_LRPM.units.ClmtCtrlSeat_SetStat_LRP     =  'SED';
    can.ClmtCtrlSeat_SetStat_LRPM.ClmtCtrlSeat_SetStat_LRP     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ClmtCtrlSeat_SetCmd_RRPM
% Hex ID:3D3
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3D3 = hex2dec('3D3');

ix=find(msg == MSG_3D3);          % Find all message 0x3D3's
if ~isempty(ix)                   % If there are any ...
    can.ClmtCtrlSeat_SetCmd_RRPM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3D3 messages
    can.ClmtCtrlSeat_SetCmd_RRPM.nsamples      = length(ix);
    can.ClmtCtrlSeat_SetCmd_RRPM.ctime         = cantime(ix);

    can.ClmtCtrlSeat_SetCmd_RRPM.units.ClmtCtrlSeat_SetCmd_RRP     =  'SED';
    can.ClmtCtrlSeat_SetCmd_RRPM.ClmtCtrlSeat_SetCmd_RRP     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ClmtCtrlSeat_SetStat_RRPM
% Hex ID:3D4
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3D4 = hex2dec('3D4');

ix=find(msg == MSG_3D4);          % Find all message 0x3D4's
if ~isempty(ix)                   % If there are any ...
    can.ClmtCtrlSeat_SetStat_RRPM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3D4 messages
    can.ClmtCtrlSeat_SetStat_RRPM.nsamples      = length(ix);
    can.ClmtCtrlSeat_SetStat_RRPM.ctime         = cantime(ix);

    can.ClmtCtrlSeat_SetStat_RRPM.units.ClmtCtrlSeat_SetStat_RRP     =  'SED';
    can.ClmtCtrlSeat_SetStat_RRPM.ClmtCtrlSeat_SetStat_RRP     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Rear_HVAC_Control_Status
% Hex ID:3D5
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3D5 = hex2dec('3D5');

ix=find(msg == MSG_3D5);          % Find all message 0x3D5's
if ~isempty(ix)                   % If there are any ...
    can.Rear_HVAC_Control_Status = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3D5 messages
    can.Rear_HVAC_Control_Status.nsamples      = length(ix);
    can.Rear_HVAC_Control_Status.ctime         = cantime(ix);

    can.Rear_HVAC_Control_Status.units.Temp_Knob_Position     =  'Degrees CW';
    can.Rear_HVAC_Control_Status.Temp_Knob_Position     =    (2^1 * bb(3,:) + bitand(bitshift(bb(4,:),-7),1))' ;
    can.Rear_HVAC_Control_Status.units.Rear_Lock_Ind_State     =  'SED';
    can.Rear_HVAC_Control_Status.Rear_Lock_Ind_State     =    (bitget(bb(2,:),6))';
    can.Rear_HVAC_Control_Status.units.Blower_Knob_Position     =  'Degrees CW';
    can.Rear_HVAC_Control_Status.Blower_Knob_Position     =    (2^1 * bb(1,:) + bitand(bitshift(bb(2,:),-7),1))' ;
    can.Rear_HVAC_Control_Status.units.AUTO_Ind_State     =  'SED';
    can.Rear_HVAC_Control_Status.AUTO_Ind_State     =    (bitget(bb(2,:),5))';
    can.Rear_HVAC_Control_Status.units.Panel_Mode_Ind_State     =  'SED';
    can.Rear_HVAC_Control_Status.Panel_Mode_Ind_State     =    (bitget(bb(2,:),4))';
    can.Rear_HVAC_Control_Status.units.Panel_Floor_Md_Ind_State     =  'SED';
    can.Rear_HVAC_Control_Status.Panel_Floor_Md_Ind_State     =    (bitand(bitshift(bb(2,:),-1),3))' ;
    can.Rear_HVAC_Control_Status.units.Floor_Mode_Ind_State     =  'SED';
    can.Rear_HVAC_Control_Status.Floor_Mode_Ind_State     =    (bitget(bb(2,:),1))';
    can.Rear_HVAC_Control_Status.units.Power_Status     =  'SED';
    can.Rear_HVAC_Control_Status.Power_Status     =    (bitget(bb(2,:),7))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Rear_HVAC_Control_Update
% Hex ID:3D6
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3D6 = hex2dec('3D6');

ix=find(msg == MSG_3D6);          % Find all message 0x3D6's
if ~isempty(ix)                   % If there are any ...
    can.Rear_HVAC_Control_Update = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3D6 messages
    can.Rear_HVAC_Control_Update.nsamples      = length(ix);
    can.Rear_HVAC_Control_Update.ctime         = cantime(ix);

    can.Rear_HVAC_Control_Update.units.Power_State_Commanded     =  'SED';
    can.Rear_HVAC_Control_Update.Power_State_Commanded     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.Rear_HVAC_Control_Update.units.Rear_Lock_Indicator     =  'SED';
    can.Rear_HVAC_Control_Update.Rear_Lock_Indicator     =    (bitget(bb(2,:),8))';
    can.Rear_HVAC_Control_Update.units.Panel_Floor_Mode_Indicator     =  'SED';
    can.Rear_HVAC_Control_Update.Panel_Floor_Mode_Indicator     =    (bitand(bitshift(bb(1,:),-3),3))' ;
    can.Rear_HVAC_Control_Update.units.R_Floor_Mode_Indicator     =  'SED';
    can.Rear_HVAC_Control_Update.R_Floor_Mode_Indicator     =    (bitget(bb(1,:),3))';
    can.Rear_HVAC_Control_Update.units.AUTO_Mode_Indicator     =  'SED';
    can.Rear_HVAC_Control_Update.AUTO_Mode_Indicator     =    (bitand(bb(1,:),3))' ;
    can.Rear_HVAC_Control_Update.units.F_Panel_Mode_Indicator     =  'SED';
    can.Rear_HVAC_Control_Update.F_Panel_Mode_Indicator     =    (bitget(bb(2,:),6))';
    can.Rear_HVAC_Control_Update.units.R_Panel_Mode_Indicator     =  'SED';
    can.Rear_HVAC_Control_Update.R_Panel_Mode_Indicator     =    (bitand(bitshift(bb(2,:),-3),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_APIM_Data3_MS
% Hex ID:3DA
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3DA = hex2dec('3DA');

ix=find(msg == MSG_3DA);          % Find all message 0x3DA's
if ~isempty(ix)                   % If there are any ...
    can.Personality_APIM_Data3_MS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3DA messages
    can.Personality_APIM_Data3_MS.nsamples      = length(ix);
    can.Personality_APIM_Data3_MS.ctime         = cantime(ix);

    can.Personality_APIM_Data3_MS.units.LightAmbIntSwtchInc_B     =  'SED';
    can.Personality_APIM_Data3_MS.LightAmbIntSwtchInc_B     =    (bitget(bb(3,:),7))';
    can.Personality_APIM_Data3_MS.units.LightAmbIntSwtchDec_B     =  'SED';
    can.Personality_APIM_Data3_MS.LightAmbIntSwtchDec_B     =    (bitget(bb(3,:),6))';
    can.Personality_APIM_Data3_MS.units.LightAmbIntsty_No_Rq     =  '% Intensity';
    can.Personality_APIM_Data3_MS.LightAmbIntsty_No_Rq     =    (bb(2,:))' ;
    can.Personality_APIM_Data3_MS.units.LightAmbColor_No_Rq     =  'Color Index';
    can.Personality_APIM_Data3_MS.LightAmbColor_No_Rq     =    (bb(1,:))' ;
    can.Personality_APIM_Data3_MS.units.LightAmbClrSwtchInc_B     =  'SED';
    can.Personality_APIM_Data3_MS.LightAmbClrSwtchInc_B     =    (bitget(bb(3,:),5))';
    can.Personality_APIM_Data3_MS.units.LightAmbClrSwtchDec_B     =  'SED';
    can.Personality_APIM_Data3_MS.LightAmbClrSwtchDec_B     =    (bitget(bb(3,:),8))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RHVAC_Data
% Hex ID:3DB
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3DB = hex2dec('3DB');

ix=find(msg == MSG_3DB);          % Find all message 0x3DB's
if ~isempty(ix)                   % If there are any ...
    can.RHVAC_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3DB messages
    can.RHVAC_Data.nsamples      = length(ix);
    can.RHVAC_Data.ctime         = cantime(ix);

    can.RHVAC_Data.units.CamraDefog_B_Actl     =  'SED';
    can.RHVAC_Data.CamraDefog_B_Actl     =    (bitget(bb(1,:),8))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_Data_MS
% Hex ID:3E0
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3E0 = hex2dec('3E0');

ix=find(msg == MSG_3E0);          % Find all message 0x3E0's
if ~isempty(ix)                   % If there are any ...
    can.Personality_Data_MS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3E0 messages
    can.Personality_Data_MS.nsamples      = length(ix);
    can.Personality_Data_MS.ctime         = cantime(ix);

    can.Personality_Data_MS.units.PersSetupRestr_D_Actl     =  'SED';
    can.Personality_Data_MS.PersSetupRestr_D_Actl     =    (bitand(bitshift(bb(6,:),-4),3))' ;
    can.Personality_Data_MS.units.PersSetupAccessCtrl     =  'SES';
    can.Personality_Data_MS.PersSetupAccessCtrl     =    (bitget(bb(6,:),4))';
    can.Personality_Data_MS.units.PersSetup_No_Actl     =  'Number';
    can.Personality_Data_MS.PersSetup_No_Actl     =    (2^8 * bb(7,:) + bb(8,:))' ;
    can.Personality_Data_MS.units.MsgCntrPersIndex_D_Rq_UB     =  'SED';
    can.Personality_Data_MS.MsgCntrPersIndex_D_Rq_UB     =    (bitget(bb(6,:),8))';
    can.Personality_Data_MS.units.MsgCntrFeatNoRq_UB     =  'SED';
    can.Personality_Data_MS.MsgCntrFeatNoRq_UB     =    (bitget(bb(6,:),7))';
    can.Personality_Data_MS.units.MsgCntrFeatConfigRq_UB     =  'SED';
    can.Personality_Data_MS.MsgCntrFeatConfigRq_UB     =    (bitget(bb(5,:),2))';
    can.Personality_Data_MS.units.MsgCntrDsplyOp_D_Rq_UB     =  'SED';
    can.Personality_Data_MS.MsgCntrDsplyOp_D_Rq_UB     =    (bitget(bb(5,:),1))';
    can.Personality_Data_MS.units.MsgCntrPersIndex_D_Rq     =  'SED';
    can.Personality_Data_MS.MsgCntrPersIndex_D_Rq     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.Personality_Data_MS.units.MsgCntrFeatConfigRq     =  'Undefined';
    can.Personality_Data_MS.MsgCntrFeatConfigRq     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.Personality_Data_MS.units.MsgCntrFeatNoRq     =  'Number';
    can.Personality_Data_MS.MsgCntrFeatNoRq     =    (2^8 * bb(1,:) + bb(2,:))' ;
    can.Personality_Data_MS.units.MsgCntrDsplyOp_D_Rq     =  'SED';
    can.Personality_Data_MS.MsgCntrDsplyOp_D_Rq     =    (bitand(bitshift(bb(5,:),-2),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_DSM_Data
% Hex ID:3E1
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3E1 = hex2dec('3E1');

ix=find(msg == MSG_3E1);          % Find all message 0x3E1's
if ~isempty(ix)                   % If there are any ...
    can.Personality_DSM_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3E1 messages
    can.Personality_DSM_Data.nsamples      = length(ix);
    can.Personality_DSM_Data.ctime         = cantime(ix);

    can.Personality_DSM_Data.units.PersIndexDsm_D_Actl     =  'SED';
    can.Personality_DSM_Data.PersIndexDsm_D_Actl     =    (bitand(bitshift(bb(6,:),-5),7))' ;
    can.Personality_DSM_Data.units.FeatNoDsmActl     =  'Number';
    can.Personality_DSM_Data.FeatNoDsmActl     =    (2^8 * bb(4,:) + bb(5,:))' ;
    can.Personality_DSM_Data.units.FeatConfigDsmActl     =  'Undefined';
    can.Personality_DSM_Data.FeatConfigDsmActl     =    (2^8 * bb(2,:) + bb(3,:))' ;
    can.Personality_DSM_Data.units.PersStore_D_Actl     =  'SED';
    can.Personality_DSM_Data.PersStore_D_Actl     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.Personality_DSM_Data.units.MemSwtch_D_RqRecall     =  'SED';
    can.Personality_DSM_Data.MemSwtch_D_RqRecall     =    (bitand(bitshift(bb(1,:),-3),7))' ;
    can.Personality_DSM_Data.units.MemSwtch_D_RqAssoc     =  'SED';
    can.Personality_DSM_Data.MemSwtch_D_RqAssoc     =    (bitand(bb(1,:),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_Data_MS_2
% Hex ID:3E2
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3E2 = hex2dec('3E2');

ix=find(msg == MSG_3E2);          % Find all message 0x3E2's
if ~isempty(ix)                   % If there are any ...
    can.Personality_Data_MS_2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3E2 messages
    can.Personality_Data_MS_2.nsamples      = length(ix);
    can.Personality_Data_MS_2.ctime         = cantime(ix);

    can.Personality_Data_MS_2.units.RecallEvent_No_Cnt     =  'Counts';
    can.Personality_Data_MS_2.RecallEvent_No_Cnt     =    (bb(8,:))' ;
    can.Personality_Data_MS_2.units.PersNo_D_Actl     =  'SED';
    can.Personality_Data_MS_2.PersNo_D_Actl     =    (bitand(bitshift(bb(7,:),-5),7))' ;
    can.Personality_Data_MS_2.units.PersNoPos_D_Actl     =  'SED';
    can.Personality_Data_MS_2.PersNoPos_D_Actl     =    (bitand(bitshift(bb(6,:),-2),7))' ;
    can.Personality_Data_MS_2.units.PersStore_D_Rq_UB     =  'SED';
    can.Personality_Data_MS_2.PersStore_D_Rq_UB     =    (bitget(bb(6,:),2))';
    can.Personality_Data_MS_2.units.CtrStkPersIndex_D_Actl_UB     =  'SED';
    can.Personality_Data_MS_2.CtrStkPersIndex_D_Actl_UB     =    (bitget(bb(6,:),1))';
    can.Personality_Data_MS_2.units.CtrStkFeatNoActl_UB     =  'SED';
    can.Personality_Data_MS_2.CtrStkFeatNoActl_UB     =    (bitget(bb(7,:),5))';
    can.Personality_Data_MS_2.units.CtrStkFeatConfigActl_UB     =  'SED';
    can.Personality_Data_MS_2.CtrStkFeatConfigActl_UB     =    (bitget(bb(5,:),2))';
    can.Personality_Data_MS_2.units.CtrStkDsplyOp_D_Rq_UB     =  'SED';
    can.Personality_Data_MS_2.CtrStkDsplyOp_D_Rq_UB     =    (bitget(bb(5,:),1))';
    can.Personality_Data_MS_2.units.CtrStkPersIndex_D_Actl     =  'SED';
    can.Personality_Data_MS_2.CtrStkPersIndex_D_Actl     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.Personality_Data_MS_2.units.CtrStkFeatNoActl     =  'Undefined';
    can.Personality_Data_MS_2.CtrStkFeatNoActl     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.Personality_Data_MS_2.units.PersStore_D_Rq     =  'SED';
    can.Personality_Data_MS_2.PersStore_D_Rq     =    (bitand(bitshift(bb(5,:),-2),7))' ;
    can.Personality_Data_MS_2.units.CtrStkFeatConfigActl     =  'Undefined';
    can.Personality_Data_MS_2.CtrStkFeatConfigActl     =    (2^8 * bb(1,:) + bb(2,:))' ;
    can.Personality_Data_MS_2.units.CtrStkDsplyOp_D_Rq     =  'SED';
    can.Personality_Data_MS_2.CtrStkDsplyOp_D_Rq     =    (bitand(bitshift(bb(6,:),-5),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_HCMB_Data
% Hex ID:3E4
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3E4 = hex2dec('3E4');

ix=find(msg == MSG_3E4);          % Find all message 0x3E4's
if ~isempty(ix)                   % If there are any ...
    can.Personality_HCMB_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3E4 messages
    can.Personality_HCMB_Data.nsamples      = length(ix);
    can.Personality_HCMB_Data.ctime         = cantime(ix);

    can.Personality_HCMB_Data.units.PersIndexHcmb_D_Actl     =  'SED';
    can.Personality_HCMB_Data.PersIndexHcmb_D_Actl     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.Personality_HCMB_Data.units.FeatNoHcmbActl     =  'Number';
    can.Personality_HCMB_Data.FeatNoHcmbActl     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.Personality_HCMB_Data.units.FeatConfigHcmbActl     =  'Undefined';
    can.Personality_HCMB_Data.FeatConfigHcmbActl     =    (2^8 * bb(1,:) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_HVAC_Data
% Hex ID:3E7
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3E7 = hex2dec('3E7');

ix=find(msg == MSG_3E7);          % Find all message 0x3E7's
if ~isempty(ix)                   % If there are any ...
    can.Personality_HVAC_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3E7 messages
    can.Personality_HVAC_Data.nsamples      = length(ix);
    can.Personality_HVAC_Data.ctime         = cantime(ix);

    can.Personality_HVAC_Data.units.LightAmbIntsty_No_Actl     =  '% Intensity';
    can.Personality_HVAC_Data.LightAmbIntsty_No_Actl     =    (bb(7,:))' ;
    can.Personality_HVAC_Data.units.LightAmbColor_No_Actl     =  'Color Index';
    can.Personality_HVAC_Data.LightAmbColor_No_Actl     =    (bb(6,:))' ;
    can.Personality_HVAC_Data.units.PersIndexHvac_D_Actl     =  'SED';
    can.Personality_HVAC_Data.PersIndexHvac_D_Actl     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.Personality_HVAC_Data.units.FeatNoHvacActl     =  'Number';
    can.Personality_HVAC_Data.FeatNoHvacActl     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.Personality_HVAC_Data.units.FeatConfigHvacActl     =  'Undefined';
    can.Personality_HVAC_Data.FeatConfigHvacActl     =    (2^8 * bb(1,:) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ACM_Status_Message
% Hex ID:3E8
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3E8 = hex2dec('3E8');

ix=find(msg == MSG_3E8);          % Find all message 0x3E8's
if ~isempty(ix)                   % If there are any ...
    can.ACM_Status_Message = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3E8 messages
    can.ACM_Status_Message.nsamples      = length(ix);
    can.ACM_Status_Message.ctime         = cantime(ix);

    can.ACM_Status_Message.units.Multimedia_System     =  'SED';
    can.ACM_Status_Message.Multimedia_System     =    (bitget(bb(4,:),3))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_RFA_Data
% Hex ID:3E9
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3E9 = hex2dec('3E9');

ix=find(msg == MSG_3E9);          % Find all message 0x3E9's
if ~isempty(ix)                   % If there are any ...
    can.Personality_RFA_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3E9 messages
    can.Personality_RFA_Data.nsamples      = length(ix);
    can.Personality_RFA_Data.ctime         = cantime(ix);

    can.Personality_RFA_Data.units.PersIndexRfa_D_Actl     =  'SED';
    can.Personality_RFA_Data.PersIndexRfa_D_Actl     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.Personality_RFA_Data.units.FeatNoRfaActl     =  'Number';
    can.Personality_RFA_Data.FeatNoRfaActl     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.Personality_RFA_Data.units.FeatConfigRfaActl     =  'Undefined';
    can.Personality_RFA_Data.FeatConfigRfaActl     =    (2^8 * bb(1,:) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_RHVAC_Data
% Hex ID:3ED
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3ED = hex2dec('3ED');

ix=find(msg == MSG_3ED);          % Find all message 0x3ED's
if ~isempty(ix)                   % If there are any ...
    can.Personality_RHVAC_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3ED messages
    can.Personality_RHVAC_Data.nsamples      = length(ix);
    can.Personality_RHVAC_Data.ctime         = cantime(ix);

    can.Personality_RHVAC_Data.units.PersIndexRhvac_D_Actl     =  'SED';
    can.Personality_RHVAC_Data.PersIndexRhvac_D_Actl     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.Personality_RHVAC_Data.units.FeatNoRhvacActl     =  'Number';
    can.Personality_RHVAC_Data.FeatNoRhvacActl     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.Personality_RHVAC_Data.units.FeatConfigRhvacActl     =  'Undefined';
    can.Personality_RHVAC_Data.FeatConfigRhvacActl     =    (2^8 * bb(1,:) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Nav_HMI_Status
% Hex ID:3EE
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3EE = hex2dec('3EE');

ix=find(msg == MSG_3EE);          % Find all message 0x3EE's
if ~isempty(ix)                   % If there are any ...
    can.Nav_HMI_Status = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3EE messages
    can.Nav_HMI_Status.nsamples      = length(ix);
    can.Nav_HMI_Status.ctime         = cantime(ix);

    can.Nav_HMI_Status.units.Nav_Unit_Setting     =  'SED';
    can.Nav_HMI_Status.Nav_Unit_Setting     =    (bitget(bb(2,:),7))';
    can.Nav_HMI_Status.units.Fuel_Econ_AFE_Reset_Req     =  'SED';
    can.Nav_HMI_Status.Fuel_Econ_AFE_Reset_Req     =    (bitget(bb(2,:),8))';
    can.Nav_HMI_Status.units.DistanceBarSetting     =  'SED';
    can.Nav_HMI_Status.DistanceBarSetting     =    (bitget(bb(3,:),8))';
    can.Nav_HMI_Status.units.CamraZoomMan_D_Rq     =  'SED';
    can.Nav_HMI_Status.CamraZoomMan_D_Rq     =    (bitand(bitshift(bb(3,:),-4),7))' ;
    can.Nav_HMI_Status.units.CamraOvrlStat_D_Rq     =  'SED';
    can.Nav_HMI_Status.CamraOvrlStat_D_Rq     =    (bitget(bb(3,:),4))';
    can.Nav_HMI_Status.units.CamraOvrlDyn_D_Rq     =  'SED';
    can.Nav_HMI_Status.CamraOvrlDyn_D_Rq     =    (bitget(bb(3,:),3))';
    can.Nav_HMI_Status.units.CamAutoTowbarZoom     =  'SED';
    can.Nav_HMI_Status.CamAutoTowbarZoom     =    (bitget(bb(3,:),2))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Reserve_3FF_MKX_Audio
% Hex ID:3FF
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3FF = hex2dec('3FF');

ix=find(msg == MSG_3FF);          % Find all message 0x3FF's
if ~isempty(ix)                   % If there are any ...
    can.Reserve_3FF_MKX_Audio = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3FF messages
    can.Reserve_3FF_MKX_Audio.nsamples      = length(ix);
    can.Reserve_3FF_MKX_Audio.ctime         = cantime(ix);

    can.Reserve_3FF_MKX_Audio.units.reserve     =  'unitless';
    can.Reserve_3FF_MKX_Audio.reserve     =    (bitget(bb(1,:),8))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: GGCC_Config_Mgmt_ID_1
% Hex ID:40A
% Last edited by: selwart
% Date:26-Apr-2011
MSG_40A = hex2dec('40A');

ix=find(msg == MSG_40A);          % Find all message 0x40A's
if ~isempty(ix)                   % If there are any ...
    can.GGCC_Config_Mgmt_ID_1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x40A messages
    can.GGCC_Config_Mgmt_ID_1.nsamples      = length(ix);
    can.GGCC_Config_Mgmt_ID_1.ctime         = cantime(ix);

    can.GGCC_Config_Mgmt_ID_1.units.VehicleGGCCData     =  'mixed';
    can.GGCC_Config_Mgmt_ID_1.VehicleGGCCData     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Climate_Control_Data
% Hex ID:41A
% Last edited by: selwart
% Date:26-Apr-2011
MSG_41A = hex2dec('41A');

ix=find(msg == MSG_41A);          % Find all message 0x41A's
if ~isempty(ix)                   % If there are any ...
    can.Climate_Control_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x41A messages
    can.Climate_Control_Data.nsamples      = length(ix);
    can.Climate_Control_Data.ctime         = cantime(ix);

    can.Climate_Control_Data.units.SecondaryHeater_Rqst     =  'SED';
    can.Climate_Control_Data.SecondaryHeater_Rqst     =    (bitget(bb(4,:),8))';
    can.Climate_Control_Data.units.Passenger_Sunload_Raw     =  'W/m^2';
    can.Climate_Control_Data.Passenger_Sunload_Raw     =    5.000000e+000*(bb(2,:))' ;
    can.Climate_Control_Data.units.Driver_Sunload_Raw     =  'W/m^2';
    can.Climate_Control_Data.Driver_Sunload_Raw     =    5.000000e+000*(bb(1,:))' ;
    can.Climate_Control_Data.units.HvacEvap_Te_Rq     =  'Degrees C';
    can.Climate_Control_Data.HvacEvap_Te_Rq     =    1.250000e-001*(2^6 * bitand(bb(6,:),15) + bitand(bitshift(bb(7,:),-2),63))' +-50.00;
    can.Climate_Control_Data.units.HvacRemoteStrt_N_Rq     =  'RPM';
    can.Climate_Control_Data.HvacRemoteStrt_N_Rq     =    1.000000e+002*(bitand(bitshift(bb(6,:),-4),15))' +450.00;
    can.Climate_Control_Data.units.Remote_Start_QuietMode     =  'SED';
    can.Climate_Control_Data.Remote_Start_QuietMode     =    (bitget(bb(4,:),5))';
    can.Climate_Control_Data.units.InCarTempQF     =  'SED';
    can.Climate_Control_Data.InCarTempQF     =    (bitand(bitshift(bb(4,:),-5),3))' ;
    can.Climate_Control_Data.units.HvacAirCond_B_Rq     =  'SED';
    can.Climate_Control_Data.HvacAirCond_B_Rq     =    (bitget(bb(4,:),4))';
    can.Climate_Control_Data.units.InCarTemp     =  'degreesC';
    can.Climate_Control_Data.InCarTemp     =    5.000000e-001*(bb(5,:))' +-57.00;
    can.Climate_Control_Data.units.Outside_Air_Temp_Stat     =  'Degrees C';
    can.Climate_Control_Data.Outside_Air_Temp_Stat     =    5.000000e-001*(bb(3,:))' +-40.00;
    can.Climate_Control_Data.units.HvacEvap_Te_Actl     =  'Degrees C';
    can.Climate_Control_Data.HvacEvap_Te_Actl     =    1.250000e-001*(2^8 * bitand(bb(7,:),3) + bb(8,:))' +-50.00;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Engine_Data_MS
% Hex ID:423
% Last edited by: selwart
% Date:26-Apr-2011
MSG_423 = hex2dec('423');

ix=find(msg == MSG_423);          % Find all message 0x423's
if ~isempty(ix)                   % If there are any ...
    can.Engine_Data_MS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x423 messages
    can.Engine_Data_MS.nsamples      = length(ix);
    can.Engine_Data_MS.ctime         = cantime(ix);

    can.Engine_Data_MS.units.Res_UreaLvlLo_B_Dsply_UB     =  'SED';
    can.Engine_Data_MS.Res_UreaLvlLo_B_Dsply_UB     =    (bitget(bb(5,:),4))';
    can.Engine_Data_MS.units.Res_UreaLvlLo_B_Dsply     =  'SED';
    can.Engine_Data_MS.Res_UreaLvlLo_B_Dsply     =    (bitget(bb(5,:),5))';
    can.Engine_Data_MS.units.Fuel_Level_State     =  'SED';
    can.Engine_Data_MS.Fuel_Level_State     =    (bitand(bitshift(bb(6,:),-6),3))' ;
    can.Engine_Data_MS.units.AwdOffRoadMode_D_Stats_UB     =  'SED';
    can.Engine_Data_MS.AwdOffRoadMode_D_Stats_UB     =    (bitget(bb(7,:),8))';
    can.Engine_Data_MS.units.AwdRnge_D_Actl_UB     =  'SED';
    can.Engine_Data_MS.AwdRnge_D_Actl_UB     =    (bitget(bb(6,:),3))';
    can.Engine_Data_MS.units.RearDiffLckLamp_D_Rq_UB     =  'SED';
    can.Engine_Data_MS.RearDiffLckLamp_D_Rq_UB     =    (bitget(bb(5,:),1))';
    can.Engine_Data_MS.units.AwdOffRoadMode_D_Stats     =  'SED';
    can.Engine_Data_MS.AwdOffRoadMode_D_Stats     =    (bitand(bb(6,:),3))' ;
    can.Engine_Data_MS.units.AwdRnge_D_Actl     =  'SED';
    can.Engine_Data_MS.AwdRnge_D_Actl     =    (bitand(bitshift(bb(6,:),-3),7))' ;
    can.Engine_Data_MS.units.RearDiffLckLamp_D_Rq     =  'SED';
    can.Engine_Data_MS.RearDiffLckLamp_D_Rq     =    (bitand(bitshift(bb(5,:),-1),3))' ;
    can.Engine_Data_MS.units.VEH_SPD     =  'KPH';
    can.Engine_Data_MS.VEH_SPD     =    1.000000e-002*(2^8 * bb(1,:) + bb(2,:))' +-100.00;
    can.Engine_Data_MS.units.ENG_SPD     =  'RPM';
    can.Engine_Data_MS.ENG_SPD     =    2.500000e-001*(2^8 * bb(3,:) + bb(4,:))' ;
    can.Engine_Data_MS.units.Fuel_Level_State_UB     =  'SED';
    can.Engine_Data_MS.Fuel_Level_State_UB     =    (bitget(bb(5,:),6))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Engine_Data_2_MS
% Hex ID:425
% Last edited by: selwart
% Date:26-Apr-2011
MSG_425 = hex2dec('425');

ix=find(msg == MSG_425);          % Find all message 0x425's
if ~isempty(ix)                   % If there are any ...
    can.Engine_Data_2_MS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x425 messages
    can.Engine_Data_2_MS.nsamples      = length(ix);
    can.Engine_Data_2_MS.ctime         = cantime(ix);

    can.Engine_Data_2_MS.units.RstrnImpactEvntStatus_UB     =  'SED';
    can.Engine_Data_2_MS.RstrnImpactEvntStatus_UB     =    (bitget(bb(8,:),1))';
    can.Engine_Data_2_MS.units.EngAirIn_Te_Actl_UB     =  'SED';
    can.Engine_Data_2_MS.EngAirIn_Te_Actl_UB     =    (bitget(bb(8,:),5))';
    can.Engine_Data_2_MS.units.EngAirIn_Te_Actl     =  'degC';
    can.Engine_Data_2_MS.EngAirIn_Te_Actl     =    2.500000e-001*(2^2 * bb(7,:) + bitand(bitshift(bb(8,:),-6),3))' +-128.00;
    can.Engine_Data_2_MS.units.ACCompressorDisp_UB     =  'SED';
    can.Engine_Data_2_MS.ACCompressorDisp_UB     =    (bitget(bb(8,:),6))';
    can.Engine_Data_2_MS.units.ACCompressorDisp     =  'Percent';
    can.Engine_Data_2_MS.ACCompressorDisp     =    (bitand(bb(6,:),127))' ;
    can.Engine_Data_2_MS.units.RstrnImpactEvntStatus     =  'SED';
    can.Engine_Data_2_MS.RstrnImpactEvntStatus     =    (bitand(bitshift(bb(8,:),-1),7))' ;
    can.Engine_Data_2_MS.units.EngAout_N_Actl_UB     =  'SED';
    can.Engine_Data_2_MS.EngAout_N_Actl_UB     =    (bitget(bb(6,:),8))';
    can.Engine_Data_2_MS.units.EngAout_N_Actl     =  'rpm';
    can.Engine_Data_2_MS.EngAout_N_Actl     =    2.000000e+000*(2^8 * bitand(bb(4,:),31) + bb(5,:))' ;
    can.Engine_Data_2_MS.units.VehVActlEng_D_Qf     =  'SED';
    can.Engine_Data_2_MS.VehVActlEng_D_Qf     =    (bitand(bitshift(bb(4,:),-6),3))' ;
    can.Engine_Data_2_MS.units.Veh_V_ActlEng_UB     =  'SED';
    can.Engine_Data_2_MS.Veh_V_ActlEng_UB     =    (bitget(bb(4,:),6))';
    can.Engine_Data_2_MS.units.Veh_V_ActlEng     =  'kph';
    can.Engine_Data_2_MS.Veh_V_ActlEng     =    1.000000e-002*(2^8 * bb(2,:) + bb(3,:))' ;
    can.Engine_Data_2_MS.units.PwPck_D_Stat_UB     =  'SED';
    can.Engine_Data_2_MS.PwPck_D_Stat_UB     =    (bitget(bb(1,:),4))';
    can.Engine_Data_2_MS.units.PwPck_D_Stat     =  'SED';
    can.Engine_Data_2_MS.PwPck_D_Stat     =    (bitand(bitshift(bb(1,:),-4),15))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ACM_NAV_WHEEL_INFO
% Hex ID:426
% Last edited by: selwart
% Date:26-Apr-2011
MSG_426 = hex2dec('426');

ix=find(msg == MSG_426);          % Find all message 0x426's
if ~isempty(ix)                   % If there are any ...
    can.ACM_NAV_WHEEL_INFO = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x426 messages
    can.ACM_NAV_WHEEL_INFO.nsamples      = length(ix);
    can.ACM_NAV_WHEEL_INFO.ctime         = cantime(ix);

    can.ACM_NAV_WHEEL_INFO.units.WhlRotatRr_No_Cnt_UB     =  'SED';
    can.ACM_NAV_WHEEL_INFO.WhlRotatRr_No_Cnt_UB     =    (bitget(bb(8,:),8))';
    can.ACM_NAV_WHEEL_INFO.units.WhlRotatRl_No_Cnt_UB     =  'SED';
    can.ACM_NAV_WHEEL_INFO.WhlRotatRl_No_Cnt_UB     =    (bitget(bb(6,:),1))';
    can.ACM_NAV_WHEEL_INFO.units.WhlRotatFr_No_Cnt_UB     =  'SED';
    can.ACM_NAV_WHEEL_INFO.WhlRotatFr_No_Cnt_UB     =    (bitget(bb(6,:),2))';
    can.ACM_NAV_WHEEL_INFO.units.WhlRotatFl_No_Cnt_UB     =  'SED';
    can.ACM_NAV_WHEEL_INFO.WhlRotatFl_No_Cnt_UB     =    (bitget(bb(6,:),3))';
    can.ACM_NAV_WHEEL_INFO.units.WhlDirRr_D_Actl_UB     =  'SED';
    can.ACM_NAV_WHEEL_INFO.WhlDirRr_D_Actl_UB     =    (bitget(bb(6,:),5))';
    can.ACM_NAV_WHEEL_INFO.units.WhlDirRl_D_Actl_UB     =  'SED';
    can.ACM_NAV_WHEEL_INFO.WhlDirRl_D_Actl_UB     =    (bitget(bb(6,:),6))';
    can.ACM_NAV_WHEEL_INFO.units.WhlDirFr_D_Actl_UB     =  'SED';
    can.ACM_NAV_WHEEL_INFO.WhlDirFr_D_Actl_UB     =    (bitget(bb(6,:),7))';
    can.ACM_NAV_WHEEL_INFO.units.WhlDirFl_D_Actl_UB     =  'SED';
    can.ACM_NAV_WHEEL_INFO.WhlDirFl_D_Actl_UB     =    (bitget(bb(6,:),8))';
    can.ACM_NAV_WHEEL_INFO.units.WHEEL_ROLLING_TIMESTAMP_UB     =  'SED';
    can.ACM_NAV_WHEEL_INFO.WHEEL_ROLLING_TIMESTAMP_UB     =    (bitget(bb(8,:),7))';
    can.ACM_NAV_WHEEL_INFO.units.ACM_NAV_WHEEL_INFO_RESET     =  'Dimensionless';
    can.ACM_NAV_WHEEL_INFO.ACM_NAV_WHEEL_INFO_RESET     =    (bitget(bb(6,:),4))';
    can.ACM_NAV_WHEEL_INFO.units.WhlRotatRr_No_Cnt     =  'Unitless';
    can.ACM_NAV_WHEEL_INFO.WhlRotatRr_No_Cnt     =    (bb(5,:))' ;
    can.ACM_NAV_WHEEL_INFO.units.WhlRotatRl_No_Cnt     =  'Unitless';
    can.ACM_NAV_WHEEL_INFO.WhlRotatRl_No_Cnt     =    (bb(4,:))' ;
    can.ACM_NAV_WHEEL_INFO.units.WhlRotatFr_No_Cnt     =  'Unitless';
    can.ACM_NAV_WHEEL_INFO.WhlRotatFr_No_Cnt     =    (bb(3,:))' ;
    can.ACM_NAV_WHEEL_INFO.units.WhlRotatFl_No_Cnt     =  'Unitless';
    can.ACM_NAV_WHEEL_INFO.WhlRotatFl_No_Cnt     =    (bb(2,:))' ;
    can.ACM_NAV_WHEEL_INFO.units.WhlDirRr_D_Actl     =  'SED';
    can.ACM_NAV_WHEEL_INFO.WhlDirRr_D_Actl     =    (bitand(bb(1,:),3))' ;
    can.ACM_NAV_WHEEL_INFO.units.WhlDirRl_D_Actl     =  'SED';
    can.ACM_NAV_WHEEL_INFO.WhlDirRl_D_Actl     =    (bitand(bitshift(bb(1,:),-2),3))' ;
    can.ACM_NAV_WHEEL_INFO.units.WhlDirFr_D_Actl     =  'SED';
    can.ACM_NAV_WHEEL_INFO.WhlDirFr_D_Actl     =    (bitand(bitshift(bb(1,:),-4),3))' ;
    can.ACM_NAV_WHEEL_INFO.units.WhlDirFl_D_Actl     =  'SED';
    can.ACM_NAV_WHEEL_INFO.WhlDirFl_D_Actl     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.ACM_NAV_WHEEL_INFO.units.WHEEL_ROLLING_TIMESTAMP     =  'Unitless';
    can.ACM_NAV_WHEEL_INFO.WHEEL_ROLLING_TIMESTAMP     =    (bb(7,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Battery_Mgmt_2_MS
% Hex ID:42C
% Last edited by: selwart
% Date:26-Apr-2011
MSG_42C = hex2dec('42C');

ix=find(msg == MSG_42C);          % Find all message 0x42C's
if ~isempty(ix)                   % If there are any ...
    can.Battery_Mgmt_2_MS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x42C messages
    can.Battery_Mgmt_2_MS.nsamples      = length(ix);
    can.Battery_Mgmt_2_MS.ctime         = cantime(ix);

    can.Battery_Mgmt_2_MS.units.Shed_T_Eng_Off_B     =  'SED';
    can.Battery_Mgmt_2_MS.Shed_T_Eng_Off_B     =    (bitget(bb(2,:),5))';
    can.Battery_Mgmt_2_MS.units.Shed_Level_Req     =  'SED';
    can.Battery_Mgmt_2_MS.Shed_Level_Req     =    (bitand(bitshift(bb(2,:),-5),7))' ;
    can.Battery_Mgmt_2_MS.units.Shed_Feature_Group_ID     =  'SED';
    can.Battery_Mgmt_2_MS.Shed_Feature_Group_ID     =    (bitand(bitshift(bb(1,:),-3),31))' ;
    can.Battery_Mgmt_2_MS.units.Shed_Drain_Eng_Off_B     =  'SED';
    can.Battery_Mgmt_2_MS.Shed_Drain_Eng_Off_B     =    (bitget(bb(1,:),3))';
    can.Battery_Mgmt_2_MS.units.Batt_Lo_SoC_B     =  'SED';
    can.Battery_Mgmt_2_MS.Batt_Lo_SoC_B     =    (bitget(bb(1,:),2))';
    can.Battery_Mgmt_2_MS.units.Batt_Crit_SoC_B     =  'SED';
    can.Battery_Mgmt_2_MS.Batt_Crit_SoC_B     =    (bitget(bb(1,:),1))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: GPS_Data_Nav_1
% Hex ID:465
% Last edited by: selwart
% Date:26-Apr-2011
MSG_465 = hex2dec('465');

ix=find(msg == MSG_465);          % Find all message 0x465's
if ~isempty(ix)                   % If there are any ...
    can.GPS_Data_Nav_1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x465 messages
    can.GPS_Data_Nav_1.nsamples      = length(ix);
    can.GPS_Data_Nav_1.ctime         = cantime(ix);

    can.GPS_Data_Nav_1.units.GpsHsphLattSth_D_Actl     =  'SED';
    can.GPS_Data_Nav_1.GpsHsphLattSth_D_Actl     =    (bitand(bb(4,:),3))' ;
    can.GPS_Data_Nav_1.units.GpsHsphLongEast_D_Actl     =  'SED';
    can.GPS_Data_Nav_1.GpsHsphLongEast_D_Actl     =    (bitand(bb(2,:),3))' ;
    can.GPS_Data_Nav_1.units.GPS_Longitude_Minutes     =  'Minutes';
    can.GPS_Data_Nav_1.GPS_Longitude_Minutes     =    (bitand(bitshift(bb(6,:),-1),63))' ;
    can.GPS_Data_Nav_1.units.GPS_Longitude_Min_dec     =  'Minutes';
    can.GPS_Data_Nav_1.GPS_Longitude_Min_dec     =    1.000000e-004*(2^6 * bb(7,:) + bitand(bitshift(bb(8,:),-2),63))' ;
    can.GPS_Data_Nav_1.units.GPS_Longitude_Degrees     =  'Degrees';
    can.GPS_Data_Nav_1.GPS_Longitude_Degrees     =    (2^1 * bb(5,:) + bitand(bitshift(bb(6,:),-7),1))' +-179.00;
    can.GPS_Data_Nav_1.units.GPS_Latitude_Minutes     =  'Minutes';
    can.GPS_Data_Nav_1.GPS_Latitude_Minutes     =    (bitand(bitshift(bb(2,:),-2),63))' ;
    can.GPS_Data_Nav_1.units.GPS_Latitude_Min_dec     =  'Minutes';
    can.GPS_Data_Nav_1.GPS_Latitude_Min_dec     =    1.000000e-004*(2^6 * bb(3,:) + bitand(bitshift(bb(4,:),-2),63))' ;
    can.GPS_Data_Nav_1.units.GPS_Latitude_Degrees     =  'Degrees';
    can.GPS_Data_Nav_1.GPS_Latitude_Degrees     =    (bb(1,:))' +-89.00;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: GPS_Data_Nav_2
% Hex ID:466
% Last edited by: selwart
% Date:26-Apr-2011
MSG_466 = hex2dec('466');

ix=find(msg == MSG_466);          % Find all message 0x466's
if ~isempty(ix)                   % If there are any ...
    can.GPS_Data_Nav_2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x466 messages
    can.GPS_Data_Nav_2.nsamples      = length(ix);
    can.GPS_Data_Nav_2.ctime         = cantime(ix);

    can.GPS_Data_Nav_2.units.Gps_B_Falt     =  'SED';
    can.GPS_Data_Nav_2.Gps_B_Falt     =    (bitget(bb(1,:),3))';
    can.GPS_Data_Nav_2.units.GpsUtcYr_No_Actl     =  'Year';
    can.GPS_Data_Nav_2.GpsUtcYr_No_Actl     =    (bitand(bitshift(bb(7,:),-3),31))' +1.00;
    can.GPS_Data_Nav_2.units.GpsUtcMnth_No_Actl     =  'Month';
    can.GPS_Data_Nav_2.GpsUtcMnth_No_Actl     =    (bitand(bitshift(bb(6,:),-4),15))' +1.00;
    can.GPS_Data_Nav_2.units.GpsUtcDay_No_Actl     =  'Day';
    can.GPS_Data_Nav_2.GpsUtcDay_No_Actl     =    (bitand(bitshift(bb(5,:),-1),31))' +1.00;
    can.GPS_Data_Nav_2.units.GPS_UTC_seconds     =  'seconds';
    can.GPS_Data_Nav_2.GPS_UTC_seconds     =    (bitand(bitshift(bb(3,:),-2),63))' ;
    can.GPS_Data_Nav_2.units.GPS_UTC_minutes     =  'Minutes';
    can.GPS_Data_Nav_2.GPS_UTC_minutes     =    (bitand(bitshift(bb(2,:),-2),63))' ;
    can.GPS_Data_Nav_2.units.GPS_UTC_hours     =  'Hours';
    can.GPS_Data_Nav_2.GPS_UTC_hours     =    (bitand(bitshift(bb(1,:),-3),31))' ;
    can.GPS_Data_Nav_2.units.GPS_Pdop     =  '';
    can.GPS_Data_Nav_2.GPS_Pdop     =    2.000000e-001*(bitand(bitshift(bb(4,:),-3),31))' ;
    can.GPS_Data_Nav_2.units.GPS_Compass_direction     =  'SED';
    can.GPS_Data_Nav_2.GPS_Compass_direction     =    (2^1 * bitand(bb(4,:),7) + bitand(bitshift(bb(5,:),-7),1))' ;
    can.GPS_Data_Nav_2.units.GPS_Actual_vs_Infer_pos     =  'SED';
    can.GPS_Data_Nav_2.GPS_Actual_vs_Infer_pos     =    (bitget(bb(5,:),7))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: GPS_Data_Nav_3
% Hex ID:467
% Last edited by: selwart
% Date:26-Apr-2011
MSG_467 = hex2dec('467');

ix=find(msg == MSG_467);          % Find all message 0x467's
if ~isempty(ix)                   % If there are any ...
    can.GPS_Data_Nav_3 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x467 messages
    can.GPS_Data_Nav_3.nsamples      = length(ix);
    can.GPS_Data_Nav_3.ctime         = cantime(ix);

    can.GPS_Data_Nav_3.units.GPS_Vdop     =  '';
    can.GPS_Data_Nav_3.GPS_Vdop     =    2.000000e-001*(bitand(bitshift(bb(8,:),-3),31))' ;
    can.GPS_Data_Nav_3.units.GPS_Speed     =  'MPH';
    can.GPS_Data_Nav_3.GPS_Speed     =    (bb(6,:))' ;
    can.GPS_Data_Nav_3.units.GPS_Sat_num_in_view     =  '';
    can.GPS_Data_Nav_3.GPS_Sat_num_in_view     =    (bitand(bitshift(bb(1,:),-3),31))' ;
    can.GPS_Data_Nav_3.units.GPS_MSL_altitude     =  'feet';
    can.GPS_Data_Nav_3.GPS_MSL_altitude     =    1.000000e+001*(2^4 * bb(2,:) + bitand(bitshift(bb(3,:),-4),15))' +-20460.00;
    can.GPS_Data_Nav_3.units.GPS_Heading     =  'Degrees';
    can.GPS_Data_Nav_3.GPS_Heading     =    1.000000e-002*(2^8 * bb(4,:) + bb(5,:))' ;
    can.GPS_Data_Nav_3.units.GPS_Hdop     =  '';
    can.GPS_Data_Nav_3.GPS_Hdop     =    2.000000e-001*(bitand(bitshift(bb(7,:),-3),31))' ;
    can.GPS_Data_Nav_3.units.GPS_dimension     =  'SED';
    can.GPS_Data_Nav_3.GPS_dimension     =    (bitand(bb(1,:),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: GPS_Data_Nav_4
% Hex ID:478
% Last edited by: selwart
% Date:26-Apr-2011
MSG_478 = hex2dec('478');

ix=find(msg == MSG_478);          % Find all message 0x478's
if ~isempty(ix)                   % If there are any ...
    can.GPS_Data_Nav_4 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x478 messages
    can.GPS_Data_Nav_4.nsamples      = length(ix);
    can.GPS_Data_Nav_4.ctime         = cantime(ix);

    can.GPS_Data_Nav_4.units.VehPos_L_Est     =  'meter';
    can.GPS_Data_Nav_4.VehPos_L_Est     =    1.000000e-002*(2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
    can.GPS_Data_Nav_4.units.VehHead_W_Actl     =  'degrees/second';
    can.GPS_Data_Nav_4.VehHead_W_Actl     =    1.000000e-002*(2^8 * bb(3,:) + bb(4,:))' +-327.68;
    can.GPS_Data_Nav_4.units.VehHead_An_Est     =  'degrees';
    can.GPS_Data_Nav_4.VehHead_An_Est     =    1.000000e-002*(2^8 * bb(1,:) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: BCM_Network_MgmtM
% Hex ID:501
% Last edited by: selwart
% Date:26-Apr-2011
MSG_501 = hex2dec('501');

ix=find(msg == MSG_501);          % Find all message 0x501's
if ~isempty(ix)                   % If there are any ...
    can.BCM_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x501 messages
    can.BCM_Network_MgmtM.nsamples      = length(ix);
    can.BCM_Network_MgmtM.ctime         = cantime(ix);

    can.BCM_Network_MgmtM.units.BCM_Network_Mgmt     =  '';
    can.BCM_Network_MgmtM.BCM_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: HVAC_Network_MgmtM
% Hex ID:503
% Last edited by: selwart
% Date:26-Apr-2011
MSG_503 = hex2dec('503');

ix=find(msg == MSG_503);          % Find all message 0x503's
if ~isempty(ix)                   % If there are any ...
    can.HVAC_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x503 messages
    can.HVAC_Network_MgmtM.nsamples      = length(ix);
    can.HVAC_Network_MgmtM.ctime         = cantime(ix);

    can.HVAC_Network_MgmtM.units.HVAC_Network_Mgmt     =  '';
    can.HVAC_Network_MgmtM.HVAC_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: DDM_Network_MgmtM
% Hex ID:504
% Last edited by: selwart
% Date:26-Apr-2011
MSG_504 = hex2dec('504');

ix=find(msg == MSG_504);          % Find all message 0x504's
if ~isempty(ix)                   % If there are any ...
    can.DDM_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x504 messages
    can.DDM_Network_MgmtM.nsamples      = length(ix);
    can.DDM_Network_MgmtM.ctime         = cantime(ix);

    can.DDM_Network_MgmtM.units.DDM_Network_Mgmt     =  '';
    can.DDM_Network_MgmtM.DDM_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RFA_Network_MgmtM
% Hex ID:508
% Last edited by: selwart
% Date:26-Apr-2011
MSG_508 = hex2dec('508');

ix=find(msg == MSG_508);          % Find all message 0x508's
if ~isempty(ix)                   % If there are any ...
    can.RFA_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x508 messages
    can.RFA_Network_MgmtM.nsamples      = length(ix);
    can.RFA_Network_MgmtM.ctime         = cantime(ix);

    can.RFA_Network_MgmtM.units.RFA_Network_Mgmt     =  '';
    can.RFA_Network_MgmtM.RFA_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: DSM_Network_MgmtM
% Hex ID:50B
% Last edited by: selwart
% Date:26-Apr-2011
MSG_50B = hex2dec('50B');

ix=find(msg == MSG_50B);          % Find all message 0x50B's
if ~isempty(ix)                   % If there are any ...
    can.DSM_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x50B messages
    can.DSM_Network_MgmtM.nsamples      = length(ix);
    can.DSM_Network_MgmtM.ctime         = cantime(ix);

    can.DSM_Network_MgmtM.units.DSM_Network_Mgmt     =  '';
    can.DSM_Network_MgmtM.DSM_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ACM_Network_MgmtM
% Hex ID:50C
% Last edited by: selwart
% Date:26-Apr-2011
MSG_50C = hex2dec('50C');

ix=find(msg == MSG_50C);          % Find all message 0x50C's
if ~isempty(ix)                   % If there are any ...
    can.ACM_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x50C messages
    can.ACM_Network_MgmtM.nsamples      = length(ix);
    can.ACM_Network_MgmtM.ctime         = cantime(ix);

    can.ACM_Network_MgmtM.units.ACM_Network_Mgmt     =  '';
    can.ACM_Network_MgmtM.ACM_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RACM_Network_MgmtM
% Hex ID:518
% Last edited by: selwart
% Date:26-Apr-2011
MSG_518 = hex2dec('518');

ix=find(msg == MSG_518);          % Find all message 0x518's
if ~isempty(ix)                   % If there are any ...
    can.RACM_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x518 messages
    can.RACM_Network_MgmtM.nsamples      = length(ix);
    can.RACM_Network_MgmtM.ctime         = cantime(ix);

    can.RACM_Network_MgmtM.units.RACM_Network_Mgmt     =  '';
    can.RACM_Network_MgmtM.RACM_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RGTM_Network_MgmtM
% Hex ID:526
% Last edited by: selwart
% Date:26-Apr-2011
MSG_526 = hex2dec('526');

ix=find(msg == MSG_526);          % Find all message 0x526's
if ~isempty(ix)                   % If there are any ...
    can.RGTM_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x526 messages
    can.RGTM_Network_MgmtM.nsamples      = length(ix);
    can.RGTM_Network_MgmtM.ctime         = cantime(ix);

    can.RGTM_Network_MgmtM.units.RGTM_Network_Mgmt     =  '';
    can.RGTM_Network_MgmtM.RGTM_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: SCME_Network_MgmtM
% Hex ID:527
% Last edited by: selwart
% Date:26-Apr-2011
MSG_527 = hex2dec('527');

ix=find(msg == MSG_527);          % Find all message 0x527's
if ~isempty(ix)                   % If there are any ...
    can.SCME_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x527 messages
    can.SCME_Network_MgmtM.nsamples      = length(ix);
    can.SCME_Network_MgmtM.ctime         = cantime(ix);

    can.SCME_Network_MgmtM.units.SCME_Network_Mgmt     =  '';
    can.SCME_Network_MgmtM.SCME_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: SCMF_Network_MgmtM
% Hex ID:528
% Last edited by: selwart
% Date:26-Apr-2011
MSG_528 = hex2dec('528');

ix=find(msg == MSG_528);          % Find all message 0x528's
if ~isempty(ix)                   % If there are any ...
    can.SCMF_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x528 messages
    can.SCMF_Network_MgmtM.nsamples      = length(ix);
    can.SCMF_Network_MgmtM.ctime         = cantime(ix);

    can.SCMF_Network_MgmtM.units.SCMF_Network_Mgmt     =  'Unitless';
    can.SCMF_Network_MgmtM.SCMF_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TPM_Network_MgmtM
% Hex ID:53B
% Last edited by: selwart
% Date:26-Apr-2011
MSG_53B = hex2dec('53B');

ix=find(msg == MSG_53B);          % Find all message 0x53B's
if ~isempty(ix)                   % If there are any ...
    can.TPM_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x53B messages
    can.TPM_Network_MgmtM.nsamples      = length(ix);
    can.TPM_Network_MgmtM.ctime         = cantime(ix);

    can.TPM_Network_MgmtM.units.TPM_Network_Mgmt     =  '';
    can.TPM_Network_MgmtM.TPM_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: APIM_Network_MgmtM
% Hex ID:541
% Last edited by: selwart
% Date:26-Apr-2011
MSG_541 = hex2dec('541');

ix=find(msg == MSG_541);          % Find all message 0x541's
if ~isempty(ix)                   % If there are any ...
    can.APIM_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x541 messages
    can.APIM_Network_MgmtM.nsamples      = length(ix);
    can.APIM_Network_MgmtM.ctime         = cantime(ix);

    can.APIM_Network_MgmtM.units.APIM_Network_Mgmt     =  '';
    can.APIM_Network_MgmtM.APIM_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: SARM_Network_MgmtM
% Hex ID:542
% Last edited by: selwart
% Date:26-Apr-2011
MSG_542 = hex2dec('542');

ix=find(msg == MSG_542);          % Find all message 0x542's
if ~isempty(ix)                   % If there are any ...
    can.SARM_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x542 messages
    can.SARM_Network_MgmtM.nsamples      = length(ix);
    can.SARM_Network_MgmtM.ctime         = cantime(ix);

    can.SARM_Network_MgmtM.units.SARM_Network_Mgmt     =  '';
    can.SARM_Network_MgmtM.SARM_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RBM_Network_MgmtM
% Hex ID:545
% Last edited by: selwart
% Date:26-Apr-2011
MSG_545 = hex2dec('545');

ix=find(msg == MSG_545);          % Find all message 0x545's
if ~isempty(ix)                   % If there are any ...
    can.RBM_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x545 messages
    can.RBM_Network_MgmtM.nsamples      = length(ix);
    can.RBM_Network_MgmtM.ctime         = cantime(ix);

    can.RBM_Network_MgmtM.units.RBM_Network_Mgmt     =  '';
    can.RBM_Network_MgmtM.RBM_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RHVAC_Network_MgmtM
% Hex ID:548
% Last edited by: selwart
% Date:26-Apr-2011
MSG_548 = hex2dec('548');

ix=find(msg == MSG_548);          % Find all message 0x548's
if ~isempty(ix)                   % If there are any ...
    can.RHVAC_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x548 messages
    can.RHVAC_Network_MgmtM.nsamples      = length(ix);
    can.RHVAC_Network_MgmtM.ctime         = cantime(ix);

    can.RHVAC_Network_MgmtM.units.RHVAC_Network_Mgmt     =  '';
    can.RHVAC_Network_MgmtM.RHVAC_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: BCMB_Network_MgmtM
% Hex ID:551
% Last edited by: selwart
% Date:26-Apr-2011
MSG_551 = hex2dec('551');

ix=find(msg == MSG_551);          % Find all message 0x551's
if ~isempty(ix)                   % If there are any ...
    can.BCMB_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x551 messages
    can.BCMB_Network_MgmtM.nsamples      = length(ix);
    can.BCMB_Network_MgmtM.ctime         = cantime(ix);

    can.BCMB_Network_MgmtM.units.BCMB_Network_Mgmt     =  '';
    can.BCMB_Network_MgmtM.BCMB_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: FDM_Network_MgmtM
% Hex ID:55C
% Last edited by: selwart
% Date:26-Apr-2011
MSG_55C = hex2dec('55C');

ix=find(msg == MSG_55C);          % Find all message 0x55C's
if ~isempty(ix)                   % If there are any ...
    can.FDM_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x55C messages
    can.FDM_Network_MgmtM.nsamples      = length(ix);
    can.FDM_Network_MgmtM.ctime         = cantime(ix);

    can.FDM_Network_MgmtM.units.FDM_Network_Mgmt     =  '';
    can.FDM_Network_MgmtM.FDM_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: FCIM_Network_MgmtM
% Hex ID:55D
% Last edited by: selwart
% Date:26-Apr-2011
MSG_55D = hex2dec('55D');

ix=find(msg == MSG_55D);          % Find all message 0x55D's
if ~isempty(ix)                   % If there are any ...
    can.FCIM_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x55D messages
    can.FCIM_Network_MgmtM.nsamples      = length(ix);
    can.FCIM_Network_MgmtM.ctime         = cantime(ix);

    can.FCIM_Network_MgmtM.units.FCIM_Network_Mgmt     =  '';
    can.FCIM_Network_MgmtM.FCIM_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: HCM2_Network_MgmtM
% Hex ID:560
% Last edited by: selwart
% Date:26-Apr-2011
MSG_560 = hex2dec('560');

ix=find(msg == MSG_560);          % Find all message 0x560's
if ~isempty(ix)                   % If there are any ...
    can.HCM2_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x560 messages
    can.HCM2_Network_MgmtM.nsamples      = length(ix);
    can.HCM2_Network_MgmtM.ctime         = cantime(ix);

    can.HCM2_Network_MgmtM.units.HCM2_Network_Mgmt     =  '';
    can.HCM2_Network_MgmtM.HCM2_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RSM_Network_MgmtM
% Hex ID:567
% Last edited by: selwart
% Date:26-Apr-2011
MSG_567 = hex2dec('567');

ix=find(msg == MSG_567);          % Find all message 0x567's
if ~isempty(ix)                   % If there are any ...
    can.RSM_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x567 messages
    can.RSM_Network_MgmtM.nsamples      = length(ix);
    can.RSM_Network_MgmtM.ctime         = cantime(ix);

    can.RSM_Network_MgmtM.units.RSM_Network_Mgmt     =  '';
    can.RSM_Network_MgmtM.RSM_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: GPSM_Network_MgmtM
% Hex ID:56C
% Last edited by: selwart
% Date:26-Apr-2011
MSG_56C = hex2dec('56C');

ix=find(msg == MSG_56C);          % Find all message 0x56C's
if ~isempty(ix)                   % If there are any ...
    can.GPSM_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x56C messages
    can.GPSM_Network_MgmtM.nsamples      = length(ix);
    can.GPSM_Network_MgmtM.ctime         = cantime(ix);

    can.GPSM_Network_MgmtM.units.GPSM_Network_Mgmt     =  '';
    can.GPSM_Network_MgmtM.GPSM_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: SOBDM_Network_MgmtM
% Hex ID:572
% Last edited by: selwart
% Date:26-Apr-2011
MSG_572 = hex2dec('572');

ix=find(msg == MSG_572);          % Find all message 0x572's
if ~isempty(ix)                   % If there are any ...
    can.SOBDM_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x572 messages
    can.SOBDM_Network_MgmtM.nsamples      = length(ix);
    can.SOBDM_Network_MgmtM.ctime         = cantime(ix);

    can.SOBDM_Network_MgmtM.units.SOBDM_Network_Mgmt     =  '';
    can.SOBDM_Network_MgmtM.SOBDM_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ILCM_Network_MgmtM
% Hex ID:576
% Last edited by: selwart
% Date:26-Apr-2011
MSG_576 = hex2dec('576');

ix=find(msg == MSG_576);          % Find all message 0x576's
if ~isempty(ix)                   % If there are any ...
    can.ILCM_Network_MgmtM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x576 messages
    can.ILCM_Network_MgmtM.nsamples      = length(ix);
    can.ILCM_Network_MgmtM.ctime         = cantime(ix);

    can.ILCM_Network_MgmtM.units.ILCM_Network_Mgmt     =  '';
    can.ILCM_Network_MgmtM.ILCM_Network_Mgmt     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqGPSM
% Hex ID:701
% Last edited by: selwart
% Date:26-Apr-2011
MSG_701 = hex2dec('701');

ix=find(msg == MSG_701);          % Find all message 0x701's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqGPSM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x701 messages
    can.TesterPhysicalReqGPSM.nsamples      = length(ix);
    can.TesterPhysicalReqGPSM.ctime         = cantime(ix);

    can.TesterPhysicalReqGPSM.units.TesterPhysicalReqGPSM     =  '';
    can.TesterPhysicalReqGPSM.TesterPhysicalReqGPSM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResGPSM
% Hex ID:709
% Last edited by: selwart
% Date:26-Apr-2011
MSG_709 = hex2dec('709');

ix=find(msg == MSG_709);          % Find all message 0x709's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResGPSM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x709 messages
    can.TesterPhysicalResGPSM.nsamples      = length(ix);
    can.TesterPhysicalResGPSM.ctime         = cantime(ix);

    can.TesterPhysicalResGPSM.units.TesterPhysicalResGPSM     =  '';
    can.TesterPhysicalResGPSM.TesterPhysicalResGPSM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqSCMG
% Hex ID:712
% Last edited by: selwart
% Date:26-Apr-2011
MSG_712 = hex2dec('712');

ix=find(msg == MSG_712);          % Find all message 0x712's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqSCMG = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x712 messages
    can.TesterPhysicalReqSCMG.nsamples      = length(ix);
    can.TesterPhysicalReqSCMG.ctime         = cantime(ix);

    can.TesterPhysicalReqSCMG.units.TesterPhysicalReqSCMG     =  'unitless';
    can.TesterPhysicalReqSCMG.TesterPhysicalReqSCMG     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqSCMH
% Hex ID:713
% Last edited by: selwart
% Date:26-Apr-2011
MSG_713 = hex2dec('713');

ix=find(msg == MSG_713);          % Find all message 0x713's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqSCMH = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x713 messages
    can.TesterPhysicalReqSCMH.nsamples      = length(ix);
    can.TesterPhysicalReqSCMH.ctime         = cantime(ix);

    can.TesterPhysicalReqSCMH.units.TesterPhysicalReqSCMH     =  'unitless';
    can.TesterPhysicalReqSCMH.TesterPhysicalReqSCMH     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqHSWM
% Hex ID:714
% Last edited by: selwart
% Date:26-Apr-2011
MSG_714 = hex2dec('714');

ix=find(msg == MSG_714);          % Find all message 0x714's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqHSWM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x714 messages
    can.TesterPhysicalReqHSWM.nsamples      = length(ix);
    can.TesterPhysicalReqHSWM.ctime         = cantime(ix);

    can.TesterPhysicalReqHSWM.units.TesterPhysicalReqHSWM     =  '';
    can.TesterPhysicalReqHSWM.TesterPhysicalReqHSWM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqRLCMA
% Hex ID:717
% Last edited by: selwart
% Date:26-Apr-2011
MSG_717 = hex2dec('717');

ix=find(msg == MSG_717);          % Find all message 0x717's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqRLCMA = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x717 messages
    can.TesterPhysicalReqRLCMA.nsamples      = length(ix);
    can.TesterPhysicalReqRLCMA.ctime         = cantime(ix);

    can.TesterPhysicalReqRLCMA.units.TesterPhysicalReqRLCMA     =  '';
    can.TesterPhysicalReqRLCMA.TesterPhysicalReqRLCMA     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResSCMG
% Hex ID:71A
% Last edited by: selwart
% Date:26-Apr-2011
MSG_71A = hex2dec('71A');

ix=find(msg == MSG_71A);          % Find all message 0x71A's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResSCMG = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x71A messages
    can.TesterPhysicalResSCMG.nsamples      = length(ix);
    can.TesterPhysicalResSCMG.ctime         = cantime(ix);

    can.TesterPhysicalResSCMG.units.TesterPhysicalResSCMG     =  'unitless';
    can.TesterPhysicalResSCMG.TesterPhysicalResSCMG     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResSCMH
% Hex ID:71B
% Last edited by: selwart
% Date:26-Apr-2011
MSG_71B = hex2dec('71B');

ix=find(msg == MSG_71B);          % Find all message 0x71B's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResSCMH = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x71B messages
    can.TesterPhysicalResSCMH.nsamples      = length(ix);
    can.TesterPhysicalResSCMH.ctime         = cantime(ix);

    can.TesterPhysicalResSCMH.units.TesterPhysicalResSCMH     =  'unitless';
    can.TesterPhysicalResSCMH.TesterPhysicalResSCMH     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResHSWM
% Hex ID:71C
% Last edited by: selwart
% Date:26-Apr-2011
MSG_71C = hex2dec('71C');

ix=find(msg == MSG_71C);          % Find all message 0x71C's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResHSWM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x71C messages
    can.TesterPhysicalResHSWM.nsamples      = length(ix);
    can.TesterPhysicalResHSWM.ctime         = cantime(ix);

    can.TesterPhysicalResHSWM.units.TesterPhysicalResHSWM     =  '';
    can.TesterPhysicalResHSWM.TesterPhysicalResHSWM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResRLCMA
% Hex ID:71F
% Last edited by: selwart
% Date:26-Apr-2011
MSG_71F = hex2dec('71F');

ix=find(msg == MSG_71F);          % Find all message 0x71F's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResRLCMA = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x71F messages
    can.TesterPhysicalResRLCMA.nsamples      = length(ix);
    can.TesterPhysicalResRLCMA.ctime         = cantime(ix);

    can.TesterPhysicalResRLCMA.units.TesterPhysicalResRLCMA     =  '';
    can.TesterPhysicalResRLCMA.TesterPhysicalResRLCMA     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqBCM
% Hex ID:726
% Last edited by: selwart
% Date:26-Apr-2011
MSG_726 = hex2dec('726');

ix=find(msg == MSG_726);          % Find all message 0x726's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqBCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x726 messages
    can.TesterPhysicalReqBCM.nsamples      = length(ix);
    can.TesterPhysicalReqBCM.ctime         = cantime(ix);

    can.TesterPhysicalReqBCM.units.TesterPhysicalReqBCM     =  '';
    can.TesterPhysicalReqBCM.TesterPhysicalReqBCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqACM
% Hex ID:727
% Last edited by: selwart
% Date:26-Apr-2011
MSG_727 = hex2dec('727');

ix=find(msg == MSG_727);          % Find all message 0x727's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqACM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x727 messages
    can.TesterPhysicalReqACM.nsamples      = length(ix);
    can.TesterPhysicalReqACM.ctime         = cantime(ix);

    can.TesterPhysicalReqACM.units.TesterPhysicalReqACM     =  '';
    can.TesterPhysicalReqACM.TesterPhysicalReqACM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResBCM
% Hex ID:72E
% Last edited by: selwart
% Date:26-Apr-2011
MSG_72E = hex2dec('72E');

ix=find(msg == MSG_72E);          % Find all message 0x72E's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResBCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x72E messages
    can.TesterPhysicalResBCM.nsamples      = length(ix);
    can.TesterPhysicalResBCM.ctime         = cantime(ix);

    can.TesterPhysicalResBCM.units.TesterPhysicalResBCM     =  '';
    can.TesterPhysicalResBCM.TesterPhysicalResBCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResACM
% Hex ID:72F
% Last edited by: selwart
% Date:26-Apr-2011
MSG_72F = hex2dec('72F');

ix=find(msg == MSG_72F);          % Find all message 0x72F's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResACM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x72F messages
    can.TesterPhysicalResACM.nsamples      = length(ix);
    can.TesterPhysicalResACM.ctime         = cantime(ix);

    can.TesterPhysicalResACM.units.TesterPhysicalResACM     =  '';
    can.TesterPhysicalResACM.TesterPhysicalResACM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqRFA
% Hex ID:731
% Last edited by: selwart
% Date:26-Apr-2011
MSG_731 = hex2dec('731');

ix=find(msg == MSG_731);          % Find all message 0x731's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqRFA = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x731 messages
    can.TesterPhysicalReqRFA.nsamples      = length(ix);
    can.TesterPhysicalReqRFA.ctime         = cantime(ix);

    can.TesterPhysicalReqRFA.units.TesterPhysicalReqRFA     =  '';
    can.TesterPhysicalReqRFA.TesterPhysicalReqRFA     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqHVAC
% Hex ID:733
% Last edited by: selwart
% Date:26-Apr-2011
MSG_733 = hex2dec('733');

ix=find(msg == MSG_733);          % Find all message 0x733's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqHVAC = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x733 messages
    can.TesterPhysicalReqHVAC.nsamples      = length(ix);
    can.TesterPhysicalReqHVAC.ctime         = cantime(ix);

    can.TesterPhysicalReqHVAC.units.TesterPhysicalReqHVAC     =  '';
    can.TesterPhysicalReqHVAC.TesterPhysicalReqHVAC     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResRFA
% Hex ID:739
% Last edited by: selwart
% Date:26-Apr-2011
MSG_739 = hex2dec('739');

ix=find(msg == MSG_739);          % Find all message 0x739's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResRFA = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x739 messages
    can.TesterPhysicalResRFA.nsamples      = length(ix);
    can.TesterPhysicalResRFA.ctime         = cantime(ix);

    can.TesterPhysicalResRFA.units.TesterPhysicalResRFA     =  '';
    can.TesterPhysicalResRFA.TesterPhysicalResRFA     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResHVAC
% Hex ID:73B
% Last edited by: selwart
% Date:26-Apr-2011
MSG_73B = hex2dec('73B');

ix=find(msg == MSG_73B);          % Find all message 0x73B's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResHVAC = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x73B messages
    can.TesterPhysicalResHVAC.nsamples      = length(ix);
    can.TesterPhysicalResHVAC.ctime         = cantime(ix);

    can.TesterPhysicalResHVAC.units.TesterPhysicalResHVAC     =  '';
    can.TesterPhysicalResHVAC.TesterPhysicalResHVAC     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqDDM
% Hex ID:740
% Last edited by: selwart
% Date:26-Apr-2011
MSG_740 = hex2dec('740');

ix=find(msg == MSG_740);          % Find all message 0x740's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqDDM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x740 messages
    can.TesterPhysicalReqDDM.nsamples      = length(ix);
    can.TesterPhysicalReqDDM.ctime         = cantime(ix);

    can.TesterPhysicalReqDDM.units.TesterPhysicalReqDDM     =  '';
    can.TesterPhysicalReqDDM.TesterPhysicalReqDDM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqDSM
% Hex ID:744
% Last edited by: selwart
% Date:26-Apr-2011
MSG_744 = hex2dec('744');

ix=find(msg == MSG_744);          % Find all message 0x744's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqDSM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x744 messages
    can.TesterPhysicalReqDSM.nsamples      = length(ix);
    can.TesterPhysicalReqDSM.ctime         = cantime(ix);

    can.TesterPhysicalReqDSM.units.TesterPhysicalReqDSM     =  '';
    can.TesterPhysicalReqDSM.TesterPhysicalReqDSM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResDDM
% Hex ID:748
% Last edited by: selwart
% Date:26-Apr-2011
MSG_748 = hex2dec('748');

ix=find(msg == MSG_748);          % Find all message 0x748's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResDDM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x748 messages
    can.TesterPhysicalResDDM.nsamples      = length(ix);
    can.TesterPhysicalResDDM.ctime         = cantime(ix);

    can.TesterPhysicalResDDM.units.TesterPhysicalResDDM     =  '';
    can.TesterPhysicalResDDM.TesterPhysicalResDDM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResDSM
% Hex ID:74C
% Last edited by: selwart
% Date:26-Apr-2011
MSG_74C = hex2dec('74C');

ix=find(msg == MSG_74C);          % Find all message 0x74C's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResDSM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x74C messages
    can.TesterPhysicalResDSM.nsamples      = length(ix);
    can.TesterPhysicalResDSM.ctime         = cantime(ix);

    can.TesterPhysicalResDSM.units.TesterPhysicalResDSM     =  '';
    can.TesterPhysicalResDSM.TesterPhysicalResDSM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqTPM
% Hex ID:751
% Last edited by: selwart
% Date:26-Apr-2011
MSG_751 = hex2dec('751');

ix=find(msg == MSG_751);          % Find all message 0x751's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqTPM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x751 messages
    can.TesterPhysicalReqTPM.nsamples      = length(ix);
    can.TesterPhysicalReqTPM.ctime         = cantime(ix);

    can.TesterPhysicalReqTPM.units.TesterPhysicalReqTPM     =  '';
    can.TesterPhysicalReqTPM.TesterPhysicalReqTPM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResTPM
% Hex ID:759
% Last edited by: selwart
% Date:26-Apr-2011
MSG_759 = hex2dec('759');

ix=find(msg == MSG_759);          % Find all message 0x759's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResTPM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x759 messages
    can.TesterPhysicalResTPM.nsamples      = length(ix);
    can.TesterPhysicalResTPM.ctime         = cantime(ix);

    can.TesterPhysicalResTPM.units.TesterPhysicalResTPM     =  '';
    can.TesterPhysicalResTPM.TesterPhysicalResTPM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqRBM
% Hex ID:766
% Last edited by: selwart
% Date:26-Apr-2011
MSG_766 = hex2dec('766');

ix=find(msg == MSG_766);          % Find all message 0x766's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqRBM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x766 messages
    can.TesterPhysicalReqRBM.nsamples      = length(ix);
    can.TesterPhysicalReqRBM.ctime         = cantime(ix);

    can.TesterPhysicalReqRBM.units.TesterPhysicalReqRBM     =  '';
    can.TesterPhysicalReqRBM.TesterPhysicalReqRBM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResRBM
% Hex ID:76E
% Last edited by: selwart
% Date:26-Apr-2011
MSG_76E = hex2dec('76E');

ix=find(msg == MSG_76E);          % Find all message 0x76E's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResRBM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x76E messages
    can.TesterPhysicalResRBM.nsamples      = length(ix);
    can.TesterPhysicalResRBM.ctime         = cantime(ix);

    can.TesterPhysicalResRBM.units.TesterPhysicalResRBM     =  '';
    can.TesterPhysicalResRBM.TesterPhysicalResRBM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqRACM
% Hex ID:774
% Last edited by: selwart
% Date:26-Apr-2011
MSG_774 = hex2dec('774');

ix=find(msg == MSG_774);          % Find all message 0x774's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqRACM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x774 messages
    can.TesterPhysicalReqRACM.nsamples      = length(ix);
    can.TesterPhysicalReqRACM.ctime         = cantime(ix);

    can.TesterPhysicalReqRACM.units.TesterPhysicalReqRACM     =  '';
    can.TesterPhysicalReqRACM.TesterPhysicalReqRACM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqRGTM
% Hex ID:775
% Last edited by: selwart
% Date:26-Apr-2011
MSG_775 = hex2dec('775');

ix=find(msg == MSG_775);          % Find all message 0x775's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqRGTM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x775 messages
    can.TesterPhysicalReqRGTM.nsamples      = length(ix);
    can.TesterPhysicalReqRGTM.ctime         = cantime(ix);

    can.TesterPhysicalReqRGTM.units.TesterPhysicalReqRGTM     =  '';
    can.TesterPhysicalReqRGTM.TesterPhysicalReqRGTM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqSCME
% Hex ID:776
% Last edited by: selwart
% Date:26-Apr-2011
MSG_776 = hex2dec('776');

ix=find(msg == MSG_776);          % Find all message 0x776's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqSCME = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x776 messages
    can.TesterPhysicalReqSCME.nsamples      = length(ix);
    can.TesterPhysicalReqSCME.ctime         = cantime(ix);

    can.TesterPhysicalReqSCME.units.TesterPhysicalReqSCME     =  '';
    can.TesterPhysicalReqSCME.TesterPhysicalReqSCME     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqSCMF
% Hex ID:777
% Last edited by: selwart
% Date:26-Apr-2011
MSG_777 = hex2dec('777');

ix=find(msg == MSG_777);          % Find all message 0x777's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqSCMF = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x777 messages
    can.TesterPhysicalReqSCMF.nsamples      = length(ix);
    can.TesterPhysicalReqSCMF.ctime         = cantime(ix);

    can.TesterPhysicalReqSCMF.units.TesterPhysicalReqSCMF     =  '';
    can.TesterPhysicalReqSCMF.TesterPhysicalReqSCMF     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResRACM
% Hex ID:77C
% Last edited by: selwart
% Date:26-Apr-2011
MSG_77C = hex2dec('77C');

ix=find(msg == MSG_77C);          % Find all message 0x77C's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResRACM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x77C messages
    can.TesterPhysicalResRACM.nsamples      = length(ix);
    can.TesterPhysicalResRACM.ctime         = cantime(ix);

    can.TesterPhysicalResRACM.units.TesterPhysicalResRACM     =  '';
    can.TesterPhysicalResRACM.TesterPhysicalResRACM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResRGTM
% Hex ID:77D
% Last edited by: selwart
% Date:26-Apr-2011
MSG_77D = hex2dec('77D');

ix=find(msg == MSG_77D);          % Find all message 0x77D's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResRGTM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x77D messages
    can.TesterPhysicalResRGTM.nsamples      = length(ix);
    can.TesterPhysicalResRGTM.ctime         = cantime(ix);

    can.TesterPhysicalResRGTM.units.TesterPhysicalResRGTM     =  '';
    can.TesterPhysicalResRGTM.TesterPhysicalResRGTM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResSCME
% Hex ID:77E
% Last edited by: selwart
% Date:26-Apr-2011
MSG_77E = hex2dec('77E');

ix=find(msg == MSG_77E);          % Find all message 0x77E's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResSCME = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x77E messages
    can.TesterPhysicalResSCME.nsamples      = length(ix);
    can.TesterPhysicalResSCME.ctime         = cantime(ix);

    can.TesterPhysicalResSCME.units.TesterPhysicalResSCME     =  '';
    can.TesterPhysicalResSCME.TesterPhysicalResSCME     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResSCMF
% Hex ID:77F
% Last edited by: selwart
% Date:26-Apr-2011
MSG_77F = hex2dec('77F');

ix=find(msg == MSG_77F);          % Find all message 0x77F's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResSCMF = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x77F messages
    can.TesterPhysicalResSCMF.nsamples      = length(ix);
    can.TesterPhysicalResSCMF.ctime         = cantime(ix);

    can.TesterPhysicalResSCMF.units.TesterPhysicalResSCMF     =  '';
    can.TesterPhysicalResSCMF.TesterPhysicalResSCMF     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqSARM
% Hex ID:782
% Last edited by: selwart
% Date:26-Apr-2011
MSG_782 = hex2dec('782');

ix=find(msg == MSG_782);          % Find all message 0x782's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqSARM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x782 messages
    can.TesterPhysicalReqSARM.nsamples      = length(ix);
    can.TesterPhysicalReqSARM.ctime         = cantime(ix);

    can.TesterPhysicalReqSARM.units.TesterPhysicalReqSARM     =  '';
    can.TesterPhysicalReqSARM.TesterPhysicalReqSARM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqRHVAC
% Hex ID:785
% Last edited by: selwart
% Date:26-Apr-2011
MSG_785 = hex2dec('785');

ix=find(msg == MSG_785);          % Find all message 0x785's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqRHVAC = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x785 messages
    can.TesterPhysicalReqRHVAC.nsamples      = length(ix);
    can.TesterPhysicalReqRHVAC.ctime         = cantime(ix);

    can.TesterPhysicalReqRHVAC.units.TesterPhysicalReqRHVAC     =  '';
    can.TesterPhysicalReqRHVAC.TesterPhysicalReqRHVAC     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResSARM
% Hex ID:78A
% Last edited by: selwart
% Date:26-Apr-2011
MSG_78A = hex2dec('78A');

ix=find(msg == MSG_78A);          % Find all message 0x78A's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResSARM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x78A messages
    can.TesterPhysicalResSARM.nsamples      = length(ix);
    can.TesterPhysicalResSARM.ctime         = cantime(ix);

    can.TesterPhysicalResSARM.units.TesterPhysicalResSARM     =  '';
    can.TesterPhysicalResSARM.TesterPhysicalResSARM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResRHVAC
% Hex ID:78D
% Last edited by: selwart
% Date:26-Apr-2011
MSG_78D = hex2dec('78D');

ix=find(msg == MSG_78D);          % Find all message 0x78D's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResRHVAC = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x78D messages
    can.TesterPhysicalResRHVAC.nsamples      = length(ix);
    can.TesterPhysicalResRHVAC.ctime         = cantime(ix);

    can.TesterPhysicalResRHVAC.units.TesterPhysicalResRHVAC     =  '';
    can.TesterPhysicalResRHVAC.TesterPhysicalResRHVAC     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqFDM
% Hex ID:7A6
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7A6 = hex2dec('7A6');

ix=find(msg == MSG_7A6);          % Find all message 0x7A6's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqFDM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7A6 messages
    can.TesterPhysicalReqFDM.nsamples      = length(ix);
    can.TesterPhysicalReqFDM.ctime         = cantime(ix);

    can.TesterPhysicalReqFDM.units.TesterPhysicalReqFDM     =  '';
    can.TesterPhysicalReqFDM.TesterPhysicalReqFDM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqFCIM
% Hex ID:7A7
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7A7 = hex2dec('7A7');

ix=find(msg == MSG_7A7);          % Find all message 0x7A7's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqFCIM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7A7 messages
    can.TesterPhysicalReqFCIM.nsamples      = length(ix);
    can.TesterPhysicalReqFCIM.ctime         = cantime(ix);

    can.TesterPhysicalReqFCIM.units.TesterPhysicalReqFCIM     =  '';
    can.TesterPhysicalReqFCIM.TesterPhysicalReqFCIM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResFDM
% Hex ID:7AE
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7AE = hex2dec('7AE');

ix=find(msg == MSG_7AE);          % Find all message 0x7AE's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResFDM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7AE messages
    can.TesterPhysicalResFDM.nsamples      = length(ix);
    can.TesterPhysicalResFDM.ctime         = cantime(ix);

    can.TesterPhysicalResFDM.units.TesterPhysicalResFDM     =  '';
    can.TesterPhysicalResFDM.TesterPhysicalResFDM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResFCIM
% Hex ID:7AF
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7AF = hex2dec('7AF');

ix=find(msg == MSG_7AF);          % Find all message 0x7AF's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResFCIM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7AF messages
    can.TesterPhysicalResFCIM.nsamples      = length(ix);
    can.TesterPhysicalResFCIM.ctime         = cantime(ix);

    can.TesterPhysicalResFCIM.units.TesterPhysicalResFCIM     =  '';
    can.TesterPhysicalResFCIM.TesterPhysicalResFCIM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqILCM
% Hex ID:7B5
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7B5 = hex2dec('7B5');

ix=find(msg == MSG_7B5);          % Find all message 0x7B5's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqILCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7B5 messages
    can.TesterPhysicalReqILCM.nsamples      = length(ix);
    can.TesterPhysicalReqILCM.ctime         = cantime(ix);

    can.TesterPhysicalReqILCM.units.TesterPhysicalReqILCM     =  '';
    can.TesterPhysicalReqILCM.TesterPhysicalReqILCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqBCMB
% Hex ID:7B7
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7B7 = hex2dec('7B7');

ix=find(msg == MSG_7B7);          % Find all message 0x7B7's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqBCMB = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7B7 messages
    can.TesterPhysicalReqBCMB.nsamples      = length(ix);
    can.TesterPhysicalReqBCMB.ctime         = cantime(ix);

    can.TesterPhysicalReqBCMB.units.TesterPhysicalReqBCMB     =  '';
    can.TesterPhysicalReqBCMB.TesterPhysicalReqBCMB     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResILCM
% Hex ID:7BD
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7BD = hex2dec('7BD');

ix=find(msg == MSG_7BD);          % Find all message 0x7BD's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResILCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7BD messages
    can.TesterPhysicalResILCM.nsamples      = length(ix);
    can.TesterPhysicalResILCM.ctime         = cantime(ix);

    can.TesterPhysicalResILCM.units.TesterPhysicalResILCM     =  '';
    can.TesterPhysicalResILCM.TesterPhysicalResILCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResBCMB
% Hex ID:7BF
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7BF = hex2dec('7BF');

ix=find(msg == MSG_7BF);          % Find all message 0x7BF's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResBCMB = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7BF messages
    can.TesterPhysicalResBCMB.nsamples      = length(ix);
    can.TesterPhysicalResBCMB.ctime         = cantime(ix);

    can.TesterPhysicalResBCMB.units.TesterPhysicalResBCMB     =  '';
    can.TesterPhysicalResBCMB.TesterPhysicalResBCMB     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqRSM
% Hex ID:7C2
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7C2 = hex2dec('7C2');

ix=find(msg == MSG_7C2);          % Find all message 0x7C2's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqRSM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7C2 messages
    can.TesterPhysicalReqRSM.nsamples      = length(ix);
    can.TesterPhysicalReqRSM.ctime         = cantime(ix);

    can.TesterPhysicalReqRSM.units.TesterPhysicalReqRSM     =  '';
    can.TesterPhysicalReqRSM.TesterPhysicalReqRSM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqHCM2
% Hex ID:7C3
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7C3 = hex2dec('7C3');

ix=find(msg == MSG_7C3);          % Find all message 0x7C3's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqHCM2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7C3 messages
    can.TesterPhysicalReqHCM2.nsamples      = length(ix);
    can.TesterPhysicalReqHCM2.ctime         = cantime(ix);

    can.TesterPhysicalReqHCM2.units.TesterPhysicalReqHCM2     =  '';
    can.TesterPhysicalReqHCM2.TesterPhysicalReqHCM2     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqSODL
% Hex ID:7C4
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7C4 = hex2dec('7C4');

ix=find(msg == MSG_7C4);          % Find all message 0x7C4's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqSODL = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7C4 messages
    can.TesterPhysicalReqSODL.nsamples      = length(ix);
    can.TesterPhysicalReqSODL.ctime         = cantime(ix);

    can.TesterPhysicalReqSODL.units.TesterPhysicalReqSODL     =  '';
    can.TesterPhysicalReqSODL.TesterPhysicalReqSODL     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqSODR
% Hex ID:7C6
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7C6 = hex2dec('7C6');

ix=find(msg == MSG_7C6);          % Find all message 0x7C6's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqSODR = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7C6 messages
    can.TesterPhysicalReqSODR.nsamples      = length(ix);
    can.TesterPhysicalReqSODR.ctime         = cantime(ix);

    can.TesterPhysicalReqSODR.units.TesterPhysicalReqSODR     =  '';
    can.TesterPhysicalReqSODR.TesterPhysicalReqSODR     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResRSM
% Hex ID:7CA
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7CA = hex2dec('7CA');

ix=find(msg == MSG_7CA);          % Find all message 0x7CA's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResRSM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7CA messages
    can.TesterPhysicalResRSM.nsamples      = length(ix);
    can.TesterPhysicalResRSM.ctime         = cantime(ix);

    can.TesterPhysicalResRSM.units.TesterPhysicalResRSM     =  '';
    can.TesterPhysicalResRSM.TesterPhysicalResRSM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResHCM2
% Hex ID:7CB
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7CB = hex2dec('7CB');

ix=find(msg == MSG_7CB);          % Find all message 0x7CB's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResHCM2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7CB messages
    can.TesterPhysicalResHCM2.nsamples      = length(ix);
    can.TesterPhysicalResHCM2.ctime         = cantime(ix);

    can.TesterPhysicalResHCM2.units.TesterPhysicalResHCM2     =  '';
    can.TesterPhysicalResHCM2.TesterPhysicalResHCM2     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResSODL
% Hex ID:7CC
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7CC = hex2dec('7CC');

ix=find(msg == MSG_7CC);          % Find all message 0x7CC's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResSODL = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7CC messages
    can.TesterPhysicalResSODL.nsamples      = length(ix);
    can.TesterPhysicalResSODL.ctime         = cantime(ix);

    can.TesterPhysicalResSODL.units.TesterPhysicalResSODL     =  '';
    can.TesterPhysicalResSODL.TesterPhysicalResSODL     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResSODR
% Hex ID:7CE
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7CE = hex2dec('7CE');

ix=find(msg == MSG_7CE);          % Find all message 0x7CE's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResSODR = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7CE messages
    can.TesterPhysicalResSODR.nsamples      = length(ix);
    can.TesterPhysicalResSODR.ctime         = cantime(ix);

    can.TesterPhysicalResSODR.units.TesterPhysicalResSODR     =  '';
    can.TesterPhysicalResSODR.TesterPhysicalResSODR     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqAPIM
% Hex ID:7D0
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7D0 = hex2dec('7D0');

ix=find(msg == MSG_7D0);          % Find all message 0x7D0's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqAPIM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7D0 messages
    can.TesterPhysicalReqAPIM.nsamples      = length(ix);
    can.TesterPhysicalReqAPIM.ctime         = cantime(ix);

    can.TesterPhysicalReqAPIM.units.TesterPhysicalReqAPIM     =  '';
    can.TesterPhysicalReqAPIM.TesterPhysicalReqAPIM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResAPIM
% Hex ID:7D8
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7D8 = hex2dec('7D8');

ix=find(msg == MSG_7D8);          % Find all message 0x7D8's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResAPIM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7D8 messages
    can.TesterPhysicalResAPIM.nsamples      = length(ix);
    can.TesterPhysicalResAPIM.ctime         = cantime(ix);

    can.TesterPhysicalResAPIM.units.TesterPhysicalResAPIM     =  '';
    can.TesterPhysicalResAPIM.TesterPhysicalResAPIM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterFunctionalReq
% Hex ID:7DF
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7DF = hex2dec('7DF');

ix=find(msg == MSG_7DF);          % Find all message 0x7DF's
if ~isempty(ix)                   % If there are any ...
    can.TesterFunctionalReq = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7DF messages
    can.TesterFunctionalReq.nsamples      = length(ix);
    can.TesterFunctionalReq.ctime         = cantime(ix);

    can.TesterFunctionalReq.units.TesterFunctionalReq     =  '';
    can.TesterFunctionalReq.TesterFunctionalReq     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqSOBDM
% Hex ID:7E2
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7E2 = hex2dec('7E2');

ix=find(msg == MSG_7E2);          % Find all message 0x7E2's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqSOBDM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7E2 messages
    can.TesterPhysicalReqSOBDM.nsamples      = length(ix);
    can.TesterPhysicalReqSOBDM.ctime         = cantime(ix);

    can.TesterPhysicalReqSOBDM.units.TesterPhysicalReqSOBDM     =  '';
    can.TesterPhysicalReqSOBDM.TesterPhysicalReqSOBDM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResSOBDM
% Hex ID:7EA
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7EA = hex2dec('7EA');

ix=find(msg == MSG_7EA);          % Find all message 0x7EA's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResSOBDM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7EA messages
    can.TesterPhysicalResSOBDM.nsamples      = length(ix);
    can.TesterPhysicalResSOBDM.ctime         = cantime(ix);

    can.TesterPhysicalResSOBDM.units.TesterPhysicalResSOBDM     =  '';
    can.TesterPhysicalResSOBDM.TesterPhysicalResSOBDM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



