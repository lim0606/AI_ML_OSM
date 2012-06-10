function can = module_Y2011_CGEA1_2_CMDB_v11_03_PtCAN(uniquemsgid, cantime, msg, b, canchannel, bfname)
%
% Vector Database Message Decoding
%
% Vector dbc File Name: C:\Documents and Settings\selwart\My Documents\My Web\2011 Project\DriveHistory\CANLists\2011Explorer\Y2011_CGEA1.2_CMDB_v11.03_PtCAN.dbc
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
% Vector Message Name: Global_PATS_Control_Info
% Hex ID:41
% Last edited by: selwart
% Date:26-Apr-2011
MSG_41 = hex2dec('41');

ix=find(msg == MSG_41);          % Find all message 0x41's
if ~isempty(ix)                   % If there are any ...
    can.Global_PATS_Control_Info = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x41 messages
    can.Global_PATS_Control_Info.nsamples      = length(ix);
    can.Global_PATS_Control_Info.ctime         = cantime(ix);

    can.Global_PATS_Control_Info.units.immoControlData_T1     =  'Encrypted';
    can.Global_PATS_Control_Info.immoControlData_T1     =    (2^32 * bb(2,:) + 2^24 * bb(3,:) + 2^16 * bb(4,:) + 2^8 * bb(5,:) + bb(6,:))' ;
    can.Global_PATS_Control_Info.units.immoControlCmd_T1     =  'SED';
    can.Global_PATS_Control_Info.immoControlCmd_T1     =    (bitand(bitshift(bb(1,:),-5),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Global_PATS_Control_Info2
% Hex ID:42
% Last edited by: selwart
% Date:26-Apr-2011
MSG_42 = hex2dec('42');

ix=find(msg == MSG_42);          % Find all message 0x42's
if ~isempty(ix)                   % If there are any ...
    can.Global_PATS_Control_Info2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x42 messages
    can.Global_PATS_Control_Info2.nsamples      = length(ix);
    can.Global_PATS_Control_Info2.ctime         = cantime(ix);

    can.Global_PATS_Control_Info2.units.immoControlData_T2     =  'Encrypted';
    can.Global_PATS_Control_Info2.immoControlData_T2     =    (2^32 * bb(2,:) + 2^24 * bb(3,:) + 2^16 * bb(4,:) + 2^8 * bb(5,:) + bb(6,:))' ;
    can.Global_PATS_Control_Info2.units.immoControlCmd_T2     =  'SED';
    can.Global_PATS_Control_Info2.immoControlCmd_T2     =    (bitand(bitshift(bb(1,:),-5),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Global_PATS_Target_Info
% Hex ID:47
% Last edited by: selwart
% Date:26-Apr-2011
MSG_47 = hex2dec('47');

ix=find(msg == MSG_47);          % Find all message 0x47's
if ~isempty(ix)                   % If there are any ...
    can.Global_PATS_Target_Info = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x47 messages
    can.Global_PATS_Target_Info.nsamples      = length(ix);
    can.Global_PATS_Target_Info.ctime         = cantime(ix);

    can.Global_PATS_Target_Info.units.immoTarget1Status     =  'SED';
    can.Global_PATS_Target_Info.immoTarget1Status     =    (bitand(bitshift(bb(1,:),-5),7))' ;
    can.Global_PATS_Target_Info.units.immoTarget1Data     =  'Encrypted';
    can.Global_PATS_Target_Info.immoTarget1Data     =    (2^32 * bb(2,:) + 2^24 * bb(3,:) + 2^16 * bb(4,:) + 2^8 * bb(5,:) + bb(6,:))' ;
    can.Global_PATS_Target_Info.units.immoTarget1Cmd     =  'SED';
    can.Global_PATS_Target_Info.immoTarget1Cmd     =    (bitand(bitshift(bb(1,:),-2),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Global_PATS_Target_Info_2
% Hex ID:48
% Last edited by: selwart
% Date:26-Apr-2011
MSG_48 = hex2dec('48');

ix=find(msg == MSG_48);          % Find all message 0x48's
if ~isempty(ix)                   % If there are any ...
    can.Global_PATS_Target_Info_2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x48 messages
    can.Global_PATS_Target_Info_2.nsamples      = length(ix);
    can.Global_PATS_Target_Info_2.ctime         = cantime(ix);

    can.Global_PATS_Target_Info_2.units.immoTarget2Status     =  'SED';
    can.Global_PATS_Target_Info_2.immoTarget2Status     =    (bitand(bitshift(bb(1,:),-5),7))' ;
    can.Global_PATS_Target_Info_2.units.immoTarget2Data     =  'Encrypted';
    can.Global_PATS_Target_Info_2.immoTarget2Data     =    (2^32 * bb(2,:) + 2^24 * bb(3,:) + 2^16 * bb(4,:) + 2^8 * bb(5,:) + bb(6,:))' ;
    can.Global_PATS_Target_Info_2.units.immoTarget2Cmd     =  'SED';
    can.Global_PATS_Target_Info_2.immoTarget2Cmd     =    (bitand(bitshift(bb(1,:),-2),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Global_PATS_SubTarget_FoE
% Hex ID:49
% Last edited by: selwart
% Date:26-Apr-2011
MSG_49 = hex2dec('49');

ix=find(msg == MSG_49);          % Find all message 0x49's
if ~isempty(ix)                   % If there are any ...
    can.Global_PATS_SubTarget_FoE = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x49 messages
    can.Global_PATS_SubTarget_FoE.nsamples      = length(ix);
    can.Global_PATS_SubTarget_FoE.ctime         = cantime(ix);

    can.Global_PATS_SubTarget_FoE.units.immoSubTarget1Data_T1     =  'Encrypted';
    can.Global_PATS_SubTarget_FoE.immoSubTarget1Data_T1     =    (2^32 * bb(2,:) + 2^24 * bb(3,:) + 2^16 * bb(4,:) + 2^8 * bb(5,:) + bb(6,:))' ;
    can.Global_PATS_SubTarget_FoE.units.immoSubTarget1Cmd_T1     =  'SED';
    can.Global_PATS_SubTarget_FoE.immoSubTarget1Cmd_T1     =    (bitand(bitshift(bb(1,:),-5),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: VehEmergencyData1
% Hex ID:4A
% Last edited by: selwart
% Date:26-Apr-2011
MSG_4A = hex2dec('4A');

ix=find(msg == MSG_4A);          % Find all message 0x4A's
if ~isempty(ix)                   % If there are any ...
    can.VehEmergencyData1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x4A messages
    can.VehEmergencyData1.nsamples      = length(ix);
    can.VehEmergencyData1.ctime         = cantime(ix);

    can.VehEmergencyData1.units.VedsPasSideBag_D_Ltchd     =  'SED';
    can.VehEmergencyData1.VedsPasSideBag_D_Ltchd     =    (bitand(bitshift(bb(8,:),-2),7))' ;
    can.VehEmergencyData1.units.VedsPasCrtnBag_D_Ltchd     =  'SED';
    can.VehEmergencyData1.VedsPasCrtnBag_D_Ltchd     =    (bitand(bitshift(bb(7,:),-5),7))' ;
    can.VehEmergencyData1.units.VedsPasBelt_D_Ltchd     =  'SED';
    can.VehEmergencyData1.VedsPasBelt_D_Ltchd     =    (bitand(bitshift(bb(7,:),-2),7))' ;
    can.VehEmergencyData1.units.VedsPasBag_D_Ltchd     =  'SED';
    can.VehEmergencyData1.VedsPasBag_D_Ltchd     =    (bitand(bitshift(bb(6,:),-5),7))' ;
    can.VehEmergencyData1.units.VedsMultiEvnt_D_Ltchd     =  'SED';
    can.VehEmergencyData1.VedsMultiEvnt_D_Ltchd     =    (bitand(bitshift(bb(6,:),-2),7))' ;
    can.VehEmergencyData1.units.VedsMaxDeltaV_D_Ltchd     =  'unitless';
    can.VehEmergencyData1.VedsMaxDeltaV_D_Ltchd     =    (bb(5,:))' ;
    can.VehEmergencyData1.units.VedsKneeBag_D_Ltchd     =  'SED';
    can.VehEmergencyData1.VedsKneeBag_D_Ltchd     =    (bitand(bitshift(bb(8,:),-5),7))' ;
    can.VehEmergencyData1.units.VedsEvntType_D_Ltchd     =  'SED';
    can.VehEmergencyData1.VedsEvntType_D_Ltchd     =    (bitand(bitshift(bb(4,:),-5),7))' ;
    can.VehEmergencyData1.units.VedsEvntRoll_D_Ltchd     =  'SED';
    can.VehEmergencyData1.VedsEvntRoll_D_Ltchd     =    (bitand(bitshift(bb(4,:),-2),7))' ;
    can.VehEmergencyData1.units.VedsDrvSideBag_D_Ltchd     =  'SED';
    can.VehEmergencyData1.VedsDrvSideBag_D_Ltchd     =    (bitand(bitshift(bb(3,:),-5),7))' ;
    can.VehEmergencyData1.units.VedsDrvCrtnBag_D_Ltchd     =  'SED';
    can.VehEmergencyData1.VedsDrvCrtnBag_D_Ltchd     =    (bitand(bitshift(bb(3,:),-2),7))' ;
    can.VehEmergencyData1.units.VedsDrvBelt_D_Ltchd     =  'SED';
    can.VehEmergencyData1.VedsDrvBelt_D_Ltchd     =    (bitand(bitshift(bb(2,:),-5),7))' ;
    can.VehEmergencyData1.units.VedsDrvBag_D_Ltchd     =  'SED';
    can.VehEmergencyData1.VedsDrvBag_D_Ltchd     =    (bitand(bitshift(bb(2,:),-2),7))' ;
    can.VehEmergencyData1.units.eCallNotification     =  'SED';
    can.VehEmergencyData1.eCallNotification     =    (bitand(bitshift(bb(1,:),-1),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: VehEmergencyData2
% Hex ID:4B
% Last edited by: selwart
% Date:26-Apr-2011
MSG_4B = hex2dec('4B');

ix=find(msg == MSG_4B);          % Find all message 0x4B's
if ~isempty(ix)                   % If there are any ...
    can.VehEmergencyData2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x4B messages
    can.VehEmergencyData2.nsamples      = length(ix);
    can.VehEmergencyData2.ctime         = cantime(ix);

    can.VehEmergencyData2.units.VedsRw3rBckl_D_Ltchd     =  'SED';
    can.VehEmergencyData2.VedsRw3rBckl_D_Ltchd     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.VehEmergencyData2.units.VedsRw3mBckl_D_Ltchd     =  'SED';
    can.VehEmergencyData2.VedsRw3mBckl_D_Ltchd     =    (bitand(bitshift(bb(4,:),-5),7))' ;
    can.VehEmergencyData2.units.VedsRw3lBckl_D_Ltchd     =  'SED';
    can.VehEmergencyData2.VedsRw3lBckl_D_Ltchd     =    (bitand(bitshift(bb(4,:),-2),7))' ;
    can.VehEmergencyData2.units.VedsRw2rBckl_D_Ltchd     =  'SED';
    can.VehEmergencyData2.VedsRw2rBckl_D_Ltchd     =    (bitand(bitshift(bb(3,:),-5),7))' ;
    can.VehEmergencyData2.units.VedsRw2mBckl_D_Ltchd     =  'SED';
    can.VehEmergencyData2.VedsRw2mBckl_D_Ltchd     =    (bitand(bitshift(bb(3,:),-2),7))' ;
    can.VehEmergencyData2.units.VedsRw2lBckl_D_Ltchd     =  'SED';
    can.VehEmergencyData2.VedsRw2lBckl_D_Ltchd     =    (bitand(bitshift(bb(2,:),-5),7))' ;
    can.VehEmergencyData2.units.VedsRw1PasChld_D_Ltchd     =  'SED';
    can.VehEmergencyData2.VedsRw1PasChld_D_Ltchd     =    (bitand(bitshift(bb(2,:),-2),7))' ;
    can.VehEmergencyData2.units.VedsRw1PasBckl_D_Ltchd     =  'SED';
    can.VehEmergencyData2.VedsRw1PasBckl_D_Ltchd     =    (bitand(bitshift(bb(1,:),-5),7))' ;
    can.VehEmergencyData2.units.VedsRw1DrvBckl_D_Ltchd     =  'SED';
    can.VehEmergencyData2.VedsRw1DrvBckl_D_Ltchd     =    (bitand(bitshift(bb(1,:),-2),7))' ;
    can.VehEmergencyData2.units.VedsRw2rRib_D_Ltchd     =  'SED';
    can.VehEmergencyData2.VedsRw2rRib_D_Ltchd     =    (bitand(bitshift(bb(6,:),-5),7))' ;
    can.VehEmergencyData2.units.VedsRw2lRib_D_Ltchd     =  'SED';
    can.VehEmergencyData2.VedsRw2lRib_D_Ltchd     =    (bitand(bitshift(bb(5,:),-2),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: BrakeSnData_2_CG1
% Hex ID:74
% Last edited by: selwart
% Date:26-Apr-2011
MSG_74 = hex2dec('74');

ix=find(msg == MSG_74);          % Find all message 0x74's
if ~isempty(ix)                   % If there are any ...
    can.BrakeSnData_2_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x74 messages
    can.BrakeSnData_2_CG1.nsamples      = length(ix);
    can.BrakeSnData_2_CG1.ctime         = cantime(ix);

    can.BrakeSnData_2_CG1.units.VehDynamicsSOS     =  'SED';
    can.BrakeSnData_2_CG1.VehDynamicsSOS     =    (bitget(bb(7,:),8))';
    can.BrakeSnData_2_CG1.units.AwdLck_Tq_RqMx     =  'Nm';
    can.BrakeSnData_2_CG1.AwdLck_Tq_RqMx     =    (2^8 * bitand(bb(4,:),15) + bb(5,:))' ;
    can.BrakeSnData_2_CG1.units.AwdLck_Tq_RqMn     =  'Nm';
    can.BrakeSnData_2_CG1.AwdLck_Tq_RqMn     =    (2^4 * bb(3,:) + bitand(bitshift(bb(4,:),-4),15))' ;
    can.BrakeSnData_2_CG1.units.SteWhlComp_An_Est     =  'deg';
    can.BrakeSnData_2_CG1.SteWhlComp_An_Est     =    1.000000e-001*(2^7 * bb(1,:) + bitand(bitshift(bb(2,:),-1),127))' +-1600.00;
    can.BrakeSnData_2_CG1.units.StopLamp_B_RqBrk     =  'SED';
    can.BrakeSnData_2_CG1.StopLamp_B_RqBrk     =    (bitget(bb(2,:),1))';
    can.BrakeSnData_2_CG1.units.BrkTerrMdeChng_D_Rdy     =  'SED';
    can.BrakeSnData_2_CG1.BrkTerrMdeChng_D_Rdy     =    (bitand(bitshift(bb(6,:),-3),7))' ;
    can.BrakeSnData_2_CG1.units.BrkTerrMde_D_Actl     =  'SED';
    can.BrakeSnData_2_CG1.BrkTerrMde_D_Actl     =    (bitand(bb(6,:),7))' ;
    can.BrakeSnData_2_CG1.units.SteWhlCompAnEst_D_Qf     =  'SED';
    can.BrakeSnData_2_CG1.SteWhlCompAnEst_D_Qf     =    (bitand(bitshift(bb(6,:),-6),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: BrakeSnData_3_CG1
% Hex ID:75
% Last edited by: selwart
% Date:26-Apr-2011
MSG_75 = hex2dec('75');

ix=find(msg == MSG_75);          % Find all message 0x75's
if ~isempty(ix)                   % If there are any ...
    can.BrakeSnData_3_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x75 messages
    can.BrakeSnData_3_CG1.nsamples      = length(ix);
    can.BrakeSnData_3_CG1.ctime         = cantime(ix);

    can.BrakeSnData_3_CG1.units.HsaStat_D_Dsply     =  'SED';
    can.BrakeSnData_3_CG1.HsaStat_D_Dsply     =    (bitand(bitshift(bb(5,:),-1),7))' ;
    can.BrakeSnData_3_CG1.units.HsaTrnAout_Tq_Rq     =  'Nm';
    can.BrakeSnData_3_CG1.HsaTrnAout_Tq_Rq     =    4.000000e+000*(2^8 * bb(7,:) + bb(8,:))' +-131072.00;
    can.BrakeSnData_3_CG1.units.HsaStat_D_Actl     =  'SED';
    can.BrakeSnData_3_CG1.HsaStat_D_Actl     =    (bitand(bitshift(bb(5,:),-4),7))' ;
    can.BrakeSnData_3_CG1.units.HsaRoad_Grad_Est     =  '%';
    can.BrakeSnData_3_CG1.HsaRoad_Grad_Est     =    5.000000e-001*(2^8 * bitand(bb(5,:),1) + bb(6,:))' +-127.00;
    can.BrakeSnData_3_CG1.units.VehYawComp_W_Actl     =  'deg/s';
    can.BrakeSnData_3_CG1.VehYawComp_W_Actl     =    3.663000e-002*(2^4 * bb(1,:) + bitand(bitshift(bb(2,:),-4),15))' +-75.00;
    can.BrakeSnData_3_CG1.units.VehYaw_W_Rq     =  'deg/s';
    can.BrakeSnData_3_CG1.VehYaw_W_Rq     =    3.663000e-002*(2^8 * bitand(bb(2,:),15) + bb(3,:))' +-75.00;
    can.BrakeSnData_3_CG1.units.VehSideSlip_An_Est     =  'rad';
    can.BrakeSnData_3_CG1.VehSideSlip_An_Est     =    2.000000e-003*(2^1 * bb(4,:) + bitand(bitshift(bb(5,:),-7),1))' +-0.50;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: BrakeSnData_4_CG1
% Hex ID:7C
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7C = hex2dec('7C');

ix=find(msg == MSG_7C);          % Find all message 0x7C's
if ~isempty(ix)                   % If there are any ...
    can.BrakeSnData_4_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7C messages
    can.BrakeSnData_4_CG1.nsamples      = length(ix);
    can.BrakeSnData_4_CG1.ctime         = cantime(ix);

    can.BrakeSnData_4_CG1.units.EngRun_D_ReqBrk     =  'SED';
    can.BrakeSnData_4_CG1.EngRun_D_ReqBrk     =    (bitand(bitshift(bb(2,:),-1),3))' ;
    can.BrakeSnData_4_CG1.units.BrkTotTqRqArb_No_Cs     =  'Unitless';
    can.BrakeSnData_4_CG1.BrkTotTqRqArb_No_Cs     =    (bb(3,:))' ;
    can.BrakeSnData_4_CG1.units.BrkTotTqRqArb_No_Cnt     =  'Unitless';
    can.BrakeSnData_4_CG1.BrkTotTqRqArb_No_Cnt     =    (bitand(bitshift(bb(4,:),-4),15))' ;
    can.BrakeSnData_4_CG1.units.BrkTot_Tq_RqArb     =  'Nm';
    can.BrakeSnData_4_CG1.BrkTot_Tq_RqArb     =    4.000000e+000*(2^5 * bb(1,:) + bitand(bitshift(bb(2,:),-3),31))' ;
    can.BrakeSnData_4_CG1.units.BrkTot_Tq_Actl     =  'Nm';
    can.BrakeSnData_4_CG1.BrkTot_Tq_Actl     =    4.000000e+000*(2^5 * bb(5,:) + bitand(bitshift(bb(6,:),-3),31))' ;
    can.BrakeSnData_4_CG1.units.VehOverGnd_V_Est     =  'kph';
    can.BrakeSnData_4_CG1.VehOverGnd_V_Est     =    1.000000e-002*(2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Steering_Wheel_Data2
% Hex ID:81
% Last edited by: selwart
% Date:26-Apr-2011
MSG_81 = hex2dec('81');

ix=find(msg == MSG_81);          % Find all message 0x81's
if ~isempty(ix)                   % If there are any ...
    can.Steering_Wheel_Data2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x81 messages
    can.Steering_Wheel_Data2.nsamples      = length(ix);
    can.Steering_Wheel_Data2.ctime         = cantime(ix);

    can.Steering_Wheel_Data2.units.SteWhlCtl_RSide_OK     =  'SED';
    can.Steering_Wheel_Data2.SteWhlCtl_RSide_OK     =    (bitget(bb(2,:),2))';
    can.Steering_Wheel_Data2.units.SteWhlCtl_RSide_CursorUp     =  'SED';
    can.Steering_Wheel_Data2.SteWhlCtl_RSide_CursorUp     =    (bitget(bb(2,:),1))';
    can.Steering_Wheel_Data2.units.SteWhlCtl_RSide_CursorRt     =  'SED';
    can.Steering_Wheel_Data2.SteWhlCtl_RSide_CursorRt     =    (bitget(bb(1,:),8))';
    can.Steering_Wheel_Data2.units.SteWhlCtl_RSide_CursorLeft     =  'SED';
    can.Steering_Wheel_Data2.SteWhlCtl_RSide_CursorLeft     =    (bitget(bb(1,:),7))';
    can.Steering_Wheel_Data2.units.SteWhlCtl_RSide_CursorDown     =  'SED';
    can.Steering_Wheel_Data2.SteWhlCtl_RSide_CursorDown     =    (bitget(bb(1,:),6))';
    can.Steering_Wheel_Data2.units.SteWhlCtl_LSide_OK     =  'SED';
    can.Steering_Wheel_Data2.SteWhlCtl_LSide_OK     =    (bitget(bb(1,:),5))';
    can.Steering_Wheel_Data2.units.SteWhlCtl_LSide_CursorUp     =  'SED';
    can.Steering_Wheel_Data2.SteWhlCtl_LSide_CursorUp     =    (bitget(bb(1,:),4))';
    can.Steering_Wheel_Data2.units.SteWhlCtl_LSide_CursorRt     =  'SED';
    can.Steering_Wheel_Data2.SteWhlCtl_LSide_CursorRt     =    (bitget(bb(1,:),3))';
    can.Steering_Wheel_Data2.units.SteWhlCtl_LSide_CursorLeft     =  'SED';
    can.Steering_Wheel_Data2.SteWhlCtl_LSide_CursorLeft     =    (bitget(bb(1,:),2))';
    can.Steering_Wheel_Data2.units.SteWhlCtl_LSide_CursorDown     =  'SED';
    can.Steering_Wheel_Data2.SteWhlCtl_LSide_CursorDown     =    (bitget(bb(1,:),1))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EPAS_INFO
% Hex ID:82
% Last edited by: selwart
% Date:26-Apr-2011
MSG_82 = hex2dec('82');

ix=find(msg == MSG_82);          % Find all message 0x82's
if ~isempty(ix)                   % If there are any ...
    can.EPAS_INFO = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x82 messages
    can.EPAS_INFO.nsamples      = length(ix);
    can.EPAS_INFO.ctime         = cantime(ix);

    can.EPAS_INFO.units.SteMdule_U_Meas     =  'Volts';
    can.EPAS_INFO.SteMdule_U_Meas     =    5.000000e-002*(bb(5,:))' +6.00;
    can.EPAS_INFO.units.SteMdule_I_Est     =  'Amps';
    can.EPAS_INFO.SteMdule_I_Est     =    5.000000e-002*(2^6 * bitand(bb(3,:),63) + bitand(bitshift(bb(4,:),-2),63))' +-64.00;
    can.EPAS_INFO.units.EPAS_FAILURE     =  'SED';
    can.EPAS_INFO.EPAS_FAILURE     =    (bitand(bb(2,:),3))' ;
    can.EPAS_INFO.units.SteeringColumnTorque     =  'Nm';
    can.EPAS_INFO.SteeringColumnTorque     =    6.250000e-002*(bb(1,:))' +-8.00;
    can.EPAS_INFO.units.SAPPAngleControlStat6     =  'SED';
    can.EPAS_INFO.SAPPAngleControlStat6     =    (bitget(bb(2,:),8))';
    can.EPAS_INFO.units.SAPPAngleControlStat5     =  'SED';
    can.EPAS_INFO.SAPPAngleControlStat5     =    (bitget(bb(2,:),7))';
    can.EPAS_INFO.units.SAPPAngleControlStat4     =  'SED';
    can.EPAS_INFO.SAPPAngleControlStat4     =    (bitget(bb(2,:),6))';
    can.EPAS_INFO.units.SAPPAngleControlStat3     =  'SED';
    can.EPAS_INFO.SAPPAngleControlStat3     =    (bitget(bb(2,:),5))';
    can.EPAS_INFO.units.SAPPAngleControlStat2     =  'SED';
    can.EPAS_INFO.SAPPAngleControlStat2     =    (bitget(bb(2,:),4))';
    can.EPAS_INFO.units.SAPPAngleControlStat1     =  'SED';
    can.EPAS_INFO.SAPPAngleControlStat1     =    (bitand(bitshift(bb(3,:),-6),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Steering_Data
% Hex ID:83
% Last edited by: selwart
% Date:26-Apr-2011
MSG_83 = hex2dec('83');

ix=find(msg == MSG_83);          % Find all message 0x83's
if ~isempty(ix)                   % If there are any ...
    can.Steering_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x83 messages
    can.Steering_Data.nsamples      = length(ix);
    can.Steering_Data.ctime         = cantime(ix);

    can.Steering_Data.units.SteWhlCtl_Mute     =  'SED';
    can.Steering_Data.SteWhlCtl_Mute     =    (bitget(bb(5,:),7))';
    can.Steering_Data.units.SteWhlCtl_Mode     =  'SED';
    can.Steering_Data.SteWhlCtl_Mode     =    (bitget(bb(4,:),1))';
    can.Steering_Data.units.SteWhlCtl_OK     =  'SED';
    can.Steering_Data.SteWhlCtl_OK     =    (bitget(bb(3,:),8))';
    can.Steering_Data.units.SteWhlCtl_Phone     =  'SED';
    can.Steering_Data.SteWhlCtl_Phone     =    (bitget(bb(3,:),7))';
    can.Steering_Data.units.SteWhlCtl_End     =  'SED';
    can.Steering_Data.SteWhlCtl_End     =    (bitget(bb(3,:),6))';
    can.Steering_Data.units.SteWhlCtl_Send     =  'SED';
    can.Steering_Data.SteWhlCtl_Send     =    (bitget(bb(3,:),5))';
    can.Steering_Data.units.SteWhlCtl_Voice_PTT     =  'SED';
    can.Steering_Data.SteWhlCtl_Voice_PTT     =    (bitget(bb(3,:),4))';
    can.Steering_Data.units.SteWhlCtl_Seek_Left     =  'SED';
    can.Steering_Data.SteWhlCtl_Seek_Left     =    (bitget(bb(2,:),3))';
    can.Steering_Data.units.SteWhlCtl_Seek_Right     =  'SED';
    can.Steering_Data.SteWhlCtl_Seek_Right     =    (bitget(bb(2,:),2))';
    can.Steering_Data.units.SteWhlCtl_Media     =  'SED';
    can.Steering_Data.SteWhlCtl_Media     =    (bitget(bb(2,:),1))';
    can.Steering_Data.units.SteWhlCtl_Volume_Down     =  'SED';
    can.Steering_Data.SteWhlCtl_Volume_Down     =    (bitget(bb(1,:),7))';
    can.Steering_Data.units.SteWhlCtl_Volume_Up     =  'SED';
    can.Steering_Data.SteWhlCtl_Volume_Up     =    (bitget(bb(1,:),8))';
    can.Steering_Data.units.Smart_Wiper_Motor_Stat     =  'SED';
    can.Steering_Data.Smart_Wiper_Motor_Stat     =    (bitand(bitshift(bb(2,:),-6),3))' ;
    can.Steering_Data.units.Mfs_Turn_Stalk_SW_Status     =  'SED';
    can.Steering_Data.Mfs_Turn_Stalk_SW_Status     =    (bitand(bb(1,:),3))' ;
    can.Steering_Data.units.HighBeam_FlashToPassSw     =  'SED';
    can.Steering_Data.HighBeam_FlashToPassSw     =    (bitand(bitshift(bb(1,:),-2),3))' ;
    can.Steering_Data.units.SteColumn_Status     =  'SED';
    can.Steering_Data.SteColumn_Status     =    (bitand(bitshift(bb(2,:),-3),7))' ;
    can.Steering_Data.units.SteCol_Manual_Override     =  'SED';
    can.Steering_Data.SteCol_Manual_Override     =    (bitget(bb(1,:),5))';
    can.Steering_Data.units.CcButtnStat_D_Actl     =  'Unitless';
    can.Steering_Data.CcButtnStat_D_Actl     =    (2^8 * bitand(bb(5,:),7) + bb(6,:))' ;
    can.Steering_Data.units.HeatedWash_Mode_Stat     =  'SED';
    can.Steering_Data.HeatedWash_Mode_Stat     =    (bitand(bitshift(bb(7,:),-5),7))' ;
    can.Steering_Data.units.LaSwtchPos_D_Stat     =  'SED';
    can.Steering_Data.LaSwtchPos_D_Stat     =    (bitand(bitshift(bb(3,:),-1),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Steering_Wheel_Data_CG1
% Hex ID:84
% Last edited by: selwart
% Date:26-Apr-2011
MSG_84 = hex2dec('84');

ix=find(msg == MSG_84);          % Find all message 0x84's
if ~isempty(ix)                   % If there are any ...
    can.Steering_Wheel_Data_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x84 messages
    can.Steering_Wheel_Data_CG1.nsamples      = length(ix);
    can.Steering_Wheel_Data_CG1.ctime         = cantime(ix);

    can.Steering_Wheel_Data_CG1.units.SteWhlRelInit_An_Sns     =  'deg';
    can.Steering_Wheel_Data_CG1.SteWhlRelInit_An_Sns     =    1.000000e-001*(2^7 * bb(1,:) + bitand(bitshift(bb(2,:),-1),127))' +-1600.00;
    can.Steering_Wheel_Data_CG1.units.SteWhlRelCalib_An_Sns     =  'deg';
    can.Steering_Wheel_Data_CG1.SteWhlRelCalib_An_Sns     =    1.000000e-001*(2^7 * bb(3,:) + bitand(bitshift(bb(4,:),-1),127))' +-1600.00;
    can.Steering_Wheel_Data_CG1.units.SteWhlRelInit2_An_Sns     =  'deg';
    can.Steering_Wheel_Data_CG1.SteWhlRelInit2_An_Sns     =    1.000000e-001*(2^8 * bb(7,:) + bb(8,:))' +-3200.00;
    can.Steering_Wheel_Data_CG1.units.SteWhlAn_No_Cs     =  'Unitless';
    can.Steering_Wheel_Data_CG1.SteWhlAn_No_Cs     =    (bb(5,:))' ;
    can.Steering_Wheel_Data_CG1.units.SteWhlAn_No_Cnt     =  'Counts';
    can.Steering_Wheel_Data_CG1.SteWhlAn_No_Cnt     =    (bitand(bitshift(bb(6,:),-4),15))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Yaw_Data
% Hex ID:91
% Last edited by: selwart
% Date:26-Apr-2011
MSG_91 = hex2dec('91');

ix=find(msg == MSG_91);          % Find all message 0x91's
if ~isempty(ix)                   % If there are any ...
    can.Yaw_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x91 messages
    can.Yaw_Data.nsamples      = length(ix);
    can.Yaw_Data.ctime         = cantime(ix);

    can.Yaw_Data.units.VehYaw_W_Actl     =  'rad/s';
    can.Yaw_Data.VehYaw_W_Actl     =    2.000000e-004*(2^8 * bb(5,:) + bb(6,:))' +-6.50;
    can.Yaw_Data.units.VehRol_W_Actl     =  'rad/s';
    can.Yaw_Data.VehRol_W_Actl     =    2.000000e-004*(2^8 * bb(3,:) + bb(4,:))' +-6.50;
    can.Yaw_Data.units.VehPtch_W_Actl     =  'rad/s';
    can.Yaw_Data.VehPtch_W_Actl     =    2.000000e-004*(2^8 * bb(1,:) + bb(2,:))' +-6.50;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Accel_Data
% Hex ID:92
% Last edited by: selwart
% Date:26-Apr-2011
MSG_92 = hex2dec('92');

ix=find(msg == MSG_92);          % Find all message 0x92's
if ~isempty(ix)                   % If there are any ...
    can.Accel_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x92 messages
    can.Accel_Data.nsamples      = length(ix);
    can.Accel_Data.ctime         = cantime(ix);

    can.Accel_Data.units.VehVertAActl_D_Qf     =  'SED';
    can.Accel_Data.VehVertAActl_D_Qf     =    (bitand(bitshift(bb(5,:),-5),3))' ;
    can.Accel_Data.units.VehLongAActl_D_Qf     =  'SED';
    can.Accel_Data.VehLongAActl_D_Qf     =    (bitand(bitshift(bb(3,:),-5),3))' ;
    can.Accel_Data.units.VehLatAActl_D_Qf     =  'SED';
    can.Accel_Data.VehLatAActl_D_Qf     =    (bitand(bitshift(bb(1,:),-5),3))' ;
    can.Accel_Data.units.VehVert_A_Actl     =  'm/s^2';
    can.Accel_Data.VehVert_A_Actl     =    1.000000e-002*(2^8 * bitand(bb(5,:),31) + bb(6,:))' +-40.00;
    can.Accel_Data.units.VehLong_A_Actl     =  'm/s^2';
    can.Accel_Data.VehLong_A_Actl     =    1.000000e-002*(2^8 * bitand(bb(3,:),31) + bb(4,:))' +-40.00;
    can.Accel_Data.units.VehLat_A_Actl     =  'm/s^2';
    can.Accel_Data.VehLat_A_Actl     =    1.000000e-002*(2^8 * bitand(bb(1,:),31) + bb(2,:))' +-40.00;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Cluster_Legacy
% Hex ID:102
% Last edited by: selwart
% Date:26-Apr-2011
MSG_102 = hex2dec('102');

ix=find(msg == MSG_102);          % Find all message 0x102's
if ~isempty(ix)                   % If there are any ...
    can.Cluster_Legacy = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x102 messages
    can.Cluster_Legacy.nsamples      = length(ix);
    can.Cluster_Legacy.ctime         = cantime(ix);

    can.Cluster_Legacy.units.Veh_V_CompLimMx     =  'km/h';
    can.Cluster_Legacy.Veh_V_CompLimMx     =    1.000000e-001*(2^8 * bitand(bb(4,:),15) + bb(5,:))' ;
    can.Cluster_Legacy.units.DISPLAY_SPEED_SCALING     =  '%';
    can.Cluster_Legacy.DISPLAY_SPEED_SCALING     =    5.000000e-001*(bitand(bitshift(bb(3,:),-1),15))' +100.00;
    can.Cluster_Legacy.units.DISPLAY_SPEED_OFFSET     =  'kph';
    can.Cluster_Legacy.DISPLAY_SPEED_OFFSET     =    5.000000e-001*(bitand(bitshift(bb(3,:),-5),7))' ;
    can.Cluster_Legacy.units.Reverse_Mirror_Cmd     =  'SED';
    can.Cluster_Legacy.Reverse_Mirror_Cmd     =    (bitget(bb(2,:),3))';
    can.Cluster_Legacy.units.Autolamp_Delay_Cmd     =  'Seconds';
    can.Cluster_Legacy.Autolamp_Delay_Cmd     =    (bb(1,:))' ;
    can.Cluster_Legacy.units.Running_Board_Cmd     =  'SED';
    can.Cluster_Legacy.Running_Board_Cmd     =    (bitand(bitshift(bb(2,:),-4),3))' ;
    can.Cluster_Legacy.units.Power_Liftgate_Mode_Cmd     =  'SED';
    can.Cluster_Legacy.Power_Liftgate_Mode_Cmd     =    (bitget(bb(2,:),4))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Body_MsgCntr_Stat_CG1
% Hex ID:103
% Last edited by: selwart
% Date:26-Apr-2011
MSG_103 = hex2dec('103');

ix=find(msg == MSG_103);          % Find all message 0x103's
if ~isempty(ix)                   % If there are any ...
    can.Body_MsgCntr_Stat_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x103 messages
    can.Body_MsgCntr_Stat_CG1.nsamples      = length(ix);
    can.Body_MsgCntr_Stat_CG1.ctime         = cantime(ix);

    can.Body_MsgCntr_Stat_CG1.units.PE_PEPS_System_Stat     =  'SED';
    can.Body_MsgCntr_Stat_CG1.PE_PEPS_System_Stat     =    (bb(6,:))' ;
    can.Body_MsgCntr_Stat_CG1.units.Keycode_Status     =  '';
    can.Body_MsgCntr_Stat_CG1.Keycode_Status     =    (2^16 * bitand(bb(2,:),15) + 2^8 * bb(3,:) + bb(4,:))' ;
    can.Body_MsgCntr_Stat_CG1.units.Autolamp_Delay_Stat     =  'Seconds';
    can.Body_MsgCntr_Stat_CG1.Autolamp_Delay_Stat     =    (bb(1,:))' ;
    can.Body_MsgCntr_Stat_CG1.units.HvacEvap_Te_Rq_UB     =  'SED';
    can.Body_MsgCntr_Stat_CG1.HvacEvap_Te_Rq_UB     =    (bitget(bb(8,:),6))';
    can.Body_MsgCntr_Stat_CG1.units.HvacEvap_Te_Rq     =  'Degrees C';
    can.Body_MsgCntr_Stat_CG1.HvacEvap_Te_Rq     =    1.250000e-001*(2^2 * bb(7,:) + bitand(bitshift(bb(8,:),-6),3))' +-50.00;
    can.Body_MsgCntr_Stat_CG1.units.Remote_Start_QuietMode_UB     =  'SED';
    can.Body_MsgCntr_Stat_CG1.Remote_Start_QuietMode_UB     =    (bitget(bb(5,:),2))';
    can.Body_MsgCntr_Stat_CG1.units.Remote_Start_QuietMode     =  'SED';
    can.Body_MsgCntr_Stat_CG1.Remote_Start_QuietMode     =    (bitget(bb(5,:),1))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Side_Detect_CmdM
% Hex ID:108
% Last edited by: selwart
% Date:26-Apr-2011
MSG_108 = hex2dec('108');

ix=find(msg == MSG_108);          % Find all message 0x108's
if ~isempty(ix)                   % If there are any ...
    can.Side_Detect_CmdM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x108 messages
    can.Side_Detect_CmdM.nsamples      = length(ix);
    can.Side_Detect_CmdM.ctime         = cantime(ix);

    can.Side_Detect_CmdM.units.Cross_Traffic_Cmd     =  'SED';
    can.Side_Detect_CmdM.Cross_Traffic_Cmd     =    (bitand(bitshift(bb(1,:),-4),3))' ;
    can.Side_Detect_CmdM.units.Side_Detect_Cmd     =  'SED';
    can.Side_Detect_CmdM.Side_Detect_Cmd     =    (bitand(bitshift(bb(1,:),-6),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ParkAid_Audible_Warn_CmdM
% Hex ID:10A
% Last edited by: selwart
% Date:26-Apr-2011
MSG_10A = hex2dec('10A');

ix=find(msg == MSG_10A);          % Find all message 0x10A's
if ~isempty(ix)                   % If there are any ...
    can.ParkAid_Audible_Warn_CmdM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x10A messages
    can.ParkAid_Audible_Warn_CmdM.nsamples      = length(ix);
    can.ParkAid_Audible_Warn_CmdM.ctime         = cantime(ix);

    can.ParkAid_Audible_Warn_CmdM.units.AutoPark_Cancel_Request     =  'SED';
    can.ParkAid_Audible_Warn_CmdM.AutoPark_Cancel_Request     =    (bitand(bitshift(bb(2,:),-6),3))' ;
    can.ParkAid_Audible_Warn_CmdM.units.ParkAid_Audible_Warn_Cmd     =  'SED';
    can.ParkAid_Audible_Warn_CmdM.ParkAid_Audible_Warn_Cmd     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.ParkAid_Audible_Warn_CmdM.units.ParkAid_Aud_Frt_Warn_Cmd     =  'SED';
    can.ParkAid_Audible_Warn_CmdM.ParkAid_Aud_Frt_Warn_Cmd     =    (bitand(bitshift(bb(1,:),-4),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ParkAid_Audible_Warn_Stat
% Hex ID:10B
% Last edited by: selwart
% Date:26-Apr-2011
MSG_10B = hex2dec('10B');

ix=find(msg == MSG_10B);          % Find all message 0x10B's
if ~isempty(ix)                   % If there are any ...
    can.ParkAid_Audible_Warn_Stat = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x10B messages
    can.ParkAid_Audible_Warn_Stat.nsamples      = length(ix);
    can.ParkAid_Audible_Warn_Stat.ctime         = cantime(ix);

    can.ParkAid_Audible_Warn_Stat.units.RpaChime_D_Rq     =  'SED';
    can.ParkAid_Audible_Warn_Stat.RpaChime_D_Rq     =    (bitand(bitshift(bb(4,:),-4),15))' ;
    can.ParkAid_Audible_Warn_Stat.units.FpaChime_D_Rq     =  'SED';
    can.ParkAid_Audible_Warn_Stat.FpaChime_D_Rq     =    (bitand(bitshift(bb(2,:),-1),15))' ;
    can.ParkAid_Audible_Warn_Stat.units.SAPPStatusCoding     =  'SED';
    can.ParkAid_Audible_Warn_Stat.SAPPStatusCoding     =    (bb(3,:))' ;
    can.ParkAid_Audible_Warn_Stat.units.Volume_Cutback     =  'SED';
    can.ParkAid_Audible_Warn_Stat.Volume_Cutback     =    (bitget(bb(1,:),2))';
    can.ParkAid_Audible_Warn_Stat.units.ParkAid_Fault_Condition     =  'SED';
    can.ParkAid_Audible_Warn_Stat.ParkAid_Fault_Condition     =    (bitand(bitshift(bb(2,:),-5),7))' ;
    can.ParkAid_Audible_Warn_Stat.units.ParkAid_Audible_Warn_Stat     =  'SED';
    can.ParkAid_Audible_Warn_Stat.ParkAid_Audible_Warn_Stat     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.ParkAid_Audible_Warn_Stat.units.ParkAid_Aud_Frt_Trgt_Warn     =  'SED';
    can.ParkAid_Audible_Warn_Stat.ParkAid_Aud_Frt_Trgt_Warn     =    (bitand(bitshift(bb(1,:),-2),3))' ;
    can.ParkAid_Audible_Warn_Stat.units.ParkAid_Aud_Frt_Warn_Stat     =  'SED';
    can.ParkAid_Audible_Warn_Stat.ParkAid_Aud_Frt_Warn_Stat     =    (bitand(bitshift(bb(1,:),-4),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ClmtCtrlSeatSet_Cmd_v2
% Hex ID:124
% Last edited by: selwart
% Date:26-Apr-2011
MSG_124 = hex2dec('124');

ix=find(msg == MSG_124);          % Find all message 0x124's
if ~isempty(ix)                   % If there are any ...
    can.ClmtCtrlSeatSet_Cmd_v2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x124 messages
    can.ClmtCtrlSeatSet_Cmd_v2.nsamples      = length(ix);
    can.ClmtCtrlSeatSet_Cmd_v2.ctime         = cantime(ix);

    can.ClmtCtrlSeatSet_Cmd_v2.units.ClmtCtrlSeat_SetCmd_Dvr     =  'SED';
    can.ClmtCtrlSeatSet_Cmd_v2.ClmtCtrlSeat_SetCmd_Dvr     =    (bb(1,:))' ;
    can.ClmtCtrlSeatSet_Cmd_v2.units.ClmtCtrlSeat_SetCmd_Psgr     =  'SED';
    can.ClmtCtrlSeatSet_Cmd_v2.ClmtCtrlSeat_SetCmd_Psgr     =    (bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ClmtCtrlSeatSetStat_v2_HS
% Hex ID:125
% Last edited by: selwart
% Date:26-Apr-2011
MSG_125 = hex2dec('125');

ix=find(msg == MSG_125);          % Find all message 0x125's
if ~isempty(ix)                   % If there are any ...
    can.ClmtCtrlSeatSetStat_v2_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x125 messages
    can.ClmtCtrlSeatSetStat_v2_HS.nsamples      = length(ix);
    can.ClmtCtrlSeatSetStat_v2_HS.ctime         = cantime(ix);

    can.ClmtCtrlSeatSetStat_v2_HS.units.ClmtCtrlSeat_SetStat_Psgr     =  'SED';
    can.ClmtCtrlSeatSetStat_v2_HS.ClmtCtrlSeat_SetStat_Psgr     =    (bb(2,:))' ;
    can.ClmtCtrlSeatSetStat_v2_HS.units.ClmtCtrlSeat_SetStat_Dvr     =  'SED';
    can.ClmtCtrlSeatSetStat_v2_HS.ClmtCtrlSeat_SetStat_Dvr     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TransData_1_CG1
% Hex ID:150
% Last edited by: selwart
% Date:26-Apr-2011
MSG_150 = hex2dec('150');

ix=find(msg == MSG_150);          % Find all message 0x150's
if ~isempty(ix)                   % If there are any ...
    can.TransData_1_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x150 messages
    can.TransData_1_CG1.nsamples      = length(ix);
    can.TransData_1_CG1.ctime         = cantime(ix);

    can.TransData_1_CG1.units.TrnAinIdl_N_RqMn     =  'rpm';
    can.TransData_1_CG1.TrnAinIdl_N_RqMn     =    2.000000e+000*(2^8 * bitand(bb(5,:),7) + bb(6,:))' ;
    can.TransData_1_CG1.units.TrnAin_N_RqMxPrtct     =  'rpm';
    can.TransData_1_CG1.TrnAin_N_RqMxPrtct     =    2.500000e+001*(2^2 * bb(3,:) + bitand(bitshift(bb(4,:),-6),3))' ;
    can.TransData_1_CG1.units.TrnAin_Tq_RqFstMx     =  'Nm';
    can.TransData_1_CG1.TrnAin_Tq_RqFstMx     =    (2^5 * bitand(bb(4,:),63) + bitand(bitshift(bb(5,:),-3),31))' +-500.00;
    can.TransData_1_CG1.units.TrnAin_Tq_RqSlwMxPrs     =  'Nm';
    can.TransData_1_CG1.TrnAin_Tq_RqSlwMxPrs     =    (2^3 * bb(1,:) + bitand(bitshift(bb(2,:),-5),7))' +-500.00;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EngineData_1_CG1
% Hex ID:151
% Last edited by: selwart
% Date:26-Apr-2011
MSG_151 = hex2dec('151');

ix=find(msg == MSG_151);          % Find all message 0x151's
if ~isempty(ix)                   % If there are any ...
    can.EngineData_1_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x151 messages
    can.EngineData_1_CG1.nsamples      = length(ix);
    can.EngineData_1_CG1.ctime         = cantime(ix);

    can.EngineData_1_CG1.units.TrnEngBrk_B_Allw     =  'SED';
    can.EngineData_1_CG1.TrnEngBrk_B_Allw     =    (bitget(bb(4,:),1))';
    can.EngineData_1_CG1.units.TrnAout_W_ActlUnfilt     =  'rad/s';
    can.EngineData_1_CG1.TrnAout_W_ActlUnfilt     =    1.000000e-001*(2^7 * bb(3,:) + bitand(bitshift(bb(4,:),-1),127))' ;
    can.EngineData_1_CG1.units.TrnIpcDsplyGear_D_Actl     =  'SED';
    can.EngineData_1_CG1.TrnIpcDsplyGear_D_Actl     =    (bitand(bitshift(bb(1,:),-4),15))' ;
    can.EngineData_1_CG1.units.TrnIpcDsplyMde_D_Stat     =  'SED';
    can.EngineData_1_CG1.TrnIpcDsplyMde_D_Stat     =    (bitand(bitshift(bb(2,:),-4),3))' ;
    can.EngineData_1_CG1.units.TrnIpcDsplyMde_D_Actl     =  'SED';
    can.EngineData_1_CG1.TrnIpcDsplyMde_D_Actl     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.EngineData_1_CG1.units.TrnIpcDsplyGear_D_Stat     =  'SED';
    can.EngineData_1_CG1.TrnIpcDsplyGear_D_Stat     =    (bitand(bb(2,:),3))' ;
    can.EngineData_1_CG1.units.TurboBoostPressure     =  'bar';
    can.EngineData_1_CG1.TurboBoostPressure     =    1.000000e-002*(2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TransData_2_CG1
% Hex ID:152
% Last edited by: selwart
% Date:26-Apr-2011
MSG_152 = hex2dec('152');

ix=find(msg == MSG_152);          % Find all message 0x152's
if ~isempty(ix)                   % If there are any ...
    can.TransData_2_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x152 messages
    can.TransData_2_CG1.nsamples      = length(ix);
    can.TransData_2_CG1.ctime         = cantime(ix);

    can.TransData_2_CG1.units.GearPos_D_Actl     =  'SED';
    can.TransData_2_CG1.GearPos_D_Actl     =    (bitand(bitshift(bb(7,:),-4),15))' ;
    can.TransData_2_CG1.units.TrnAout2_Tq_Actl     =  'Nm';
    can.TransData_2_CG1.TrnAout2_Tq_Actl     =    4.000000e+000*(2^8 * bb(5,:) + bb(6,:))' +-131072.00;
    can.TransData_2_CG1.units.TrnTotTq_Rt_Actl     =  'Unitless';
    can.TransData_2_CG1.TrnTotTq_Rt_Actl     =    1.000000e-003*(2^8 * bb(3,:) + bb(4,:))' ;
    can.TransData_2_CG1.units.TrnGbox_Rt_Pred     =  'Unitless';
    can.TransData_2_CG1.TrnGbox_Rt_Pred     =    1.000000e-003*(2^8 * bb(1,:) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EngineData_2_CG1
% Hex ID:153
% Last edited by: selwart
% Date:26-Apr-2011
MSG_153 = hex2dec('153');

ix=find(msg == MSG_153);          % Find all message 0x153's
if ~isempty(ix)                   % If there are any ...
    can.EngineData_2_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x153 messages
    can.EngineData_2_CG1.nsamples      = length(ix);
    can.EngineData_2_CG1.ctime         = cantime(ix);

    can.EngineData_2_CG1.units.TrnAin_Tq_MxSpcPdlEngN     =  'Nm';
    can.EngineData_2_CG1.TrnAin_Tq_MxSpcPdlEngN     =    (2^3 * bb(7,:) + bitand(bitshift(bb(8,:),-5),7))' +-500.00;
    can.EngineData_2_CG1.units.TrnAin_Tq_MnSpcEngN     =  'Nm';
    can.EngineData_2_CG1.TrnAin_Tq_MnSpcEngN     =    (2^3 * bb(4,:) + bitand(bitshift(bb(5,:),-5),7))' +-500.00;
    can.EngineData_2_CG1.units.EngPtoEngag_B_Actl     =  'SED';
    can.EngineData_2_CG1.EngPtoEngag_B_Actl     =    (bitget(bb(8,:),5))';
    can.EngineData_2_CG1.units.TrnAin_N_SpcEcho     =  'rpm';
    can.EngineData_2_CG1.TrnAin_N_SpcEcho     =    2.000000e+000*(2^8 * bitand(bb(1,:),31) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EngineData_3_CG1
% Hex ID:154
% Last edited by: selwart
% Date:26-Apr-2011
MSG_154 = hex2dec('154');

ix=find(msg == MSG_154);          % Find all message 0x154's
if ~isempty(ix)                   % If there are any ...
    can.EngineData_3_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x154 messages
    can.EngineData_3_CG1.nsamples      = length(ix);
    can.EngineData_3_CG1.ctime         = cantime(ix);

    can.EngineData_3_CG1.units.AirAmb_Te_ActlFilt     =  'deg C';
    can.EngineData_3_CG1.AirAmb_Te_ActlFilt     =    2.500000e-001*(2^8 * bitand(bb(5,:),3) + bb(6,:))' +-128.00;
    can.EngineData_3_CG1.units.EngAout_N_RqMxPrtct     =  'rpm';
    can.EngineData_3_CG1.EngAout_N_RqMxPrtct     =    2.000000e+000*(2^8 * bitand(bb(2,:),31) + bb(3,:))' ;
    can.EngineData_3_CG1.units.TqmTerrMdeChng_D_Rdy     =  'Unitless';
    can.EngineData_3_CG1.TqmTerrMdeChng_D_Rdy     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.EngineData_3_CG1.units.EngAoutIdl_N_RqVsc     =  'rpm';
    can.EngineData_3_CG1.EngAoutIdl_N_RqVsc     =    2.000000e+000*(2^3 * bb(1,:) + bitand(bitshift(bb(2,:),-5),7))' ;
    can.EngineData_3_CG1.units.TqmTerrMde_D_Actl     =  'Unitless';
    can.EngineData_3_CG1.TqmTerrMde_D_Actl     =    (bitand(bitshift(bb(5,:),-2),7))' ;
    can.EngineData_3_CG1.units.PrplWhlTotVrt_Tq_RqArb     =  'Nm';
    can.EngineData_3_CG1.PrplWhlTotVrt_Tq_RqArb     =    4.000000e+000*(2^8 * bb(7,:) + bb(8,:))' +-131072.00;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EngineData_11_CG1
% Hex ID:155
% Last edited by: selwart
% Date:26-Apr-2011
MSG_155 = hex2dec('155');

ix=find(msg == MSG_155);          % Find all message 0x155's
if ~isempty(ix)                   % If there are any ...
    can.EngineData_11_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x155 messages
    can.EngineData_11_CG1.nsamples      = length(ix);
    can.EngineData_11_CG1.ctime         = cantime(ix);

    can.EngineData_11_CG1.units.DieslPrtc_D_RqDsply     =  'SED';
    can.EngineData_11_CG1.DieslPrtc_D_RqDsply     =    (bitand(bb(6,:),7))' ;
    can.EngineData_11_CG1.units.EngPullUpPullDown_D_Rq     =  'SED';
    can.EngineData_11_CG1.EngPullUpPullDown_D_Rq     =    (bitand(bitshift(bb(3,:),-1),15))' ;
    can.EngineData_11_CG1.units.TrnAin_Tq_RqDrv     =  'Nm';
    can.EngineData_11_CG1.TrnAin_Tq_RqDrv     =    (2^3 * bb(2,:) + bitand(bitshift(bb(3,:),-5),7))' +-500.00;
    can.EngineData_11_CG1.units.DieslPrtcRgen_D_Actl     =  'SED';
    can.EngineData_11_CG1.DieslPrtcRgen_D_Actl     =    (bitand(bitshift(bb(1,:),-3),3))' ;
    can.EngineData_11_CG1.units.DieslPrtcRgen_D_Rq     =  'Unitless';
    can.EngineData_11_CG1.DieslPrtcRgen_D_Rq     =    (bitand(bitshift(bb(1,:),-5),7))' ;
    can.EngineData_11_CG1.units.EngAout_Aa_Actl     =  'rpm/ms';
    can.EngineData_11_CG1.EngAout_Aa_Actl     =    5.000000e-002*(2^2 * bb(5,:) + bitand(bitshift(bb(6,:),-6),3))' +-25.60;
    can.EngineData_11_CG1.units.EngIgnIndTq_Rt_MnEc     =  'Unitless';
    can.EngineData_11_CG1.EngIgnIndTq_Rt_MnEc     =    5.000000e-003*(bb(4,:))' ;
    can.EngineData_11_CG1.units.EngFuelCutFull_B_Allw     =  'SED';
    can.EngineData_11_CG1.EngFuelCutFull_B_Allw     =    (bitget(bb(6,:),6))';
    can.EngineData_11_CG1.units.EngStrtStopDis_B_Rq     =  'SED';
    can.EngineData_11_CG1.EngStrtStopDis_B_Rq     =    (bitget(bb(1,:),1))';
    can.EngineData_11_CG1.units.PrplTqSys_D_Stat     =  'SED';
    can.EngineData_11_CG1.PrplTqSys_D_Stat     =    (bitand(bitshift(bb(1,:),-1),3))' ;
    can.EngineData_11_CG1.units.EngAoutTqDtrb_B_Actl     =  'SED';
    can.EngineData_11_CG1.EngAoutTqDtrb_B_Actl     =    (bitget(bb(3,:),1))';
    can.EngineData_11_CG1.units.EngTurboMde_D_Actl     =  'SED';
    can.EngineData_11_CG1.EngTurboMde_D_Actl     =    (bitand(bitshift(bb(6,:),-3),3))' ;
    can.EngineData_11_CG1.units.EngTeColdPrtct_D_Stats     =  'SED';
    can.EngineData_11_CG1.EngTeColdPrtct_D_Stats     =    (bitand(bitshift(bb(7,:),-5),3))' ;
    can.EngineData_11_CG1.units.EXHAUST_OVERTEMP_PROTECT     =  'SED';
    can.EngineData_11_CG1.EXHAUST_OVERTEMP_PROTECT     =    (bitget(bb(8,:),8))';
    can.EngineData_11_CG1.units.EngExhOvrTe_B_RqDsply     =  'SED';
    can.EngineData_11_CG1.EngExhOvrTe_B_RqDsply     =    (bitget(bb(7,:),8))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Engine_Data_6
% Hex ID:156
% Last edited by: selwart
% Date:26-Apr-2011
MSG_156 = hex2dec('156');

ix=find(msg == MSG_156);          % Find all message 0x156's
if ~isempty(ix)                   % If there are any ...
    can.Engine_Data_6 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x156 messages
    can.Engine_Data_6.nsamples      = length(ix);
    can.Engine_Data_6.ctime         = cantime(ix);

    can.Engine_Data_6.units.EngOvrhtMitgActv_D_Ind     =  'SED';
    can.Engine_Data_6.EngOvrhtMitgActv_D_Ind     =    (bitand(bitshift(bb(5,:),-3),3))' ;
    can.Engine_Data_6.units.Res_UreaLvlLo_B_Dsply     =  'SED';
    can.Engine_Data_6.Res_UreaLvlLo_B_Dsply     =    (bitget(bb(5,:),3))';
    can.Engine_Data_6.units.EngClntTe_D_Qf     =  'SED';
    can.Engine_Data_6.EngClntTe_D_Qf     =    (bitand(bb(5,:),3))' ;
    can.Engine_Data_6.units.EngAcsyArcPmp_Tq_Actl     =  'Nm';
    can.Engine_Data_6.EngAcsyArcPmp_Tq_Actl     =    5.000000e-001*(bb(8,:))' ;
    can.Engine_Data_6.units.EngOilLvlDsply_D_Rq     =  'SED';
    can.Engine_Data_6.EngOilLvlDsply_D_Rq     =    (bitand(bb(6,:),15))' ;
    can.Engine_Data_6.units.EngCtlAlive_No_Cnt     =  'Unitless';
    can.Engine_Data_6.EngCtlAlive_No_Cnt     =    (bitand(bitshift(bb(6,:),-4),15))' ;
    can.Engine_Data_6.units.EngCtl_No_Cs     =  'Unitless';
    can.Engine_Data_6.EngCtl_No_Cs     =    (bb(7,:))' ;
    can.Engine_Data_6.units.EngOil_Te_Actl     =  'degC';
    can.Engine_Data_6.EngOil_Te_Actl     =    (bb(2,:))' +-60.00;
    can.Engine_Data_6.units.EngClnt_Te_Actl     =  'degC';
    can.Engine_Data_6.EngClnt_Te_Actl     =    (bb(1,:))' +-60.00;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EngineData_13_CG1
% Hex ID:157
% Last edited by: selwart
% Date:26-Apr-2011
MSG_157 = hex2dec('157');

ix=find(msg == MSG_157);          % Find all message 0x157's
if ~isempty(ix)                   % If there are any ...
    can.EngineData_13_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x157 messages
    can.EngineData_13_CG1.nsamples      = length(ix);
    can.EngineData_13_CG1.ctime         = cantime(ix);

    can.EngineData_13_CG1.units.EngStrtFail_B_Actl     =  'SED';
    can.EngineData_13_CG1.EngStrtFail_B_Actl     =    (bitget(bb(6,:),1))';
    can.EngineData_13_CG1.units.EngStrt_B_Complt     =  'SED';
    can.EngineData_13_CG1.EngStrt_B_Complt     =    (bitget(bb(4,:),1))';
    can.EngineData_13_CG1.units.EngStrtSpin_B_Rdy     =  'SED';
    can.EngineData_13_CG1.EngStrtSpin_B_Rdy     =    (bitget(bb(8,:),3))';
    can.EngineData_13_CG1.units.EngWarmUp_B_Complt     =  'SED';
    can.EngineData_13_CG1.EngWarmUp_B_Complt     =    (bitget(bb(6,:),2))';
    can.EngineData_13_CG1.units.EngAoutTqCtl_B_Falt     =  'SED';
    can.EngineData_13_CG1.EngAoutTqCtl_B_Falt     =    (bitget(bb(2,:),1))';
    can.EngineData_13_CG1.units.EngAoutActl_No_Cs     =  'Unitless';
    can.EngineData_13_CG1.EngAoutActl_No_Cs     =    (bb(3,:))' ;
    can.EngineData_13_CG1.units.EngAoutActl_No_Cnt     =  'Unitless';
    can.EngineData_13_CG1.EngAoutActl_No_Cnt     =    (bitand(bitshift(bb(6,:),-2),15))' ;
    can.EngineData_13_CG1.units.VehVLim_V_RqArb     =  'kph';
    can.EngineData_13_CG1.VehVLim_V_RqArb     =    5.000000e-001*(2^1 * bb(5,:) + bitand(bitshift(bb(6,:),-7),1))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EngineData_14
% Hex ID:158
% Last edited by: selwart
% Date:26-Apr-2011
MSG_158 = hex2dec('158');

ix=find(msg == MSG_158);          % Find all message 0x158's
if ~isempty(ix)                   % If there are any ...
    can.EngineData_14 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x158 messages
    can.EngineData_14.nsamples      = length(ix);
    can.EngineData_14.ctime         = cantime(ix);

    can.EngineData_14.units.ApedPosScal_Pc_Actl     =  '%';
    can.EngineData_14.ApedPosScal_Pc_Actl     =    1.000000e-001*(2^8 * bitand(bb(2,:),3) + bb(3,:))' ;
    can.EngineData_14.units.ApedPosPcActl_No_Cs     =  'Unitless';
    can.EngineData_14.ApedPosPcActl_No_Cs     =    (bb(5,:))' ;
    can.EngineData_14.units.ApedPosPcActl_No_Cnt     =  'Unitless';
    can.EngineData_14.ApedPosPcActl_No_Cnt     =    (bitand(bitshift(bb(2,:),-2),15))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Engine_Data_7_CG1
% Hex ID:159
% Last edited by: selwart
% Date:26-Apr-2011
MSG_159 = hex2dec('159');

ix=find(msg == MSG_159);          % Find all message 0x159's
if ~isempty(ix)                   % If there are any ...
    can.Engine_Data_7_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x159 messages
    can.Engine_Data_7_CG1.nsamples      = length(ix);
    can.Engine_Data_7_CG1.ctime         = cantime(ix);

    can.Engine_Data_7_CG1.units.EngDecelFuelCut_B_Allw     =  'SED';
    can.Engine_Data_7_CG1.EngDecelFuelCut_B_Allw     =    (bitget(bb(4,:),2))';
    can.Engine_Data_7_CG1.units.FuelFlw_Vl_Dsply     =  'Micro_Liter';
    can.Engine_Data_7_CG1.FuelFlw_Vl_Dsply     =    2.500000e+001*(2^2 * bb(7,:) + bitand(bitshift(bb(8,:),-6),3))' ;
    can.Engine_Data_7_CG1.units.FuelFillInlet_B_Dsply     =  'SED';
    can.Engine_Data_7_CG1.FuelFillInlet_B_Dsply     =    (bitget(bb(5,:),1))';
    can.Engine_Data_7_CG1.units.EngSrvcRqd_B_Rq     =  'SED';
    can.Engine_Data_7_CG1.EngSrvcRqd_B_Rq     =    (bitget(bb(4,:),1))';
    can.Engine_Data_7_CG1.units.OdoCount     =  'Meters';
    can.Engine_Data_7_CG1.OdoCount     =    2.000000e-001*(bb(6,:))' ;
    can.Engine_Data_7_CG1.units.EngOilLife_Pc_Actl     =  'Percent';
    can.Engine_Data_7_CG1.EngOilLife_Pc_Actl     =    (bitand(bitshift(bb(5,:),-1),127))' ;
    can.Engine_Data_7_CG1.units.AirAmbTe_D_Qf     =  'SED';
    can.Engine_Data_7_CG1.AirAmbTe_D_Qf     =    (bitand(bitshift(bb(4,:),-3),3))' ;
    can.Engine_Data_7_CG1.units.EngTqSlwDly_T_Est     =  'ms';
    can.Engine_Data_7_CG1.EngTqSlwDly_T_Est     =    (2^3 * bb(3,:) + bitand(bitshift(bb(4,:),-5),7))' ;
    can.Engine_Data_7_CG1.units.TrnKickDown_B_RqDrv     =  'SED';
    can.Engine_Data_7_CG1.TrnKickDown_B_RqDrv     =    (bitget(bb(4,:),3))';
    can.Engine_Data_7_CG1.units.AirAmb_Te_Actl     =  'degC';
    can.Engine_Data_7_CG1.AirAmb_Te_Actl     =    2.500000e-001*(2^8 * bitand(bb(1,:),3) + bb(2,:))' +-128.00;
    can.Engine_Data_7_CG1.units.AirAmb_P_Actl     =  'mbar';
    can.Engine_Data_7_CG1.AirAmb_P_Actl     =    1.000000e+001*(bitand(bitshift(bb(1,:),-2),63))' +500.00;
    can.Engine_Data_7_CG1.units.FuelFilterLamp_B_Dsply     =  'SED';
    can.Engine_Data_7_CG1.FuelFilterLamp_B_Dsply     =    (bitget(bb(8,:),1))';
    can.Engine_Data_7_CG1.units.AirCondRec_B_Rq     =  'SED';
    can.Engine_Data_7_CG1.AirCondRec_B_Rq     =    (bitget(bb(8,:),6))';
    can.Engine_Data_7_CG1.units.AirCondEvdc_D_Stats     =  'SED';
    can.Engine_Data_7_CG1.AirCondEvdc_D_Stats     =    (bitand(bitshift(bb(8,:),-2),7))' ;
    can.Engine_Data_7_CG1.units.AirCondClutch_B_Stats     =  'SED';
    can.Engine_Data_7_CG1.AirCondClutch_B_Stats     =    (bitget(bb(8,:),2))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EngineData_4_CG1
% Hex ID:15A
% Last edited by: selwart
% Date:26-Apr-2011
MSG_15A = hex2dec('15A');

ix=find(msg == MSG_15A);          % Find all message 0x15A's
if ~isempty(ix)                   % If there are any ...
    can.EngineData_4_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x15A messages
    can.EngineData_4_CG1.nsamples      = length(ix);
    can.EngineData_4_CG1.ctime         = cantime(ix);

    can.EngineData_4_CG1.units.TrnAin_Tq_Rq     =  'Nm';
    can.EngineData_4_CG1.TrnAin_Tq_Rq     =    (2^6 * bitand(bb(2,:),31) + bitand(bitshift(bb(3,:),-2),63))' +-500.00;
    can.EngineData_4_CG1.units.TrnAin_Tq_RqWoMdfy     =  'Nm';
    can.EngineData_4_CG1.TrnAin_Tq_RqWoMdfy     =    (2^3 * bb(7,:) + bitand(bitshift(bb(8,:),-5),7))' +-500.00;
    can.EngineData_4_CG1.units.TrnAin_Tq_ActlWoMdfy     =  'Nm';
    can.EngineData_4_CG1.TrnAin_Tq_ActlWoMdfy     =    (2^6 * bitand(bb(5,:),31) + bitand(bitshift(bb(6,:),-2),63))' +-500.00;
    can.EngineData_4_CG1.units.TrnAin_Tq_Actl     =  'Nm';
    can.EngineData_4_CG1.TrnAin_Tq_Actl     =    (2^3 * bb(1,:) + bitand(bitshift(bb(2,:),-5),7))' +-500.00;
    can.EngineData_4_CG1.units.TrnAinCtlN_B_Allw     =  'SED';
    can.EngineData_4_CG1.TrnAinCtlN_B_Allw     =    (bitget(bb(6,:),2))';
    can.EngineData_4_CG1.units.TrnAinTq_D_Qf     =  'SED';
    can.EngineData_4_CG1.TrnAinTq_D_Qf     =    (bitand(bb(3,:),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EngineData_16_CG1
% Hex ID:15C
% Last edited by: selwart
% Date:26-Apr-2011
MSG_15C = hex2dec('15C');

ix=find(msg == MSG_15C);          % Find all message 0x15C's
if ~isempty(ix)                   % If there are any ...
    can.EngineData_16_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x15C messages
    can.EngineData_16_CG1.nsamples      = length(ix);
    can.EngineData_16_CG1.ctime         = cantime(ix);

    can.EngineData_16_CG1.units.EngOilLvlWarn_D_Rq1     =  'SED';
    can.EngineData_16_CG1.EngOilLvlWarn_D_Rq1     =    (bitand(bb(7,:),7))' ;
    can.EngineData_16_CG1.units.EngExhBrkOnLamp_B_Rq     =  'SED';
    can.EngineData_16_CG1.EngExhBrkOnLamp_B_Rq     =    (bitget(bb(7,:),4))';
    can.EngineData_16_CG1.units.EngExhBrkAutoLamp_B_Rq     =  'SED';
    can.EngineData_16_CG1.EngExhBrkAutoLamp_B_Rq     =    (bitget(bb(2,:),1))';
    can.EngineData_16_CG1.units.EngAout_N_MxAllw     =  'rpm';
    can.EngineData_16_CG1.EngAout_N_MxAllw     =    2.000000e+000*(2^8 * bitand(bb(5,:),31) + bb(6,:))' ;
    can.EngineData_16_CG1.units.EngAoutIdl_N_MnAllw     =  'rpm';
    can.EngineData_16_CG1.EngAoutIdl_N_MnAllw     =    (2^3 * bb(4,:) + bitand(bitshift(bb(5,:),-5),7))' ;
    can.EngineData_16_CG1.units.EngAoutIdlRqEc_No_Cs     =  'Unitless';
    can.EngineData_16_CG1.EngAoutIdlRqEc_No_Cs     =    (bb(3,:))' ;
    can.EngineData_16_CG1.units.EngAoutIdlRqEc_No_Cnt     =  'Unitless';
    can.EngineData_16_CG1.EngAoutIdlRqEc_No_Cnt     =    (bitand(bitshift(bb(2,:),-1),15))' ;
    can.EngineData_16_CG1.units.EngAoutIdl_N_RqEc     =  'rpm';
    can.EngineData_16_CG1.EngAoutIdl_N_RqEc     =    2.000000e+000*(2^3 * bb(1,:) + bitand(bitshift(bb(2,:),-5),7))' ;
    can.EngineData_16_CG1.units.EngExhBrkMde_D_Actl     =  'SED';
    can.EngineData_16_CG1.EngExhBrkMde_D_Actl     =    (bitand(bitshift(bb(7,:),-4),15))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EngineData_17_CG1
% Hex ID:15D
% Last edited by: selwart
% Date:26-Apr-2011
MSG_15D = hex2dec('15D');

ix=find(msg == MSG_15D);          % Find all message 0x15D's
if ~isempty(ix)                   % If there are any ...
    can.EngineData_17_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x15D messages
    can.EngineData_17_CG1.nsamples      = length(ix);
    can.EngineData_17_CG1.ctime         = cantime(ix);

    can.EngineData_17_CG1.units.EngResv_Tq_Actl     =  'Nm';
    can.EngineData_17_CG1.EngResv_Tq_Actl     =    (2^6 * bitand(bb(7,:),31) + bitand(bitshift(bb(8,:),-2),63))' +-500.00;
    can.EngineData_17_CG1.units.EngAout_Tq_ActlSlw     =  'Nm';
    can.EngineData_17_CG1.EngAout_Tq_ActlSlw     =    (2^3 * bb(6,:) + bitand(bitshift(bb(7,:),-5),7))' +-500.00;
    can.EngineData_17_CG1.units.EngExhCat_Te_Est     =  'degC';
    can.EngineData_17_CG1.EngExhCat_Te_Est     =    2.000000e+000*(2^4 * bitand(bb(2,:),63) + bitand(bitshift(bb(3,:),-4),15))' +-60.00;
    can.EngineData_17_CG1.units.EngCylCutIndTq_Rt_Actl     =  'Nm';
    can.EngineData_17_CG1.EngCylCutIndTq_Rt_Actl     =    5.000000e-003*(bb(5,:))' ;
    can.EngineData_17_CG1.units.Eng_Aa_CalcEvntCyc     =  'rpm/ms';
    can.EngineData_17_CG1.Eng_Aa_CalcEvntCyc     =    5.000000e-002*(2^2 * bb(1,:) + bitand(bitshift(bb(2,:),-6),3))' +-25.60;
    can.EngineData_17_CG1.units.Eng_Aa_CalcEvntCbust     =  'rpm/ms';
    can.EngineData_17_CG1.Eng_Aa_CalcEvntCbust     =    5.000000e-002*(2^6 * bitand(bb(3,:),15) + bitand(bitshift(bb(4,:),-2),63))' +-25.60;
    can.EngineData_17_CG1.units.WaterInFuel     =  'SED';
    can.EngineData_17_CG1.WaterInFuel     =    (bitget(bb(4,:),2))';
    can.EngineData_17_CG1.units.GlowIndication     =  'SED';
    can.EngineData_17_CG1.GlowIndication     =    (bitget(bb(4,:),1))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EngineData_18_CG1
% Hex ID:15E
% Last edited by: selwart
% Date:26-Apr-2011
MSG_15E = hex2dec('15E');

ix=find(msg == MSG_15E);          % Find all message 0x15E's
if ~isempty(ix)                   % If there are any ...
    can.EngineData_18_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x15E messages
    can.EngineData_18_CG1.nsamples      = length(ix);
    can.EngineData_18_CG1.ctime         = cantime(ix);

    can.EngineData_18_CG1.units.EngAoutTqActl_D_Qf     =  'SED';
    can.EngineData_18_CG1.EngAoutTqActl_D_Qf     =    (bitand(bb(3,:),3))' ;
    can.EngineData_18_CG1.units.EngAout_Tq_MnSpcNRtrd     =  'Nm';
    can.EngineData_18_CG1.EngAout_Tq_MnSpcNRtrd     =    (2^6 * bitand(bb(5,:),31) + bitand(bitshift(bb(6,:),-2),63))' +-500.00;
    can.EngineData_18_CG1.units.EngAout_Tq_Actl     =  'Nm';
    can.EngineData_18_CG1.EngAout_Tq_Actl     =    (2^3 * bb(4,:) + bitand(bitshift(bb(5,:),-5),7))' +-500.00;
    can.EngineData_18_CG1.units.EngAoutLss_Tq_EstSpcN     =  'Nm';
    can.EngineData_18_CG1.EngAoutLss_Tq_EstSpcN     =    (2^6 * bitand(bb(2,:),31) + bitand(bitshift(bb(3,:),-2),63))' +-500.00;
    can.EngineData_18_CG1.units.EngAout_Tq_MnSpcN     =  'Nm';
    can.EngineData_18_CG1.EngAout_Tq_MnSpcN     =    (2^3 * bb(1,:) + bitand(bitshift(bb(2,:),-5),7))' +-500.00;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EngineData_19
% Hex ID:15F
% Last edited by: selwart
% Date:26-Apr-2011
MSG_15F = hex2dec('15F');

ix=find(msg == MSG_15F);          % Find all message 0x15F's
if ~isempty(ix)                   % If there are any ...
    can.EngineData_19 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x15F messages
    can.EngineData_19.nsamples      = length(ix);
    can.EngineData_19.ctime         = cantime(ix);

    can.EngineData_19.units.VehPreDelvr_V_LimMx     =  'kph';
    can.EngineData_19.VehPreDelvr_V_LimMx     =    1.000000e-002*(2^8 * bb(2,:) + bb(3,:))' ;
    can.EngineData_19.units.BattLo_U_MeasEngMdule     =  'V';
    can.EngineData_19.BattLo_U_MeasEngMdule     =    1.000000e-001*(bb(1,:))' ;
    can.EngineData_19.units.EngStall_B_Actl     =  'SED';
    can.EngineData_19.EngStall_B_Actl     =    (bitget(bb(6,:),8))';
    can.EngineData_19.units.EngDashPotActv_B_Actl     =  'SED';
    can.EngineData_19.EngDashPotActv_B_Actl     =    (bitget(bb(6,:),7))';
    can.EngineData_19.units.EngAout_Tq_MnAllw     =  'Nm';
    can.EngineData_19.EngAout_Tq_MnAllw     =    (2^8 * bitand(bb(6,:),7) + bb(7,:))' +-500.00;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TransData_3_CG1
% Hex ID:160
% Last edited by: selwart
% Date:26-Apr-2011
MSG_160 = hex2dec('160');

ix=find(msg == MSG_160);          % Find all message 0x160's
if ~isempty(ix)                   % If there are any ...
    can.TransData_3_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x160 messages
    can.TransData_3_CG1.nsamples      = length(ix);
    can.TransData_3_CG1.ctime         = cantime(ix);

    can.TransData_3_CG1.units.TrnAinCtlN_N_RqMx     =  'rpm';
    can.TransData_3_CG1.TrnAinCtlN_N_RqMx     =    2.000000e+000*(2^5 * bb(1,:) + bitand(bitshift(bb(2,:),-3),31))' ;
    can.TransData_3_CG1.units.TrnAin_Tq_RqSlwMxShif     =  'Nm';
    can.TransData_3_CG1.TrnAin_Tq_RqSlwMxShif     =    (2^8 * bitand(bb(6,:),7) + bb(7,:))' +-500.00;
    can.TransData_3_CG1.units.TrnAinCtlN_B_RqEnbl     =  'SED';
    can.TransData_3_CG1.TrnAinCtlN_B_RqEnbl     =    (bitget(bb(2,:),3))';
    can.TransData_3_CG1.units.TrnGboxIn_N_Actl     =  'rpm';
    can.TransData_3_CG1.TrnGboxIn_N_Actl     =    2.000000e+000*(2^5 * bb(3,:) + bitand(bitshift(bb(4,:),-3),31))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Engine_Data_8
% Hex ID:161
% Last edited by: selwart
% Date:26-Apr-2011
MSG_161 = hex2dec('161');

ix=find(msg == MSG_161);          % Find all message 0x161's
if ~isempty(ix)                   % If there are any ...
    can.Engine_Data_8 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x161 messages
    can.Engine_Data_8.nsamples      = length(ix);
    can.Engine_Data_8.ctime         = cantime(ix);

    can.Engine_Data_8.units.TrnAinTqDtrb_B_Actl     =  'SED';
    can.Engine_Data_8.TrnAinTqDtrb_B_Actl     =    (bitget(bb(1,:),6))';
    can.Engine_Data_8.units.TrnAin_Tq_MnSpcEngN     =  'Nm';
    can.Engine_Data_8.TrnAin_Tq_MnSpcEngN     =    (2^8 * bitand(bb(5,:),7) + bb(6,:))' +-500.00;
    can.Engine_Data_8.units.EngAout_N_RqMnPrtct     =  'rpm';
    can.Engine_Data_8.EngAout_N_RqMnPrtct     =    2.000000e+000*(2^8 * bitand(bb(3,:),31) + bb(4,:))' ;
    can.Engine_Data_8.units.EngAout_N_MnAllw     =  'rpm';
    can.Engine_Data_8.EngAout_N_MnAllw     =    2.000000e+000*(2^8 * bitand(bb(1,:),31) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: CGEA_Urea_Strategy_CG1
% Hex ID:162
% Last edited by: selwart
% Date:26-Apr-2011
MSG_162 = hex2dec('162');

ix=find(msg == MSG_162);          % Find all message 0x162's
if ~isempty(ix)                   % If there are any ...
    can.CGEA_Urea_Strategy_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x162 messages
    can.CGEA_Urea_Strategy_CG1.nsamples      = length(ix);
    can.CGEA_Urea_Strategy_CG1.ctime         = cantime(ix);

    can.CGEA_Urea_Strategy_CG1.units.UreaQltySys_D_RqDsply     =  'SED';
    can.CGEA_Urea_Strategy_CG1.UreaQltySys_D_RqDsply     =    (bitand(bitshift(bb(4,:),-1),7))' ;
    can.CGEA_Urea_Strategy_CG1.units.UreaLvlTxt_D_RqDsply     =  'SED';
    can.CGEA_Urea_Strategy_CG1.UreaLvlTxt_D_RqDsply     =    (bitand(bitshift(bb(4,:),-4),15))' ;
    can.CGEA_Urea_Strategy_CG1.units.VehUreaImmo_No_DsplyMx     =  'Counts';
    can.CGEA_Urea_Strategy_CG1.VehUreaImmo_No_DsplyMx     =    (bitand(bitshift(bb(2,:),-2),7))' ;
    can.CGEA_Urea_Strategy_CG1.units.VehUreaWarn_V_DsplyMx     =  'km/h';
    can.CGEA_Urea_Strategy_CG1.VehUreaWarn_V_DsplyMx     =    (bitand(bitshift(bb(3,:),-1),127))' ;
    can.CGEA_Urea_Strategy_CG1.units.VehUreaRnge_L_DsplyMx     =  'km';
    can.CGEA_Urea_Strategy_CG1.VehUreaRnge_L_DsplyMx     =    (2^3 * bb(1,:) + bitand(bitshift(bb(2,:),-5),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EngineData_10
% Hex ID:163
% Last edited by: selwart
% Date:26-Apr-2011
MSG_163 = hex2dec('163');

ix=find(msg == MSG_163);          % Find all message 0x163's
if ~isempty(ix)                   % If there are any ...
    can.EngineData_10 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x163 messages
    can.EngineData_10.nsamples      = length(ix);
    can.EngineData_10.ctime         = cantime(ix);

    can.EngineData_10.units.WhlRearDual_D_Stat     =  'SED';
    can.EngineData_10.WhlRearDual_D_Stat     =    (bitand(bb(8,:),3))' ;
    can.EngineData_10.units.EngPtoMde_D_Actl     =  'SED';
    can.EngineData_10.EngPtoMde_D_Actl     =    (bitand(bitshift(bb(8,:),-2),7))' ;
    can.EngineData_10.units.ManRgenVeh_V_MinAllw     =  'kilometer/hour';
    can.EngineData_10.ManRgenVeh_V_MinAllw     =    (bitand(bitshift(bb(7,:),-1),127))' ;
    can.EngineData_10.units.ManRgenTxt_D_RqDsply     =  'SED';
    can.EngineData_10.ManRgenTxt_D_RqDsply     =    (bitand(bitshift(bb(8,:),-5),7))' ;
    can.EngineData_10.units.ManRgenSoot_Pc_RqDsply     =  '%';
    can.EngineData_10.ManRgenSoot_Pc_RqDsply     =    (bitand(bitshift(bb(5,:),-1),127))' ;
    can.EngineData_10.units.ManRgenInhbt_T_RqDsply     =  'Minutes';
    can.EngineData_10.ManRgenInhbt_T_RqDsply     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.EngineData_10.units.ManRgenInhbt_Pc_Soot     =  '%';
    can.EngineData_10.ManRgenInhbt_Pc_Soot     =    (bitand(bitshift(bb(6,:),-1),127))' ;
    can.EngineData_10.units.ManRgenInhbt_L_RqDsply     =  'kilometer';
    can.EngineData_10.ManRgenInhbt_L_RqDsply     =    (2^8 * bb(1,:) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EngBrakeData
% Hex ID:165
% Last edited by: selwart
% Date:26-Apr-2011
MSG_165 = hex2dec('165');

ix=find(msg == MSG_165);          % Find all message 0x165's
if ~isempty(ix)                   % If there are any ...
    can.EngBrakeData = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x165 messages
    can.EngBrakeData.nsamples      = length(ix);
    can.EngBrakeData.ctime         = cantime(ix);

    can.EngBrakeData.units.CmbbDeny_B_ActlPrpl     =  'SED';
    can.EngBrakeData.CmbbDeny_B_ActlPrpl     =    (bitget(bb(1,:),4))';
    can.EngBrakeData.units.BpedDrvAppl_No_Cs     =  'Unitless';
    can.EngBrakeData.BpedDrvAppl_No_Cs     =    (bb(5,:))' ;
    can.EngBrakeData.units.BpedDrvAppl_No_Cnt     =  'Unitless';
    can.EngBrakeData.BpedDrvAppl_No_Cnt     =    (bitand(bb(4,:),15))' ;
    can.EngBrakeData.units.BpedDrvAppl_D_Actl     =  'SED';
    can.EngBrakeData.BpedDrvAppl_D_Actl     =    (bitand(bitshift(bb(4,:),-6),3))' ;
    can.EngBrakeData.units.CmbbEngTqMn_B_Actl     =  'SED';
    can.EngBrakeData.CmbbEngTqMn_B_Actl     =    (bitget(bb(1,:),8))';
    can.EngBrakeData.units.Veh_V_DsplyCcSet     =  'Unitless';
    can.EngBrakeData.Veh_V_DsplyCcSet     =    (bb(3,:))' ;
    can.EngBrakeData.units.AccEngStat_D_Actl     =  'SED';
    can.EngBrakeData.AccEngStat_D_Actl     =    (bitand(bb(1,:),7))' ;
    can.EngBrakeData.units.CcMde_D_Actl     =  'SED';
    can.EngBrakeData.CcMde_D_Actl     =    (bitand(bitshift(bb(2,:),-3),7))' ;
    can.EngBrakeData.units.TrnAinTqDtrb_B_Actl     =  'SED';
    can.EngBrakeData.TrnAinTqDtrb_B_Actl     =    (bitget(bb(1,:),7))';
    can.EngBrakeData.units.CcStat_D_Actl     =  'SED';
    can.EngBrakeData.CcStat_D_Actl     =    (bitand(bb(2,:),7))' ;
    can.EngBrakeData.units.CcOvrrdActv_B_Actl     =  'SED';
    can.EngBrakeData.CcOvrrdActv_B_Actl     =    (bitget(bb(2,:),8))';
    can.EngBrakeData.units.PwPck_D_Stat     =  'SED';
    can.EngBrakeData.PwPck_D_Stat     =    (bitand(bb(8,:),15))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ACCDATA_CG1
% Hex ID:185
% Last edited by: selwart
% Date:26-Apr-2011
MSG_185 = hex2dec('185');

ix=find(msg == MSG_185);          % Find all message 0x185's
if ~isempty(ix)                   % If there are any ...
    can.ACCDATA_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x185 messages
    can.ACCDATA_CG1.nsamples      = length(ix);
    can.ACCDATA_CG1.ctime         = cantime(ix);

    can.ACCDATA_CG1.units.AccPrpl_A_Pred     =  'm/s^2';
    can.ACCDATA_CG1.AccPrpl_A_Pred     =    1.000000e-002*(2^3 * bitand(bb(2,:),127) + bitand(bitshift(bb(3,:),-5),7))' +-5.00;
    can.ACCDATA_CG1.units.AccBrkPrkEl_B_Rq     =  'SED';
    can.ACCDATA_CG1.AccBrkPrkEl_B_Rq     =    (bitget(bb(6,:),2))';
    can.ACCDATA_CG1.units.Cmbb_B_Enbl     =  'SED';
    can.ACCDATA_CG1.Cmbb_B_Enbl     =    (bitget(bb(8,:),1))';
    can.ACCDATA_CG1.units.CmbbOvrrd_B_RqDrv     =  'SED';
    can.ACCDATA_CG1.CmbbOvrrd_B_RqDrv     =    (bitget(bb(8,:),2))';
    can.ACCDATA_CG1.units.CmbbDeny_B_Actl     =  'SED';
    can.ACCDATA_CG1.CmbbDeny_B_Actl     =    (bitget(bb(6,:),1))';
    can.ACCDATA_CG1.units.AccVeh_V_Trg     =  'kph';
    can.ACCDATA_CG1.AccVeh_V_Trg     =    5.000000e-001*(2^1 * bb(1,:) + bitand(bitshift(bb(2,:),-7),1))' ;
    can.ACCDATA_CG1.units.CmbbEngTqMn_B_Rq     =  'SED';
    can.ACCDATA_CG1.CmbbEngTqMn_B_Rq     =    (bitget(bb(8,:),3))';
    can.ACCDATA_CG1.units.AccPrpl_A_Rq     =  'm/s^2';
    can.ACCDATA_CG1.AccPrpl_A_Rq     =    1.000000e-002*(2^2 * bb(7,:) + bitand(bitshift(bb(8,:),-6),3))' +-5.00;
    can.ACCDATA_CG1.units.AccDeny_B_Rq     =  'SED';
    can.ACCDATA_CG1.AccDeny_B_Rq     =    (bitget(bb(8,:),4))';
    can.ACCDATA_CG1.units.AccCancl_B_Rq     =  'SED';
    can.ACCDATA_CG1.AccCancl_B_Rq     =    (bitget(bb(6,:),3))';
    can.ACCDATA_CG1.units.AccBrkTot_A_Rq     =  'm/s^2';
    can.ACCDATA_CG1.AccBrkTot_A_Rq     =    3.900000e-003*(2^5 * bb(5,:) + bitand(bitshift(bb(6,:),-3),31))' +-20.00;
    can.ACCDATA_CG1.units.AccBrkPrchg_B_Rq     =  'SED';
    can.ACCDATA_CG1.AccBrkPrchg_B_Rq     =    (bitget(bb(8,:),5))';
    can.ACCDATA_CG1.units.AccBrkDecel_B_Rq     =  'SED';
    can.ACCDATA_CG1.AccBrkDecel_B_Rq     =    (bitget(bb(8,:),6))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: HeadUpDisplayStat
% Hex ID:188
% Last edited by: selwart
% Date:26-Apr-2011
MSG_188 = hex2dec('188');

ix=find(msg == MSG_188);          % Find all message 0x188's
if ~isempty(ix)                   % If there are any ...
    can.HeadUpDisplayStat = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x188 messages
    can.HeadUpDisplayStat.nsamples      = length(ix);
    can.HeadUpDisplayStat.ctime         = cantime(ix);

    can.HeadUpDisplayStat.units.Hud_B_Falt     =  'SED';
    can.HeadUpDisplayStat.Hud_B_Falt     =    (bitget(bb(1,:),6))';
    can.HeadUpDisplayStat.units.HudActv_B_Actl     =  'SED';
    can.HeadUpDisplayStat.HudActv_B_Actl     =    (bitget(bb(1,:),8))';
    can.HeadUpDisplayStat.units.Hud_B_Avail     =  'SED';
    can.HeadUpDisplayStat.Hud_B_Avail     =    (bitget(bb(1,:),7))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ACCDATA_2_CG1
% Hex ID:189
% Last edited by: selwart
% Date:26-Apr-2011
MSG_189 = hex2dec('189');

ix=find(msg == MSG_189);          % Find all message 0x189's
if ~isempty(ix)                   % If there are any ...
    can.ACCDATA_2_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x189 messages
    can.ACCDATA_2_CG1.nsamples      = length(ix);
    can.ACCDATA_2_CG1.ctime         = cantime(ix);

    can.ACCDATA_2_CG1.units.ACC_AUTOBRAKE_CANCEL     =  'SED';
    can.ACCDATA_2_CG1.ACC_AUTOBRAKE_CANCEL     =    (bitget(bb(8,:),1))';
    can.ACCDATA_2_CG1.units.ACC_RESUME_ACTIVE     =  'SED';
    can.ACCDATA_2_CG1.ACC_RESUME_ACTIVE     =    (bitget(bb(8,:),2))';
    can.ACCDATA_2_CG1.units.FcwAudioWarn_B_Rq     =  'SED';
    can.ACCDATA_2_CG1.FcwAudioWarn_B_Rq     =    (bitget(bb(8,:),3))';
    can.ACCDATA_2_CG1.units.CadsAudioMute_D_Rq     =  'SED';
    can.ACCDATA_2_CG1.CadsAudioMute_D_Rq     =    (bitand(bitshift(bb(8,:),-4),3))' ;
    can.ACCDATA_2_CG1.units.AccWarn_D_Dsply     =  'SED';
    can.ACCDATA_2_CG1.AccWarn_D_Dsply     =    (bitand(bitshift(bb(8,:),-6),3))' ;
    can.ACCDATA_2_CG1.units.HudDsplyIntns_No_Actl     =  '%';
    can.ACCDATA_2_CG1.HudDsplyIntns_No_Actl     =    5.000000e-001*(bb(7,:))' ;
    can.ACCDATA_2_CG1.units.FcwVisblWarn_B_Rq     =  'SED';
    can.ACCDATA_2_CG1.FcwVisblWarn_B_Rq     =    (bitget(bb(6,:),1))';
    can.ACCDATA_2_CG1.units.HudBlk3_B_Rq     =  'SED';
    can.ACCDATA_2_CG1.HudBlk3_B_Rq     =    (bitget(bb(6,:),2))';
    can.ACCDATA_2_CG1.units.HudBlk2_B_Rq     =  'SED';
    can.ACCDATA_2_CG1.HudBlk2_B_Rq     =    (bitget(bb(6,:),4))';
    can.ACCDATA_2_CG1.units.HudBlk1_B_Rq     =  'SED';
    can.ACCDATA_2_CG1.HudBlk1_B_Rq     =    (bitget(bb(6,:),3))';
    can.ACCDATA_2_CG1.units.HudFlashRate_D_Actl     =  'SED';
    can.ACCDATA_2_CG1.HudFlashRate_D_Actl     =    (bitand(bitshift(bb(6,:),-4),3))' ;
    can.ACCDATA_2_CG1.units.CmbbBrkDecel_No_Cs     =  'Unitless';
    can.ACCDATA_2_CG1.CmbbBrkDecel_No_Cs     =    (bb(5,:))' ;
    can.ACCDATA_2_CG1.units.CmbbBrkDecel_A_Rq     =  'm/s^2';
    can.ACCDATA_2_CG1.CmbbBrkDecel_A_Rq     =    3.900000e-003*(2^5 * bb(3,:) + bitand(bitshift(bb(4,:),-3),31))' +-20.00;
    can.ACCDATA_2_CG1.units.CmbbBrkPrchg_D_Rq     =  'SED';
    can.ACCDATA_2_CG1.CmbbBrkPrchg_D_Rq     =    (bitand(bitshift(bb(6,:),-6),3))' ;
    can.ACCDATA_2_CG1.units.CmbbBrkDecel_B_Rq     =  'SED';
    can.ACCDATA_2_CG1.CmbbBrkDecel_B_Rq     =    (bitget(bb(4,:),3))';
    can.ACCDATA_2_CG1.units.CmbbBaSens_D_Rq     =  'SED';
    can.ACCDATA_2_CG1.CmbbBaSens_D_Rq     =    (bitand(bb(4,:),3))' ;
    can.ACCDATA_2_CG1.units.AccPrpl_V_Rq     =  'kph';
    can.ACCDATA_2_CG1.AccPrpl_V_Rq     =    1.000000e-002*(2^8 * bb(1,:) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ACCDATA_3
% Hex ID:18A
% Last edited by: selwart
% Date:26-Apr-2011
MSG_18A = hex2dec('18A');

ix=find(msg == MSG_18A);          % Find all message 0x18A's
if ~isempty(ix)                   % If there are any ...
    can.ACCDATA_3 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x18A messages
    can.ACCDATA_3.nsamples      = length(ix);
    can.ACCDATA_3.ctime         = cantime(ix);

    can.ACCDATA_3.units.CadsMntr_No_Chk     =  'Unitless';
    can.ACCDATA_3.CadsMntr_No_Chk     =    (bb(7,:))' ;
    can.ACCDATA_3.units.FcwDeny_B_Dsply     =  'SED';
    can.ACCDATA_3.FcwDeny_B_Dsply     =    (bitget(bb(2,:),3))';
    can.ACCDATA_3.units.FdaWarn_B_Rq     =  'SED';
    can.ACCDATA_3.FdaWarn_B_Rq     =    (bitget(bb(3,:),6))';
    can.ACCDATA_3.units.FcwMemStat_B_Actl     =  'SED';
    can.ACCDATA_3.FcwMemStat_B_Actl     =    (bitget(bb(4,:),7))';
    can.ACCDATA_3.units.AccTGap_B_Dsply     =  'SED';
    can.ACCDATA_3.AccTGap_B_Dsply     =    (bitget(bb(5,:),4))';
    can.ACCDATA_3.units.AccMsgTxt_D_Rq     =  'SED';
    can.ACCDATA_3.AccMsgTxt_D_Rq     =    (bitand(bitshift(bb(5,:),-4),15))' ;
    can.ACCDATA_3.units.CadsAlignIncplt_B_Actl     =  'SED';
    can.ACCDATA_3.CadsAlignIncplt_B_Actl     =    (bitget(bb(4,:),6))';
    can.ACCDATA_3.units.AccLowVMde_B_Dsply     =  'SED';
    can.ACCDATA_3.AccLowVMde_B_Dsply     =    (bitget(bb(3,:),1))';
    can.ACCDATA_3.units.AccFllwMde_B_Dsply     =  'SED';
    can.ACCDATA_3.AccFllwMde_B_Dsply     =    (bitget(bb(3,:),2))';
    can.ACCDATA_3.units.CadsRadrBlck_B_Actl     =  'SED';
    can.ACCDATA_3.CadsRadrBlck_B_Actl     =    (bitget(bb(3,:),7))';
    can.ACCDATA_3.units.FdaStat_D_Dsply     =  'SED';
    can.ACCDATA_3.FdaStat_D_Dsply     =    (bitand(bitshift(bb(1,:),-1),7))' ;
    can.ACCDATA_3.units.FdaDeny_B_Dsply     =  'SED';
    can.ACCDATA_3.FdaDeny_B_Dsply     =    (bitget(bb(1,:),5))';
    can.ACCDATA_3.units.AccTrgDist_D_Dsply     =  'SED';
    can.ACCDATA_3.AccTrgDist_D_Dsply     =    (bitand(bitshift(bb(4,:),-1),15))' ;
    can.ACCDATA_3.units.CadsChime_B_Rq     =  'SED';
    can.ACCDATA_3.CadsChime_B_Rq     =    (bitget(bb(4,:),1))';
    can.ACCDATA_3.units.CmbbPostEvnt_B_Dsply     =  'SED';
    can.ACCDATA_3.CmbbPostEvnt_B_Dsply     =    (bitget(bb(2,:),8))';
    can.ACCDATA_3.units.FcwCmbbSrvcRqd_B_Rq     =  'SED';
    can.ACCDATA_3.FcwCmbbSrvcRqd_B_Rq     =    (bitget(bb(2,:),5))';
    can.ACCDATA_3.units.AccStopMde_B_Dsply     =  'SED';
    can.ACCDATA_3.AccStopMde_B_Dsply     =    (bitget(bb(1,:),1))';
    can.ACCDATA_3.units.CadsCamraBlck_B_Actl     =  'SED';
    can.ACCDATA_3.CadsCamraBlck_B_Actl     =    (bitget(bb(3,:),8))';
    can.ACCDATA_3.units.FcwMemSens_D_Actl     =  'SED';
    can.ACCDATA_3.FcwMemSens_D_Actl     =    (bitand(bitshift(bb(3,:),-3),3))' ;
    can.ACCDATA_3.units.FcwMemDfaltOn_B_Actl     =  'SED';
    can.ACCDATA_3.FcwMemDfaltOn_B_Actl     =    (bitget(bb(3,:),3))';
    can.ACCDATA_3.units.AccSrvcRqd_B_Rq     =  'SED';
    can.ACCDATA_3.AccSrvcRqd_B_Rq     =    (bitget(bb(2,:),7))';
    can.ACCDATA_3.units.FcwMsgTxt_D_Rq     =  'SED';
    can.ACCDATA_3.FcwMsgTxt_D_Rq     =    (bitand(bitshift(bb(1,:),-5),7))' ;
    can.ACCDATA_3.units.FcwMemAudioOn_B_Actl     =  'SED';
    can.ACCDATA_3.FcwMemAudioOn_B_Actl     =    (bitget(bb(2,:),2))';
    can.ACCDATA_3.units.AccTGap_D_Dsply     =  'SED';
    can.ACCDATA_3.AccTGap_D_Dsply     =    (bitand(bb(5,:),7))' ;
    can.ACCDATA_3.units.AccMemEnbl_B_RqDrv     =  'SED';
    can.ACCDATA_3.AccMemEnbl_B_RqDrv     =    (bitget(bb(6,:),3))';
    can.ACCDATA_3.units.FdaMem_B_Stat     =  'SED';
    can.ACCDATA_3.FdaMem_B_Stat     =    (bitget(bb(6,:),2))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TorqueDataEngFlags
% Hex ID:200
% Last edited by: selwart
% Date:26-Apr-2011
MSG_200 = hex2dec('200');

ix=find(msg == MSG_200);          % Find all message 0x200's
if ~isempty(ix)                   % If there are any ...
    can.TorqueDataEngFlags = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x200 messages
    can.TorqueDataEngFlags.nsamples      = length(ix);
    can.TorqueDataEngFlags.ctime         = cantime(ix);

    can.TorqueDataEngFlags.units.BrkOnOffSwtch_D_Actl     =  'SED';
    can.TorqueDataEngFlags.BrkOnOffSwtch_D_Actl     =    (bitand(bitshift(bb(7,:),-5),3))' ;
    can.TorqueDataEngFlags.units.PrplTqMnSat_B_Actl     =  'SED';
    can.TorqueDataEngFlags.PrplTqMnSat_B_Actl     =    (bitget(bb(7,:),8))';
    can.TorqueDataEngFlags.units.PrplWhlTot_Tq_Rq     =  'Nm';
    can.TorqueDataEngFlags.PrplWhlTot_Tq_Rq     =    4.000000e+000*(2^8 * bb(5,:) + bb(6,:))' +-131072.00;
    can.TorqueDataEngFlags.units.PrplWhlTot_Tq_LimMn     =  'Nm';
    can.TorqueDataEngFlags.PrplWhlTot_Tq_LimMn     =    4.000000e+000*(2^8 * bb(3,:) + bb(4,:))' +-131072.00;
    can.TorqueDataEngFlags.units.PrplWhlTot_Tq_Actl     =  'Nm';
    can.TorqueDataEngFlags.PrplWhlTot_Tq_Actl     =    4.000000e+000*(2^8 * bb(1,:) + bb(2,:))' +-131072.00;
    can.TorqueDataEngFlags.units.ACCompressorDisp     =  'Percent';
    can.TorqueDataEngFlags.ACCompressorDisp     =    (bitand(bitshift(bb(8,:),-1),127))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EngVehicleSpThrottle_CG1
% Hex ID:201
% Last edited by: selwart
% Date:26-Apr-2011
MSG_201 = hex2dec('201');

ix=find(msg == MSG_201);          % Find all message 0x201's
if ~isempty(ix)                   % If there are any ...
    can.EngVehicleSpThrottle_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x201 messages
    can.EngVehicleSpThrottle_CG1.nsamples      = length(ix);
    can.EngVehicleSpThrottle_CG1.ctime         = cantime(ix);

    can.EngVehicleSpThrottle_CG1.units.ApedPos_PcRate_ActlArb     =  '%/ms';
    can.EngVehicleSpThrottle_CG1.ApedPos_PcRate_ActlArb     =    4.000000e-002*(bb(8,:))' +-5.00;
    can.EngVehicleSpThrottle_CG1.units.Veh_V_RqCcSet     =  'kph';
    can.EngVehicleSpThrottle_CG1.Veh_V_RqCcSet     =    5.000000e-001*(2^3 * bitand(bb(6,:),63) + bitand(bitshift(bb(7,:),-5),7))' ;
    can.EngVehicleSpThrottle_CG1.units.VehVActlEng_D_Qf     =  'SED';
    can.EngVehicleSpThrottle_CG1.VehVActlEng_D_Qf     =    (bitand(bb(2,:),3))' ;
    can.EngVehicleSpThrottle_CG1.units.reserve     =  'unitless';
    can.EngVehicleSpThrottle_CG1.reserve     =    (bitget(bb(2,:),3))';
    can.EngVehicleSpThrottle_CG1.units.EngAout_N_Actl     =  'rpm';
    can.EngVehicleSpThrottle_CG1.EngAout_N_Actl     =    2.000000e+000*(2^5 * bb(1,:) + bitand(bitshift(bb(2,:),-3),31))' ;
    can.EngVehicleSpThrottle_CG1.units.Veh_V_ActlEng     =  'kph';
    can.EngVehicleSpThrottle_CG1.Veh_V_ActlEng     =    1.000000e-002*(2^8 * bb(3,:) + bb(4,:))' ;
    can.EngVehicleSpThrottle_CG1.units.ApedPos_Pc_ActlArb     =  '%';
    can.EngVehicleSpThrottle_CG1.ApedPos_Pc_ActlArb     =    1.000000e-001*(2^2 * bb(5,:) + bitand(bitshift(bb(6,:),-6),3))' ;
    can.EngVehicleSpThrottle_CG1.units.ApedPosPcActl_D_Qf     =  'SED';
    can.EngVehicleSpThrottle_CG1.ApedPosPcActl_D_Qf     =    (bitand(bitshift(bb(7,:),-3),3))' ;
    can.EngVehicleSpThrottle_CG1.units.Autostart_B_Stat     =  'SED';
    can.EngVehicleSpThrottle_CG1.Autostart_B_Stat     =    (bitget(bb(7,:),3))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: DesiredTorqBrk_CG1
% Hex ID:211
% Last edited by: selwart
% Date:26-Apr-2011
MSG_211 = hex2dec('211');

ix=find(msg == MSG_211);          % Find all message 0x211's
if ~isempty(ix)                   % If there are any ...
    can.DesiredTorqBrk_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x211 messages
    can.DesiredTorqBrk_CG1.nsamples      = length(ix);
    can.DesiredTorqBrk_CG1.ctime         = cantime(ix);

    can.DesiredTorqBrk_CG1.units.CmbbBrkDis_B_Actl     =  'SED';
    can.DesiredTorqBrk_CG1.CmbbBrkDis_B_Actl     =    (bitget(bb(8,:),1))';
    can.DesiredTorqBrk_CG1.units.CMbbDeny_B_ActlBrk     =  'SED';
    can.DesiredTorqBrk_CG1.CMbbDeny_B_ActlBrk     =    (bitget(bb(8,:),5))';
    can.DesiredTorqBrk_CG1.units.RgenTqLimActv_B_Actl     =  'SED';
    can.DesiredTorqBrk_CG1.RgenTqLimActv_B_Actl     =    (bitget(bb(5,:),1))';
    can.DesiredTorqBrk_CG1.units.CcDis_B_Cmd     =  'SED';
    can.DesiredTorqBrk_CG1.CcDis_B_Cmd     =    (bitget(bb(7,:),6))';
    can.DesiredTorqBrk_CG1.units.TrlrBrk_Pc_Rq     =  '%';
    can.DesiredTorqBrk_CG1.TrlrBrk_Pc_Rq     =    (bitand(bitshift(bb(5,:),-1),127))' ;
    can.DesiredTorqBrk_CG1.units.RearDiffLck_Tq_RqMx     =  'Nm';
    can.DesiredTorqBrk_CG1.RearDiffLck_Tq_RqMx     =    (2^4 * bb(3,:) + bitand(bitshift(bb(4,:),-4),15))' ;
    can.DesiredTorqBrk_CG1.units.VehLongOvrGnd_A_Est     =  'm/s^2';
    can.DesiredTorqBrk_CG1.VehLongOvrGnd_A_Est     =    3.500000e-002*(2^2 * bb(6,:) + bitand(bitshift(bb(7,:),-6),3))' +-17.90;
    can.DesiredTorqBrk_CG1.units.StabCtlBrkActv_B_Actl     =  'SED';
    can.DesiredTorqBrk_CG1.StabCtlBrkActv_B_Actl     =    (bitget(bb(4,:),4))';
    can.DesiredTorqBrk_CG1.units.CmbbBrkPrchg_B_Actl     =  'SED';
    can.DesiredTorqBrk_CG1.CmbbBrkPrchg_B_Actl     =    (bitget(bb(8,:),4))';
    can.DesiredTorqBrk_CG1.units.CmbbBrkDecel_B_Actl     =  'SED';
    can.DesiredTorqBrk_CG1.CmbbBrkDecel_B_Actl     =    (bitget(bb(8,:),3))';
    can.DesiredTorqBrk_CG1.units.CmbbBaSensInc_B_Actl     =  'SED';
    can.DesiredTorqBrk_CG1.CmbbBaSensInc_B_Actl     =    (bitget(bb(8,:),2))';
    can.DesiredTorqBrk_CG1.units.AccBrkWarm_B_Actl     =  'SED';
    can.DesiredTorqBrk_CG1.AccBrkWarm_B_Actl     =    (bitget(bb(8,:),8))';
    can.DesiredTorqBrk_CG1.units.AccBrkTotTqMn_B_Actl     =  'SED';
    can.DesiredTorqBrk_CG1.AccBrkTotTqMn_B_Actl     =    (bitget(bb(8,:),7))';
    can.DesiredTorqBrk_CG1.units.AccBrkPrchgActv_B_Actl     =  'SED';
    can.DesiredTorqBrk_CG1.AccBrkPrchgActv_B_Actl     =    (bitget(bb(8,:),6))';
    can.DesiredTorqBrk_CG1.units.AccBrkDis_B_Actl     =  'SED';
    can.DesiredTorqBrk_CG1.AccBrkDis_B_Actl     =    (bitget(bb(7,:),3))';
    can.DesiredTorqBrk_CG1.units.AccBrkDeny_B_Actl     =  'SED';
    can.DesiredTorqBrk_CG1.AccBrkDeny_B_Actl     =    (bitget(bb(7,:),2))';
    can.DesiredTorqBrk_CG1.units.AccBrkActv_B_Actl     =  'SED';
    can.DesiredTorqBrk_CG1.AccBrkActv_B_Actl     =    (bitget(bb(7,:),1))';
    can.DesiredTorqBrk_CG1.units.PrplDrgCtlActv_B_Actl     =  'SED';
    can.DesiredTorqBrk_CG1.PrplDrgCtlActv_B_Actl     =    (bitget(bb(7,:),5))';
    can.DesiredTorqBrk_CG1.units.PrplWhlTot_Tq_RqMx     =  'Nm';
    can.DesiredTorqBrk_CG1.PrplWhlTot_Tq_RqMx     =    4.000000e+000*(2^8 * bb(1,:) + bb(2,:))' +-131072.00;
    can.DesiredTorqBrk_CG1.units.AbsActv_B_Actl     =  'SED';
    can.DesiredTorqBrk_CG1.AbsActv_B_Actl     =    (bitget(bb(7,:),4))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: WheelSpeed_CG1
% Hex ID:215
% Last edited by: selwart
% Date:26-Apr-2011
MSG_215 = hex2dec('215');

ix=find(msg == MSG_215);          % Find all message 0x215's
if ~isempty(ix)                   % If there are any ...
    can.WheelSpeed_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x215 messages
    can.WheelSpeed_CG1.nsamples      = length(ix);
    can.WheelSpeed_CG1.ctime         = cantime(ix);

    can.WheelSpeed_CG1.units.WhlRr_W_Meas     =  'rad/s';
    can.WheelSpeed_CG1.WhlRr_W_Meas     =    1.000000e-002*(2^7 * bb(7,:) + bitand(bitshift(bb(8,:),-1),127))' ;
    can.WheelSpeed_CG1.units.WhlRl_W_Meas     =  'rad/s';
    can.WheelSpeed_CG1.WhlRl_W_Meas     =    1.000000e-002*(2^7 * bb(5,:) + bitand(bitshift(bb(6,:),-1),127))' ;
    can.WheelSpeed_CG1.units.WhlFr_W_Meas     =  'rad/s';
    can.WheelSpeed_CG1.WhlFr_W_Meas     =    1.000000e-002*(2^7 * bb(3,:) + bitand(bitshift(bb(4,:),-1),127))' ;
    can.WheelSpeed_CG1.units.WhlFl_W_Meas     =  'rad/s';
    can.WheelSpeed_CG1.WhlFl_W_Meas     =    1.000000e-002*(2^7 * bb(1,:) + bitand(bitshift(bb(2,:),-1),127))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: WheelData
% Hex ID:216
% Last edited by: selwart
% Date:26-Apr-2011
MSG_216 = hex2dec('216');

ix=find(msg == MSG_216);          % Find all message 0x216's
if ~isempty(ix)                   % If there are any ...
    can.WheelData = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x216 messages
    can.WheelData.nsamples      = length(ix);
    can.WheelData.ctime         = cantime(ix);

    can.WheelData.units.WhlRotatRr_No_Cnt     =  'Unitless';
    can.WheelData.WhlRotatRr_No_Cnt     =    (bb(3,:))' ;
    can.WheelData.units.WhlDirRr_D_Actl     =  'SED';
    can.WheelData.WhlDirRr_D_Actl     =    (bitand(bb(5,:),3))' ;
    can.WheelData.units.WhlDirRl_D_Actl     =  'SED';
    can.WheelData.WhlDirRl_D_Actl     =    (bitand(bitshift(bb(5,:),-6),3))' ;
    can.WheelData.units.WhlDirFr_D_Actl     =  'SED';
    can.WheelData.WhlDirFr_D_Actl     =    (bitand(bitshift(bb(5,:),-4),3))' ;
    can.WheelData.units.WhlDirFl_D_Actl     =  'SED';
    can.WheelData.WhlDirFl_D_Actl     =    (bitand(bitshift(bb(5,:),-2),3))' ;
    can.WheelData.units.WhlRotatRl_No_Cnt     =  'Unitless';
    can.WheelData.WhlRotatRl_No_Cnt     =    (bb(4,:))' ;
    can.WheelData.units.WhlRotatFr_No_Cnt     =  'Unitless';
    can.WheelData.WhlRotatFr_No_Cnt     =    (bb(1,:))' ;
    can.WheelData.units.WhlRotatFl_No_Cnt     =  'Unitless';
    can.WheelData.WhlRotatFl_No_Cnt     =    (bb(2,:))' ;
    can.WheelData.units.WHEEL_ROLLING_TIMESTAMP     =  'Unitless';
    can.WheelData.WHEEL_ROLLING_TIMESTAMP     =    (bb(6,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: InfoCAN_22D
% Hex ID:22D
% Last edited by: selwart
% Date:26-Apr-2011
MSG_22D = hex2dec('22D');

ix=find(msg == MSG_22D);          % Find all message 0x22D's
if ~isempty(ix)                   % If there are any ...
    can.InfoCAN_22D = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x22D messages
    can.InfoCAN_22D.nsamples      = length(ix);
    can.InfoCAN_22D.ctime         = cantime(ix);

    can.InfoCAN_22D.units.Multimedia_System     =  'SED';
    can.InfoCAN_22D.Multimedia_System     =    (bitget(bb(1,:),8))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TransGearData
% Hex ID:230
% Last edited by: selwart
% Date:26-Apr-2011
MSG_230 = hex2dec('230');

ix=find(msg == MSG_230);          % Find all message 0x230's
if ~isempty(ix)                   % If there are any ...
    can.TransGearData = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x230 messages
    can.TransGearData.nsamples      = length(ix);
    can.TransGearData.ctime         = cantime(ix);

    can.TransGearData.units.TrnIpcDsplyRng_D_Actl     =  'SED';
    can.TransGearData.TrnIpcDsplyRng_D_Actl     =    (bitand(bitshift(bb(2,:),-4),7))' ;
    can.TransGearData.units.TrnGbox_Rt_Actl     =  'Unitless';
    can.TransGearData.TrnGbox_Rt_Actl     =    1.000000e-003*(2^8 * bb(6,:) + bb(7,:))' ;
    can.TransGearData.units.TrnShifMde_D_RqDrv     =  'SED';
    can.TransGearData.TrnShifMde_D_RqDrv     =    (bitand(bitshift(bb(1,:),-1),7))' ;
    can.TransGearData.units.TrnSrvcRqd_B_Rq     =  'SED';
    can.TransGearData.TrnSrvcRqd_B_Rq     =    (bitget(bb(8,:),8))';
    can.TransGearData.units.GearPos_D_Trg     =  'SED';
    can.TransGearData.GearPos_D_Trg     =    (bitand(bitshift(bb(1,:),-4),15))' ;
    can.TransGearData.units.TrnCnvtClu_D_Actl     =  'SED';
    can.TransGearData.TrnCnvtClu_D_Actl     =    (bitand(bitshift(bb(2,:),-2),3))' ;
    can.TransGearData.units.TrnShifActv_B_Actl     =  'SED';
    can.TransGearData.TrnShifActv_B_Actl     =    (bitget(bb(1,:),1))';
    can.TransGearData.units.RtmTerrMdeChng_D_Rdy     =  'Unitless';
    can.TransGearData.RtmTerrMdeChng_D_Rdy     =    (bitand(bb(8,:),7))' ;
    can.TransGearData.units.RtmTerrMde_D_Actl     =  'Unitless';
    can.TransGearData.RtmTerrMde_D_Actl     =    (bitand(bitshift(bb(8,:),-3),7))' ;
    can.TransGearData.units.GearRvrseActv_B_Actl     =  'SED';
    can.TransGearData.GearRvrseActv_B_Actl     =    (bitget(bb(8,:),7))';
    can.TransGearData.units.GearLvrPos_D_Actl     =  'SED';
    can.TransGearData.GearLvrPos_D_Actl     =    (bitand(bitshift(bb(3,:),-4),15))' ;
    can.TransGearData.units.GboxOil_Te_Actl     =  'degC';
    can.TransGearData.GboxOil_Te_Actl     =    (bb(4,:))' +-60.00;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TransGearData_2
% Hex ID:231
% Last edited by: selwart
% Date:26-Apr-2011
MSG_231 = hex2dec('231');

ix=find(msg == MSG_231);          % Find all message 0x231's
if ~isempty(ix)                   % If there are any ...
    can.TransGearData_2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x231 messages
    can.TransGearData_2.nsamples      = length(ix);
    can.TransGearData_2.ctime         = cantime(ix);

    can.TransGearData_2.units.MtrGen1Aout_Tq_Rq     =  'Nm';
    can.TransGearData_2.MtrGen1Aout_Tq_Rq     =    1.000000e-001*(2^8 * bitand(bb(7,:),63) + bb(8,:))' +-800.00;
    can.TransGearData_2.units.MtrGen1AoutTqRq_No_Cs     =  'Unitless';
    can.TransGearData_2.MtrGen1AoutTqRq_No_Cs     =    (bb(1,:))' ;
    can.TransGearData_2.units.MtrGen1AoutTqRq_No_Cnt     =  'Unitless';
    can.TransGearData_2.MtrGen1AoutTqRq_No_Cnt     =    (bitand(bitshift(bb(2,:),-4),15))' ;
    can.TransGearData_2.units.CoolFanTrn_D_Rq     =  'Unitless';
    can.TransGearData_2.CoolFanTrn_D_Rq     =    (bitand(bitshift(bb(4,:),-3),31))' ;
    can.TransGearData_2.units.TrnMsgTxt_D_Rq     =  'Unitless';
    can.TransGearData_2.TrnMsgTxt_D_Rq     =    (bitand(bitshift(bb(5,:),-4),15))' ;
    can.TransGearData_2.units.TrnMil_D_Rq     =  'SED';
    can.TransGearData_2.TrnMil_D_Rq     =    (bitand(bitshift(bb(4,:),-1),3))' ;
    can.TransGearData_2.units.EngExhBrkTq_Pc_Rq     =  'Percent';
    can.TransGearData_2.EngExhBrkTq_Pc_Rq     =    (bitand(bitshift(bb(3,:),-1),127))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TransGearData_3_CG1
% Hex ID:232
% Last edited by: selwart
% Date:26-Apr-2011
MSG_232 = hex2dec('232');

ix=find(msg == MSG_232);          % Find all message 0x232's
if ~isempty(ix)                   % If there are any ...
    can.TransGearData_3_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x232 messages
    can.TransGearData_3_CG1.nsamples      = length(ix);
    can.TransGearData_3_CG1.ctime         = cantime(ix);

    can.TransGearData_3_CG1.units.TrnPto_D_Rdy     =  'SED';
    can.TransGearData_3_CG1.TrnPto_D_Rdy     =    (bitand(bitshift(bb(2,:),-3),3))' ;
    can.TransGearData_3_CG1.units.TipInMgrInhbt_B_RqTrn     =  'SED';
    can.TransGearData_3_CG1.TipInMgrInhbt_B_RqTrn     =    (bitget(bb(6,:),2))';
    can.TransGearData_3_CG1.units.TrnAinIdl_Tq_Actl     =  'Nm';
    can.TransGearData_3_CG1.TrnAinIdl_Tq_Actl     =    (2^3 * bb(5,:) + bitand(bitshift(bb(6,:),-5),7))' +-500.00;
    can.TransGearData_3_CG1.units.TrnAinLss_Tq_Est     =  'Nm';
    can.TransGearData_3_CG1.TrnAinLss_Tq_Est     =    (2^3 * bb(1,:) + bitand(bitshift(bb(2,:),-5),7))' +-500.00;
    can.TransGearData_3_CG1.units.TrnAin_Tq_RqSlwMn     =  'Nm';
    can.TransGearData_3_CG1.TrnAin_Tq_RqSlwMn     =    (2^3 * bb(3,:) + bitand(bitshift(bb(4,:),-5),7))' +-500.00;
    can.TransGearData_3_CG1.units.GearEngag_D_Actl     =  'Unitless';
    can.TransGearData_3_CG1.GearEngag_D_Actl     =    (bitand(bb(2,:),7))' ;
    can.TransGearData_3_CG1.units.TrnAinTqDtrb_B_Rq     =  'SED';
    can.TransGearData_3_CG1.TrnAinTqDtrb_B_Rq     =    (bitget(bb(6,:),1))';
    can.TransGearData_3_CG1.units.TrnTotLss_Tq_Actl     =  'Nm';
    can.TransGearData_3_CG1.TrnTotLss_Tq_Actl     =    5.000000e-001*(bb(7,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TransGearData_4_CG1
% Hex ID:233
% Last edited by: selwart
% Date:26-Apr-2011
MSG_233 = hex2dec('233');

ix=find(msg == MSG_233);          % Find all message 0x233's
if ~isempty(ix)                   % If there are any ...
    can.TransGearData_4_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x233 messages
    can.TransGearData_4_CG1.nsamples      = length(ix);
    can.TransGearData_4_CG1.ctime         = cantime(ix);

    can.TransGearData_4_CG1.units.TrnAinCtlN_N_RqMn     =  'rpm';
    can.TransGearData_4_CG1.TrnAinCtlN_N_RqMn     =    2.000000e+000*(2^8 * bitand(bb(3,:),31) + bb(4,:))' ;
    can.TransGearData_4_CG1.units.TrnAinTqMn_No_Cs     =  'Unitless';
    can.TransGearData_4_CG1.TrnAinTqMn_No_Cs     =    (bb(8,:))' ;
    can.TransGearData_4_CG1.units.TrnAinTqMn_No_Cnt     =  'Unitless';
    can.TransGearData_4_CG1.TrnAinTqMn_No_Cnt     =    (bitand(bb(2,:),15))' ;
    can.TransGearData_4_CG1.units.TrnAinRq_Pc_SpcPdl     =  'percent';
    can.TransGearData_4_CG1.TrnAinRq_Pc_SpcPdl     =    1.000000e-001*(2^2 * bb(1,:) + bitand(bitshift(bb(2,:),-6),3))' ;
    can.TransGearData_4_CG1.units.TrnAin_Tq_RqFstMn     =  'Nm';
    can.TransGearData_4_CG1.TrnAin_Tq_RqFstMn     =    (2^8 * bitand(bb(6,:),7) + bb(7,:))' +-500.00;
    can.TransGearData_4_CG1.units.TrnAin_N_SpcEng     =  'rpm';
    can.TransGearData_4_CG1.TrnAin_N_SpcEng     =    2.000000e+000*(2^5 * bb(5,:) + bitand(bitshift(bb(6,:),-3),31))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Suspension_Stat
% Hex ID:23A
% Last edited by: selwart
% Date:26-Apr-2011
MSG_23A = hex2dec('23A');

ix=find(msg == MSG_23A);          % Find all message 0x23A's
if ~isempty(ix)                   % If there are any ...
    can.Suspension_Stat = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x23A messages
    can.Suspension_Stat.nsamples      = length(ix);
    can.Suspension_Stat.ctime         = cantime(ix);

    can.Suspension_Stat.units.CcdMsgTxt_D_RqDsply     =  'SED';
    can.Suspension_Stat.CcdMsgTxt_D_RqDsply     =    (bitand(bitshift(bb(1,:),-4),15))' ;
    can.Suspension_Stat.units.SuspRear_L_Prev     =  'millimeter';
    can.Suspension_Stat.SuspRear_L_Prev     =    7.827790e-001*(2^8 * bitand(bb(7,:),1) + bb(8,:))' +-200.00;
    can.Suspension_Stat.units.SuspRear_L_Actl     =  'millimeter';
    can.Suspension_Stat.SuspRear_L_Actl     =    7.827790e-001*(2^8 * bitand(bb(5,:),1) + bb(6,:))' +-200.00;
    can.Suspension_Stat.units.SuspFrnt_L_Prev     =  'millimeter';
    can.Suspension_Stat.SuspFrnt_L_Prev     =    7.827790e-001*(2^8 * bitand(bb(3,:),1) + bb(4,:))' +-200.00;
    can.Suspension_Stat.units.SuspFrnt_L_Actl     =  'millimeter';
    can.Suspension_Stat.SuspFrnt_L_Actl     =    7.827790e-001*(2^8 * bitand(bb(1,:),1) + bb(2,:))' +-200.00;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ColumnLockData
% Hex ID:23B
% Last edited by: selwart
% Date:26-Apr-2011
MSG_23B = hex2dec('23B');

ix=find(msg == MSG_23B);          % Find all message 0x23B's
if ~isempty(ix)                   % If there are any ...
    can.ColumnLockData = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x23B messages
    can.ColumnLockData.nsamples      = length(ix);
    can.ColumnLockData.ctime         = cantime(ix);

    can.ColumnLockData.units.SteWhlLckMsgTxt_D_Rq     =  'SED';
    can.ColumnLockData.SteWhlLckMsgTxt_D_Rq     =    (bitand(bitshift(bb(1,:),-6),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Body_Information_4_CG1
% Hex ID:240
% Last edited by: selwart
% Date:26-Apr-2011
MSG_240 = hex2dec('240');

ix=find(msg == MSG_240);          % Find all message 0x240's
if ~isempty(ix)                   % If there are any ...
    can.Body_Information_4_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x240 messages
    can.Body_Information_4_CG1.nsamples      = length(ix);
    can.Body_Information_4_CG1.ctime         = cantime(ix);

    can.Body_Information_4_CG1.units.HvacRec_Pc_Est_UB     =  'SED';
    can.Body_Information_4_CG1.HvacRec_Pc_Est_UB     =    (bitget(bb(7,:),4))';
    can.Body_Information_4_CG1.units.HvacRec_Pc_Est     =  'Percent';
    can.Body_Information_4_CG1.HvacRec_Pc_Est     =    (bitand(bb(5,:),127))' ;
    can.Body_Information_4_CG1.units.HvacEngIdleInc_B_Rq_UB     =  'SED';
    can.Body_Information_4_CG1.HvacEngIdleInc_B_Rq_UB     =    (bitget(bb(7,:),2))';
    can.Body_Information_4_CG1.units.HvacEngIdleInc_B_Rq     =  'SED';
    can.Body_Information_4_CG1.HvacEngIdleInc_B_Rq     =    (bitget(bb(7,:),6))';
    can.Body_Information_4_CG1.units.HvacAir_Flw_Est_UB     =  'SED';
    can.Body_Information_4_CG1.HvacAir_Flw_Est_UB     =    (bitget(bb(7,:),5))';
    can.Body_Information_4_CG1.units.HvacAir_Flw_Est     =  'liter/second';
    can.Body_Information_4_CG1.HvacAir_Flw_Est     =    5.000000e-001*(2^1 * bb(4,:) + bitand(bitshift(bb(5,:),-7),1))' ;
    can.Body_Information_4_CG1.units.AmbTempImpr_UB     =  'SED';
    can.Body_Information_4_CG1.AmbTempImpr_UB     =    (bitget(bb(7,:),3))';
    can.Body_Information_4_CG1.units.AmbTempImpr     =  'degreesC';
    can.Body_Information_4_CG1.AmbTempImpr     =    2.500000e-001*(2^2 * bb(6,:) + bitand(bitshift(bb(7,:),-6),3))' +-128.00;
    can.Body_Information_4_CG1.units.DriverCrankingReq     =  'SED';
    can.Body_Information_4_CG1.DriverCrankingReq     =    (bitget(bb(3,:),1))';
    can.Body_Information_4_CG1.units.Fcw_B_DenyMntr     =  'SED';
    can.Body_Information_4_CG1.Fcw_B_DenyMntr     =    (bitget(bb(3,:),8))';
    can.Body_Information_4_CG1.units.EngOff_T_Actl     =  'seconds';
    can.Body_Information_4_CG1.EngOff_T_Actl     =    (2^8 * bb(1,:) + bb(2,:))' ;
    can.Body_Information_4_CG1.units.CmbbMntr_B_Err     =  'SED';
    can.Body_Information_4_CG1.CmbbMntr_B_Err     =    (bitget(bb(3,:),7))';
    can.Body_Information_4_CG1.units.CmbbDeny_B_RqMntr     =  'SED';
    can.Body_Information_4_CG1.CmbbDeny_B_RqMntr     =    (bitget(bb(3,:),6))';
    can.Body_Information_4_CG1.units.AccMntr_B_Err     =  'SED';
    can.Body_Information_4_CG1.AccMntr_B_Err     =    (bitget(bb(3,:),5))';
    can.Body_Information_4_CG1.units.AccDeny_B_RqMntr     =  'SED';
    can.Body_Information_4_CG1.AccDeny_B_RqMntr     =    (bitget(bb(3,:),4))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EONV_Status
% Hex ID:250
% Last edited by: selwart
% Date:26-Apr-2011
MSG_250 = hex2dec('250');

ix=find(msg == MSG_250);          % Find all message 0x250's
if ~isempty(ix)                   % If there are any ...
    can.EONV_Status = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x250 messages
    can.EONV_Status.nsamples      = length(ix);
    can.EONV_Status.ctime         = cantime(ix);

    can.EONV_Status.units.EONV_FAULT     =  'SED';
    can.EONV_Status.EONV_FAULT     =    (bitget(bb(8,:),4))';
    can.EONV_Status.units.EONV_KAL_IC_RQST     =  'SED';
    can.EONV_Status.EONV_KAL_IC_RQST     =    (bitget(bb(7,:),6))';
    can.EONV_Status.units.EONV_T_STATUS     =  'SED';
    can.EONV_Status.EONV_T_STATUS     =    (bitand(bitshift(bb(8,:),-4),3))' ;
    can.EONV_Status.units.EONV_VREF_FLT     =  'SED';
    can.EONV_Status.EONV_VREF_FLT     =    (bitget(bb(8,:),7))';
    can.EONV_Status.units.EONV_VBATT_FLT     =  'SED';
    can.EONV_Status.EONV_VBATT_FLT     =    (bitget(bb(8,:),8))';
    can.EONV_Status.units.EONV_CANISTER_VENT_FLT     =  'SED';
    can.EONV_Status.EONV_CANISTER_VENT_FLT     =    (bitget(bb(7,:),7))';
    can.EONV_Status.units.EONV_CVS_CLOSED     =  'SED';
    can.EONV_Status.EONV_CVS_CLOSED     =    (bitget(bb(7,:),8))';
    can.EONV_Status.units.EONV_BATT_VOLT     =  'volts';
    can.EONV_Status.EONV_BATT_VOLT     =    9.765625e-004*(2^8 * bb(3,:) + bb(4,:))' ;
    can.EONV_Status.units.EONV_TANK_FLT     =  'SED';
    can.EONV_Status.EONV_TANK_FLT     =    (bitget(bb(7,:),1))';
    can.EONV_Status.units.EONV_TANK_PRESS     =  'inches H2O';
    can.EONV_Status.EONV_TANK_PRESS     =    1.953125e-003*(2^8 * bb(1,:) + bb(2,:))' +-64.00;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EONV_Control
% Hex ID:255
% Last edited by: selwart
% Date:26-Apr-2011
MSG_255 = hex2dec('255');

ix=find(msg == MSG_255);          % Find all message 0x255's
if ~isempty(ix)                   % If there are any ...
    can.EONV_Control = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x255 messages
    can.EONV_Control.nsamples      = length(ix);
    can.EONV_Control.ctime         = cantime(ix);

    can.EONV_Control.units.EONV_POS_DET_THRESHOLD     =  'inches H2O';
    can.EONV_Control.EONV_POS_DET_THRESHOLD     =    1.953125e-003*(2^8 * bb(3,:) + bb(4,:))' +-64.00;
    can.EONV_Control.units.EONV_STAY_ALIVE     =  'SED';
    can.EONV_Control.EONV_STAY_ALIVE     =    (bitget(bb(2,:),8))';
    can.EONV_Control.units.EONV_CVS_MODE     =  'SED';
    can.EONV_Control.EONV_CVS_MODE     =    (bitand(bitshift(bb(1,:),-5),7))' ;
    can.EONV_Control.units.EONV_NEG_DET_THRESHOLD     =  'inches H2O';
    can.EONV_Control.EONV_NEG_DET_THRESHOLD     =    1.953125e-003*(2^8 * bb(5,:) + bb(6,:))' +-64.00;
    can.EONV_Control.units.EONV_MIL_ON     =  'SED';
    can.EONV_Control.EONV_MIL_ON     =    (bitget(bb(2,:),7))';
    can.EONV_Control.units.EonvMsgTxOff_B_Rq     =  'SED';
    can.EONV_Control.EonvMsgTxOff_B_Rq     =    (bitget(bb(1,:),5))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Information4x4_CG1
% Hex ID:260
% Last edited by: selwart
% Date:26-Apr-2011
MSG_260 = hex2dec('260');

ix=find(msg == MSG_260);          % Find all message 0x260's
if ~isempty(ix)                   % If there are any ...
    can.Information4x4_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x260 messages
    can.Information4x4_CG1.nsamples      = length(ix);
    can.Information4x4_CG1.ctime         = cantime(ix);

    can.Information4x4_CG1.units.AwdRngeShifActv_B_Actl     =  'SED';
    can.Information4x4_CG1.AwdRngeShifActv_B_Actl     =    (bitget(bb(1,:),1))';
    can.Information4x4_CG1.units.TrnAout_Tq_RqMx     =  'Nm';
    can.Information4x4_CG1.TrnAout_Tq_RqMx     =    (2^5 * bb(6,:) + bitand(bitshift(bb(7,:),-3),31))' +-1250.00;
    can.Information4x4_CG1.units.AwdRngeFalt_D_Stat     =  'SED';
    can.Information4x4_CG1.AwdRngeFalt_D_Stat     =    (bitand(bitshift(bb(1,:),-3),3))' ;
    can.Information4x4_CG1.units.AwdLck_Tq_Actl     =  'Nm';
    can.Information4x4_CG1.AwdLck_Tq_Actl     =    (2^4 * bb(2,:) + bitand(bitshift(bb(3,:),-4),15))' ;
    can.Information4x4_CG1.units.AwdRnge_D_Actl     =  'SED';
    can.Information4x4_CG1.AwdRnge_D_Actl     =    (bitand(bitshift(bb(1,:),-5),7))' ;
    can.Information4x4_CG1.units.AwdTerrMdeChng_D_Rdy     =  'SED';
    can.Information4x4_CG1.AwdTerrMdeChng_D_Rdy     =    (bitand(bb(7,:),7))' ;
    can.Information4x4_CG1.units.AwdTerrMde_D_Actl     =  'SED';
    can.Information4x4_CG1.AwdTerrMde_D_Actl     =    (bitand(bb(8,:),7))' ;
    can.Information4x4_CG1.units.AwdOffRoadMode_D_Stats     =  'SED';
    can.Information4x4_CG1.AwdOffRoadMode_D_Stats     =    (bitand(bb(4,:),3))' ;
    can.Information4x4_CG1.units.AwdStat_D_RqDsply     =  'SED';
    can.Information4x4_CG1.AwdStat_D_RqDsply     =    (bitand(bitshift(bb(8,:),-3),31))' ;
    can.Information4x4_CG1.units.AwdLoLamp_D_RqDsply     =  'SED';
    can.Information4x4_CG1.AwdLoLamp_D_RqDsply     =    (bitand(bitshift(bb(5,:),-2),3))' ;
    can.Information4x4_CG1.units.AwdHiLamp_D_RqDsply     =  'SED';
    can.Information4x4_CG1.AwdHiLamp_D_RqDsply     =    (bitand(bitshift(bb(3,:),-2),3))' ;
    can.Information4x4_CG1.units.AwdAutoLamp_D_RqDsply     =  'SED';
    can.Information4x4_CG1.AwdAutoLamp_D_RqDsply     =    (bitand(bb(3,:),3))' ;
    can.Information4x4_CG1.units.AwdLckLamp_D_RqDsply     =  'SED';
    can.Information4x4_CG1.AwdLckLamp_D_RqDsply     =    (bitand(bitshift(bb(4,:),-2),3))' ;
    can.Information4x4_CG1.units.AwdLck_D_Stat     =  'SED';
    can.Information4x4_CG1.AwdLck_D_Stat     =    (bitand(bitshift(bb(4,:),-4),15))' ;
    can.Information4x4_CG1.units.Awd2wdLamp_D_RqDsply     =  'SED';
    can.Information4x4_CG1.Awd2wdLamp_D_RqDsply     =    (bitand(bitshift(bb(1,:),-1),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: AWD_4x4_Data
% Hex ID:261
% Last edited by: selwart
% Date:26-Apr-2011
MSG_261 = hex2dec('261');

ix=find(msg == MSG_261);          % Find all message 0x261's
if ~isempty(ix)                   % If there are any ...
    can.AWD_4x4_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x261 messages
    can.AWD_4x4_Data.nsamples      = length(ix);
    can.AWD_4x4_Data.ctime         = cantime(ix);

    can.AWD_4x4_Data.units.AwdLck_Tq_Rq     =  'Nm';
    can.AWD_4x4_Data.AwdLck_Tq_Rq     =    (2^8 * bitand(bb(4,:),15) + bb(5,:))' ;
    can.AWD_4x4_Data.units.AwdSrvcRqd_B_Rq     =  'SED';
    can.AWD_4x4_Data.AwdSrvcRqd_B_Rq     =    (bitget(bb(6,:),5))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: PassengerSeatOCSInfo
% Hex ID:265
% Last edited by: selwart
% Date:26-Apr-2011
MSG_265 = hex2dec('265');

ix=find(msg == MSG_265);          % Find all message 0x265's
if ~isempty(ix)                   % If there are any ...
    can.PassengerSeatOCSInfo = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x265 messages
    can.PassengerSeatOCSInfo.nsamples      = length(ix);
    can.PassengerSeatOCSInfo.ctime         = cantime(ix);

    can.PassengerSeatOCSInfo.units.VehicleMYCalibrationId     =  'SED';
    can.PassengerSeatOCSInfo.VehicleMYCalibrationId     =    (bb(5,:))' ;
    can.PassengerSeatOCSInfo.units.VehicleCalibrationId     =  'SED';
    can.PassengerSeatOCSInfo.VehicleCalibrationId     =    (bb(4,:))' ;
    can.PassengerSeatOCSInfo.units.OCSSensrDataUpperLim     =  'SED';
    can.PassengerSeatOCSInfo.OCSSensrDataUpperLim     =    (bb(2,:))' ;
    can.PassengerSeatOCSInfo.units.OCSSensrDataLowerLim     =  'SED';
    can.PassengerSeatOCSInfo.OCSSensrDataLowerLim     =    (bb(3,:))' ;
    can.PassengerSeatOCSInfo.units.OCSLevel2Error     =  'SED';
    can.PassengerSeatOCSInfo.OCSLevel2Error     =    (bitget(bb(1,:),1))';
    can.PassengerSeatOCSInfo.units.ObjectEntrapped     =  'SED';
    can.PassengerSeatOCSInfo.ObjectEntrapped     =    (bitget(bb(1,:),3))';
    can.PassengerSeatOCSInfo.units.OCSLevel1Error     =  'SED';
    can.PassengerSeatOCSInfo.OCSLevel1Error     =    (bitget(bb(1,:),8))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: FCIM_Button_Press_HS
% Hex ID:2E0
% Last edited by: selwart
% Date:26-Apr-2011
MSG_2E0 = hex2dec('2E0');

ix=find(msg == MSG_2E0);          % Find all message 0x2E0's
if ~isempty(ix)                   % If there are any ...
    can.FCIM_Button_Press_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x2E0 messages
    can.FCIM_Button_Press_HS.nsamples      = length(ix);
    can.FCIM_Button_Press_HS.ctime         = cantime(ix);

    can.FCIM_Button_Press_HS.units.FCIM_Target_ID     =  'SED';
    can.FCIM_Button_Press_HS.FCIM_Target_ID     =    (bitand(bitshift(bb(2,:),-2),15))' ;
    can.FCIM_Button_Press_HS.units.FCIM_Button_Type     =  'SED';
    can.FCIM_Button_Press_HS.FCIM_Button_Type     =    (bb(1,:))' ;
    can.FCIM_Button_Press_HS.units.FCIM_Button_State     =  'SED';
    can.FCIM_Button_Press_HS.FCIM_Button_State     =    (bitand(bitshift(bb(2,:),-6),3))' ;
    can.FCIM_Button_Press_HS.units.FCIM_Target_ID_UB     =  'SED';
    can.FCIM_Button_Press_HS.FCIM_Target_ID_UB     =    (bitget(bb(3,:),8))';
    can.FCIM_Button_Press_HS.units.FCIM_Button_Type_UB     =  'SED';
    can.FCIM_Button_Press_HS.FCIM_Button_Type_UB     =    (bitget(bb(2,:),2))';
    can.FCIM_Button_Press_HS.units.FCIM_Button_State_UB     =  'SED';
    can.FCIM_Button_Press_HS.FCIM_Button_State_UB     =    (bitget(bb(2,:),1))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Compressor_Req_HS
% Hex ID:326
% Last edited by: selwart
% Date:26-Apr-2011
MSG_326 = hex2dec('326');

ix=find(msg == MSG_326);          % Find all message 0x326's
if ~isempty(ix)                   % If there are any ...
    can.Compressor_Req_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x326 messages
    can.Compressor_Req_HS.nsamples      = length(ix);
    can.Compressor_Req_HS.ctime         = cantime(ix);

    can.Compressor_Req_HS.units.HvacEvap_Te_Rq     =  'Degrees C';
    can.Compressor_Req_HS.HvacEvap_Te_Rq     =    1.250000e-001*(2^8 * bitand(bb(5,:),3) + bb(6,:))' +-50.00;
    can.Compressor_Req_HS.units.HvacEvap_Te_Actl     =  'Degrees C';
    can.Compressor_Req_HS.HvacEvap_Te_Actl     =    1.250000e-001*(2^8 * bitand(bb(3,:),3) + bb(4,:))' +-50.00;
    can.Compressor_Req_HS.units.HvacAirCond_B_Rq     =  'SED';
    can.Compressor_Req_HS.HvacAirCond_B_Rq     =    (bitget(bb(1,:),8))';
    can.Compressor_Req_HS.units.HvacEvap_Te_Offst     =  'Degrees C';
    can.Compressor_Req_HS.HvacEvap_Te_Offst     =    1.250000e-001*(2^8 * bitand(bb(1,:),3) + bb(2,:))' +-50.00;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RCMStatusMessage
% Hex ID:340
% Last edited by: selwart
% Date:26-Apr-2011
MSG_340 = hex2dec('340');

ix=find(msg == MSG_340);          % Find all message 0x340's
if ~isempty(ix)                   % If there are any ...
    can.RCMStatusMessage = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x340 messages
    can.RCMStatusMessage.nsamples      = length(ix);
    can.RCMStatusMessage.ctime         = cantime(ix);

    can.RCMStatusMessage.units.eCallNotification     =  'SED';
    can.RCMStatusMessage.eCallNotification     =    (bitand(bitshift(bb(1,:),-1),3))' ;
    can.RCMStatusMessage.units.CrashNotification     =  'SED';
    can.RCMStatusMessage.CrashNotification     =    (bitget(bb(1,:),6))';
    can.RCMStatusMessage.units.ThirdRowBucklePsngr     =  'SED';
    can.RCMStatusMessage.ThirdRowBucklePsngr     =    (bitand(bb(8,:),3))' ;
    can.RCMStatusMessage.units.ThirdRowBuckleMid     =  'SED';
    can.RCMStatusMessage.ThirdRowBuckleMid     =    (bitand(bitshift(bb(8,:),-2),3))' ;
    can.RCMStatusMessage.units.ThirdRowBuckleDriver     =  'SED';
    can.RCMStatusMessage.ThirdRowBuckleDriver     =    (bitand(bitshift(bb(8,:),-4),3))' ;
    can.RCMStatusMessage.units.SecondRowBucklePsngr     =  'SED';
    can.RCMStatusMessage.SecondRowBucklePsngr     =    (bitand(bitshift(bb(8,:),-6),3))' ;
    can.RCMStatusMessage.units.SecondRowBuckleMid     =  'SED';
    can.RCMStatusMessage.SecondRowBuckleMid     =    (bitand(bb(7,:),3))' ;
    can.RCMStatusMessage.units.SecondRowBuckleDriver     =  'SED';
    can.RCMStatusMessage.SecondRowBuckleDriver     =    (bitand(bitshift(bb(7,:),-2),3))' ;
    can.RCMStatusMessage.units.FirstRowBuckleDriver     =  'SED';
    can.RCMStatusMessage.FirstRowBuckleDriver     =    (bitand(bitshift(bb(7,:),-6),3))' ;
    can.RCMStatusMessage.units.RstrnTotalEvntCnt     =  'SED';
    can.RCMStatusMessage.RstrnTotalEvntCnt     =    (bitand(bb(6,:),15))' ;
    can.RCMStatusMessage.units.RstrnCurrentEvntCnt     =  'SED';
    can.RCMStatusMessage.RstrnCurrentEvntCnt     =    (bb(5,:))' ;
    can.RCMStatusMessage.units.RILReq     =  'SED';
    can.RCMStatusMessage.RILReq     =    (bitand(bitshift(bb(2,:),-6),3))' ;
    can.RCMStatusMessage.units.FuelCutoffReq     =  'SED';
    can.RCMStatusMessage.FuelCutoffReq     =    (bitand(bitshift(bb(2,:),-2),15))' ;
    can.RCMStatusMessage.units.SeatbeltIndicatorReq     =  'SED';
    can.RCMStatusMessage.SeatbeltIndicatorReq     =    (bitget(bb(2,:),2))';
    can.RCMStatusMessage.units.SeatbeltChimeReq     =  'SED';
    can.RCMStatusMessage.SeatbeltChimeReq     =    (bitget(bb(2,:),1))';
    can.RCMStatusMessage.units.BeltMinderProgConfReq     =  'SED';
    can.RCMStatusMessage.BeltMinderProgConfReq     =    (bitand(bitshift(bb(3,:),-4),3))' ;
    can.RCMStatusMessage.units.BeltMinderLevelReq     =  'SED';
    can.RCMStatusMessage.BeltMinderLevelReq     =    (bitand(bb(3,:),15))' ;
    can.RCMStatusMessage.units.FirstRowBucklePsngr     =  'SED';
    can.RCMStatusMessage.FirstRowBucklePsngr     =    (bitand(bitshift(bb(7,:),-4),3))' ;
    can.RCMStatusMessage.units.InfoLampReq     =  'SED';
    can.RCMStatusMessage.InfoLampReq     =    (bitget(bb(4,:),6))';
    can.RCMStatusMessage.units.GenRedLampReq     =  'SED';
    can.RCMStatusMessage.GenRedLampReq     =    (bitget(bb(4,:),5))';
    can.RCMStatusMessage.units.RstrnTextMsgReq     =  'SED';
    can.RCMStatusMessage.RstrnTextMsgReq     =    (bitand(bitshift(bb(4,:),-2),3))' ;
    can.RCMStatusMessage.units.OCSSerialNumRcvd     =  'SED';
    can.RCMStatusMessage.OCSSerialNumRcvd     =    (bitget(bb(1,:),4))';
    can.RCMStatusMessage.units.RstrnStatDeployEnbld     =  'SED';
    can.RCMStatusMessage.RstrnStatDeployEnbld     =    (bitget(bb(1,:),7))';
    can.RCMStatusMessage.units.RstrnImpactEvntStatus     =  'SED';
    can.RCMStatusMessage.RstrnImpactEvntStatus     =    (bitand(bitshift(bb(6,:),-4),7))' ;
    can.RCMStatusMessage.units.PassRstrnInd_Req     =  'SED';
    can.RCMStatusMessage.PassRstrnInd_Req     =    (bitand(bb(4,:),3))' ;
    can.RCMStatusMessage.units.RstrnStatTrigEvnt     =  'SED';
    can.RCMStatusMessage.RstrnStatTrigEvnt     =    (bitget(bb(1,:),8))';
    can.RCMStatusMessage.units.PsngrFrntDetct_D_Actl     =  'SED';
    can.RCMStatusMessage.PsngrFrntDetct_D_Actl     =    (bitand(bitshift(bb(4,:),-6),3))' ;
    can.RCMStatusMessage.units.Beltminder_Warn_Stats     =  'SED';
    can.RCMStatusMessage.Beltminder_Warn_Stats     =    (bitget(bb(3,:),7))';
    can.RCMStatusMessage.units.EDRTriggerEvntSync     =  'SED';
    can.RCMStatusMessage.EDRTriggerEvntSync     =    (bitget(bb(6,:),8))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: MassageSeat_Data1_HS
% Hex ID:34A
% Last edited by: selwart
% Date:26-Apr-2011
MSG_34A = hex2dec('34A');

ix=find(msg == MSG_34A);          % Find all message 0x34A's
if ~isempty(ix)                   % If there are any ...
    can.MassageSeat_Data1_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x34A messages
    can.MassageSeat_Data1_HS.nsamples      = length(ix);
    can.MassageSeat_Data1_HS.ctime         = cantime(ix);

    can.MassageSeat_Data1_HS.units.SeatLmbrUpDrv_Pc_Actl     =  'Percent';
    can.MassageSeat_Data1_HS.SeatLmbrUpDrv_Pc_Actl     =    (bitand(bb(5,:),127))' ;
    can.MassageSeat_Data1_HS.units.SeatLmbrMidDrv_Pc_Actl     =  'Percent';
    can.MassageSeat_Data1_HS.SeatLmbrMidDrv_Pc_Actl     =    (bitand(bb(4,:),127))' ;
    can.MassageSeat_Data1_HS.units.SeatLmbrLoDrv_Pc_Actl     =  'Percent';
    can.MassageSeat_Data1_HS.SeatLmbrLoDrv_Pc_Actl     =    (bitand(bb(3,:),127))' ;
    can.MassageSeat_Data1_HS.units.SeatBlUpDrv_Pc_Actl     =  'Percent';
    can.MassageSeat_Data1_HS.SeatBlUpDrv_Pc_Actl     =    (bitand(bb(2,:),127))' ;
    can.MassageSeat_Data1_HS.units.SeatBlLoDrv_Pc_Actl     =  'Percent';
    can.MassageSeat_Data1_HS.SeatBlLoDrv_Pc_Actl     =    (bitand(bb(1,:),127))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: MassageSeat_Data2_HS
% Hex ID:34B
% Last edited by: selwart
% Date:26-Apr-2011
MSG_34B = hex2dec('34B');

ix=find(msg == MSG_34B);          % Find all message 0x34B's
if ~isempty(ix)                   % If there are any ...
    can.MassageSeat_Data2_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x34B messages
    can.MassageSeat_Data2_HS.nsamples      = length(ix);
    can.MassageSeat_Data2_HS.ctime         = cantime(ix);

    can.MassageSeat_Data2_HS.units.SeatLmbrUpPsgr_Pc_Actl     =  'Percent';
    can.MassageSeat_Data2_HS.SeatLmbrUpPsgr_Pc_Actl     =    (bitand(bb(5,:),127))' ;
    can.MassageSeat_Data2_HS.units.SeatLmbrMidPsgr_Pc_Actl     =  'Percent';
    can.MassageSeat_Data2_HS.SeatLmbrMidPsgr_Pc_Actl     =    (bitand(bb(4,:),127))' ;
    can.MassageSeat_Data2_HS.units.SeatLmbrLoPsgr_Pc_Actl     =  'Percent';
    can.MassageSeat_Data2_HS.SeatLmbrLoPsgr_Pc_Actl     =    (bitand(bb(3,:),127))' ;
    can.MassageSeat_Data2_HS.units.SeatBlUpPsgr_Pc_Actl     =  'Percent';
    can.MassageSeat_Data2_HS.SeatBlUpPsgr_Pc_Actl     =    (bitand(bb(2,:),127))' ;
    can.MassageSeat_Data2_HS.units.SeatBlLoPsgr_Pc_Actl     =  'Percent';
    can.MassageSeat_Data2_HS.SeatBlLoPsgr_Pc_Actl     =    (bitand(bb(1,:),127))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: MassageSeat_Stat1_HS
% Hex ID:34C
% Last edited by: selwart
% Date:26-Apr-2011
MSG_34C = hex2dec('34C');

ix=find(msg == MSG_34C);          % Find all message 0x34C's
if ~isempty(ix)                   % If there are any ...
    can.MassageSeat_Stat1_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x34C messages
    can.MassageSeat_Stat1_HS.nsamples      = length(ix);
    can.MassageSeat_Stat1_HS.ctime         = cantime(ix);

    can.MassageSeat_Stat1_HS.units.StmsLmbrDrv_D_Stat     =  'SED';
    can.MassageSeat_Stat1_HS.StmsLmbrDrv_D_Stat     =    (bitand(bb(3,:),3))' ;
    can.MassageSeat_Stat1_HS.units.StmsCshnDrv_D_Stat     =  'SED';
    can.MassageSeat_Stat1_HS.StmsCshnDrv_D_Stat     =    (bitand(bitshift(bb(3,:),-2),3))' ;
    can.MassageSeat_Stat1_HS.units.SeatSwtchDrv_B_Stat     =  'SED';
    can.MassageSeat_Stat1_HS.SeatSwtchDrv_B_Stat     =    (bitget(bb(4,:),8))';
    can.MassageSeat_Stat1_HS.units.SeatFnDrv_D_Stat     =  'SED';
    can.MassageSeat_Stat1_HS.SeatFnDrv_D_Stat     =    (bitand(bitshift(bb(3,:),-5),7))' ;
    can.MassageSeat_Stat1_HS.units.SeatAirAmb_P_Actl     =  'KiloPascal';
    can.MassageSeat_Stat1_HS.SeatAirAmb_P_Actl     =    1.000000e-002*(2^8 * bb(1,:) + bb(2,:))' ;
    can.MassageSeat_Stat1_HS.units.SeatPDrv_B_Stat     =  'SED';
    can.MassageSeat_Stat1_HS.SeatPDrv_B_Stat     =    (bitget(bb(3,:),5))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: MassageSeat_Stat2_HS
% Hex ID:34D
% Last edited by: selwart
% Date:26-Apr-2011
MSG_34D = hex2dec('34D');

ix=find(msg == MSG_34D);          % Find all message 0x34D's
if ~isempty(ix)                   % If there are any ...
    can.MassageSeat_Stat2_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x34D messages
    can.MassageSeat_Stat2_HS.nsamples      = length(ix);
    can.MassageSeat_Stat2_HS.ctime         = cantime(ix);

    can.MassageSeat_Stat2_HS.units.StmsLmbrPsgr_D_Stat     =  'SED';
    can.MassageSeat_Stat2_HS.StmsLmbrPsgr_D_Stat     =    (bitand(bitshift(bb(2,:),-6),3))' ;
    can.MassageSeat_Stat2_HS.units.StmsCshnPsgr_D_Stat     =  'SED';
    can.MassageSeat_Stat2_HS.StmsCshnPsgr_D_Stat     =    (bitand(bitshift(bb(2,:),-4),3))' ;
    can.MassageSeat_Stat2_HS.units.SeatSwtchPsgr_B_Stat     =  'SED';
    can.MassageSeat_Stat2_HS.SeatSwtchPsgr_B_Stat     =    (bitget(bb(2,:),4))';
    can.MassageSeat_Stat2_HS.units.SeatPPsgr_B_Stat     =  'SED';
    can.MassageSeat_Stat2_HS.SeatPPsgr_B_Stat     =    (bitget(bb(1,:),8))';
    can.MassageSeat_Stat2_HS.units.SeatFnPsgr_D_Stat     =  'SED';
    can.MassageSeat_Stat2_HS.SeatFnPsgr_D_Stat     =    (bitand(bitshift(bb(1,:),-4),7))' ;
    can.MassageSeat_Stat2_HS.units.PsgrMemFeedback_Rsp     =  'SED';
    can.MassageSeat_Stat2_HS.PsgrMemFeedback_Rsp     =    (bitand(bb(1,:),15))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: MassageSeat_Req
% Hex ID:34E
% Last edited by: selwart
% Date:26-Apr-2011
MSG_34E = hex2dec('34E');

ix=find(msg == MSG_34E);          % Find all message 0x34E's
if ~isempty(ix)                   % If there are any ...
    can.MassageSeat_Req = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x34E messages
    can.MassageSeat_Req.nsamples      = length(ix);
    can.MassageSeat_Req.ctime         = cantime(ix);

    can.MassageSeat_Req.units.SeatFnPsgr_D_Rq     =  'SED';
    can.MassageSeat_Req.SeatFnPsgr_D_Rq     =    (bitand(bitshift(bb(2,:),-5),7))' ;
    can.MassageSeat_Req.units.SeatFnDrv_D_Rq     =  'SED';
    can.MassageSeat_Req.SeatFnDrv_D_Rq     =    (bitand(bitshift(bb(2,:),-2),7))' ;
    can.MassageSeat_Req.units.SeatFnDfaltPsgr_B_Rq     =  'SED';
    can.MassageSeat_Req.SeatFnDfaltPsgr_B_Rq     =    (bitget(bb(2,:),2))';
    can.MassageSeat_Req.units.SeatFnDfaltDrv_B_Rq     =  'SED';
    can.MassageSeat_Req.SeatFnDfaltDrv_B_Rq     =    (bitget(bb(2,:),1))';
    can.MassageSeat_Req.units.SeatFnChngPsgr_D_Rq     =  'SED';
    can.MassageSeat_Req.SeatFnChngPsgr_D_Rq     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.MassageSeat_Req.units.SeatFnChngDrv_D_Rq     =  'SED';
    can.MassageSeat_Req.SeatFnChngDrv_D_Rq     =    (bitand(bitshift(bb(1,:),-4),3))' ;
    can.MassageSeat_Req.units.PsgrMemory_Rq     =  'SED';
    can.MassageSeat_Req.PsgrMemory_Rq     =    (bitand(bb(1,:),15))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RestraintsData
% Hex ID:350
% Last edited by: selwart
% Date:26-Apr-2011
MSG_350 = hex2dec('350');

ix=find(msg == MSG_350);          % Find all message 0x350's
if ~isempty(ix)                   % If there are any ...
    can.RestraintsData = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x350 messages
    can.RestraintsData.nsamples      = length(ix);
    can.RestraintsData.ctime         = cantime(ix);

    can.RestraintsData.units.PassRstrnInd_Stat_UB     =  'SED';
    can.RestraintsData.PassRstrnInd_Stat_UB     =    (bitget(bb(2,:),2))';
    can.RestraintsData.units.SeatBltWrnChmeStat     =  'SED';
    can.RestraintsData.SeatBltWrnChmeStat     =    (bitget(bb(1,:),2))';
    can.RestraintsData.units.Seatbelt_IndctrStat     =  'SED';
    can.RestraintsData.Seatbelt_IndctrStat     =    (bitand(bitshift(bb(1,:),-2),7))' ;
    can.RestraintsData.units.RILStat     =  'SED';
    can.RestraintsData.RILStat     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.RestraintsData.units.PassRstrnInd_Stat     =  'SED';
    can.RestraintsData.PassRstrnInd_Stat     =    (bitand(bitshift(bb(2,:),-4),15))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: MassageSeat_Data3_HS
% Hex ID:351
% Last edited by: selwart
% Date:26-Apr-2011
MSG_351 = hex2dec('351');

ix=find(msg == MSG_351);          % Find all message 0x351's
if ~isempty(ix)                   % If there are any ...
    can.MassageSeat_Data3_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x351 messages
    can.MassageSeat_Data3_HS.nsamples      = length(ix);
    can.MassageSeat_Data3_HS.ctime         = cantime(ix);

    can.MassageSeat_Data3_HS.units.SeatCshnDrvRR_Pc_Actl     =  'Percent';
    can.MassageSeat_Data3_HS.SeatCshnDrvRR_Pc_Actl     =    (bitand(bb(4,:),127))' ;
    can.MassageSeat_Data3_HS.units.SeatCshnDrvRL_Pc_Actl     =  'Percent';
    can.MassageSeat_Data3_HS.SeatCshnDrvRL_Pc_Actl     =    (bitand(bb(3,:),127))' ;
    can.MassageSeat_Data3_HS.units.SeatCshnDrvFR_Pc_Actl     =  'Percent';
    can.MassageSeat_Data3_HS.SeatCshnDrvFR_Pc_Actl     =    (bitand(bb(2,:),127))' ;
    can.MassageSeat_Data3_HS.units.SeatCshnDrvFL_Pc_Actl     =  'Percent';
    can.MassageSeat_Data3_HS.SeatCshnDrvFL_Pc_Actl     =    (bitand(bb(1,:),127))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: MassageSeat_Data4_HS
% Hex ID:352
% Last edited by: selwart
% Date:26-Apr-2011
MSG_352 = hex2dec('352');

ix=find(msg == MSG_352);          % Find all message 0x352's
if ~isempty(ix)                   % If there are any ...
    can.MassageSeat_Data4_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x352 messages
    can.MassageSeat_Data4_HS.nsamples      = length(ix);
    can.MassageSeat_Data4_HS.ctime         = cantime(ix);

    can.MassageSeat_Data4_HS.units.SeatCshnPsgrRR_Pc_Actl     =  'Percent';
    can.MassageSeat_Data4_HS.SeatCshnPsgrRR_Pc_Actl     =    (bitand(bb(4,:),127))' ;
    can.MassageSeat_Data4_HS.units.SeatCshnPsgrRL_Pc_Actl     =  'Percent';
    can.MassageSeat_Data4_HS.SeatCshnPsgrRL_Pc_Actl     =    (bitand(bb(3,:),127))' ;
    can.MassageSeat_Data4_HS.units.SeatCshnPsgrFR_Pc_Actl     =  'Percent';
    can.MassageSeat_Data4_HS.SeatCshnPsgrFR_Pc_Actl     =    (bitand(bb(2,:),127))' ;
    can.MassageSeat_Data4_HS.units.SeatCshnPsgrFL_Pc_Actl     =  'Percent';
    can.MassageSeat_Data4_HS.SeatCshnPsgrFL_Pc_Actl     =    (bitand(bb(1,:),127))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EFP_CC_Status
% Hex ID:355
% Last edited by: selwart
% Date:26-Apr-2011
MSG_355 = hex2dec('355');

ix=find(msg == MSG_355);          % Find all message 0x355's
if ~isempty(ix)                   % If there are any ...
    can.EFP_CC_Status = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x355 messages
    can.EFP_CC_Status.nsamples      = length(ix);
    can.EFP_CC_Status.ctime         = cantime(ix);

    can.EFP_CC_Status.units.Save_My_Temp     =  'SED';
    can.EFP_CC_Status.Save_My_Temp     =    (bitget(bb(8,:),4))';
    can.EFP_CC_Status.units.Front_Left_Temp_Setpt     =  'Mixed';
    can.EFP_CC_Status.Front_Left_Temp_Setpt     =    (bb(4,:))' ;
    can.EFP_CC_Status.units.RrDefrost_HtdMirrorReq     =  'SED';
    can.EFP_CC_Status.RrDefrost_HtdMirrorReq     =    (bitget(bb(8,:),5))';
    can.EFP_CC_Status.units.Rear_Control_Status     =  'SED';
    can.EFP_CC_Status.Rear_Control_Status     =    (bitget(bb(3,:),1))';
    can.EFP_CC_Status.units.MultipleButtonPressReq     =  'SED';
    can.EFP_CC_Status.MultipleButtonPressReq     =    (bitand(bitshift(bb(8,:),-5),7))' ;
    can.EFP_CC_Status.units.Rear_System_Mode_Req     =  'SED';
    can.EFP_CC_Status.Rear_System_Mode_Req     =    (bitand(bitshift(bb(3,:),-1),7))' ;
    can.EFP_CC_Status.units.Rear_Left_Temp_Setpt     =  'Mixed';
    can.EFP_CC_Status.Rear_Left_Temp_Setpt     =    (bb(6,:))' ;
    can.EFP_CC_Status.units.Recirc_Request     =  'SED';
    can.EFP_CC_Status.Recirc_Request     =    (bitand(bitshift(bb(3,:),-6),3))' ;
    can.EFP_CC_Status.units.Front_Rt_Temp_Setpt     =  'Mixed';
    can.EFP_CC_Status.Front_Rt_Temp_Setpt     =    (bb(5,:))' ;
    can.EFP_CC_Status.units.AC_Request     =  'SED';
    can.EFP_CC_Status.AC_Request     =    (bitand(bitshift(bb(3,:),-4),3))' ;
    can.EFP_CC_Status.units.Windshield_ModeRequest     =  '%';
    can.EFP_CC_Status.Windshield_ModeRequest     =    8.330000e+000*(bitand(bitshift(bb(2,:),-4),15))' ;
    can.EFP_CC_Status.units.Panel_Mode_Request     =  '%';
    can.EFP_CC_Status.Panel_Mode_Request     =    8.330000e+000*(bitand(bitshift(bb(1,:),-4),15))' ;
    can.EFP_CC_Status.units.Overriding_ModeReq     =  'SED';
    can.EFP_CC_Status.Overriding_ModeReq     =    (bitand(bb(2,:),7))' ;
    can.EFP_CC_Status.units.Forced_Recirc_Req     =  'SED';
    can.EFP_CC_Status.Forced_Recirc_Req     =    (bitget(bb(2,:),4))';
    can.EFP_CC_Status.units.Floor_Mode_Request     =  '%';
    can.EFP_CC_Status.Floor_Mode_Request     =    8.330000e+000*(bitand(bb(1,:),15))' ;
    can.EFP_CC_Status.units.Rear_Right_Temp_Setpt     =  'Mixed';
    can.EFP_CC_Status.Rear_Right_Temp_Setpt     =    (bb(7,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EFP_CC_Seat_Req_Stat
% Hex ID:356
% Last edited by: selwart
% Date:26-Apr-2011
MSG_356 = hex2dec('356');

ix=find(msg == MSG_356);          % Find all message 0x356's
if ~isempty(ix)                   % If there are any ...
    can.EFP_CC_Seat_Req_Stat = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x356 messages
    can.EFP_CC_Seat_Req_Stat.nsamples      = length(ix);
    can.EFP_CC_Seat_Req_Stat.ctime         = cantime(ix);

    can.EFP_CC_Seat_Req_Stat.units.Front_Rear_Blower_Req     =  'Detents';
    can.EFP_CC_Seat_Req_Stat.Front_Rear_Blower_Req     =    (bitand(bitshift(bb(4,:),-2),63))' ;
    can.EFP_CC_Seat_Req_Stat.units.Pass_Rr_Cond_Seat_Req     =  'SED';
    can.EFP_CC_Seat_Req_Stat.Pass_Rr_Cond_Seat_Req     =    (bitand(bitshift(bb(3,:),-4),3))' ;
    can.EFP_CC_Seat_Req_Stat.units.Pass_Rr_Cond_Seat_Lvl     =  'SED';
    can.EFP_CC_Seat_Req_Stat.Pass_Rr_Cond_Seat_Lvl     =    (2^2 * bitand(bb(2,:),1) + bitand(bitshift(bb(3,:),-6),3))' ;
    can.EFP_CC_Seat_Req_Stat.units.Pass_Fr_Cond_Seat_Req     =  'SED';
    can.EFP_CC_Seat_Req_Stat.Pass_Fr_Cond_Seat_Req     =    (bitand(bitshift(bb(2,:),-4),3))' ;
    can.EFP_CC_Seat_Req_Stat.units.Pass_Fr_Cond_Seat_Lvl     =  'SED';
    can.EFP_CC_Seat_Req_Stat.Pass_Fr_Cond_Seat_Lvl     =    (bitand(bitshift(bb(2,:),-1),7))' ;
    can.EFP_CC_Seat_Req_Stat.units.Drvr_Rr_Cond_Seat_Req     =  'SED';
    can.EFP_CC_Seat_Req_Stat.Drvr_Rr_Cond_Seat_Req     =    (bitand(bitshift(bb(2,:),-6),3))' ;
    can.EFP_CC_Seat_Req_Stat.units.Drvr_Rr_Cond_Seat_Lvl     =  'SED';
    can.EFP_CC_Seat_Req_Stat.Drvr_Rr_Cond_Seat_Lvl     =    (bitand(bb(1,:),7))' ;
    can.EFP_CC_Seat_Req_Stat.units.Drvr_Fr_Cond_Seat_Req     =  'SED';
    can.EFP_CC_Seat_Req_Stat.Drvr_Fr_Cond_Seat_Req     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.EFP_CC_Seat_Req_Stat.units.Drvr_Fr_Cond_Seat_Lvl     =  'SED';
    can.EFP_CC_Seat_Req_Stat.Drvr_Fr_Cond_Seat_Lvl     =    (bitand(bitshift(bb(1,:),-3),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RCCM_CC_Status_HS
% Hex ID:357
% Last edited by: selwart
% Date:26-Apr-2011
MSG_357 = hex2dec('357');

ix=find(msg == MSG_357);          % Find all message 0x357's
if ~isempty(ix)                   % If there are any ...
    can.RCCM_CC_Status_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x357 messages
    can.RCCM_CC_Status_HS.nsamples      = length(ix);
    can.RCCM_CC_Status_HS.ctime         = cantime(ix);

    can.RCCM_CC_Status_HS.units.RrBlwrCondStLdShedStat     =  'SED';
    can.RCCM_CC_Status_HS.RrBlwrCondStLdShedStat     =    (bitand(bb(4,:),3))' ;
    can.RCCM_CC_Status_HS.units.FrBlwrCondStLdShedStat     =  'SED';
    can.RCCM_CC_Status_HS.FrBlwrCondStLdShedStat     =    (bitand(bitshift(bb(3,:),-3),3))' ;
    can.RCCM_CC_Status_HS.units.RCCM_Rr_Rt_TempSetpt     =  'Mixed';
    can.RCCM_CC_Status_HS.RCCM_Rr_Rt_TempSetpt     =    (bb(8,:))' ;
    can.RCCM_CC_Status_HS.units.RCCM_Rr_Left_TempSetpt     =  'Mixed';
    can.RCCM_CC_Status_HS.RCCM_Rr_Left_TempSetpt     =    (bb(7,:))' ;
    can.RCCM_CC_Status_HS.units.RCCM_Fr_Rt_TempSetpt     =  'Mixed';
    can.RCCM_CC_Status_HS.RCCM_Fr_Rt_TempSetpt     =    (bb(6,:))' ;
    can.RCCM_CC_Status_HS.units.RCCM_Fr_Rr_Blower_Req     =  'Detents';
    can.RCCM_CC_Status_HS.RCCM_Fr_Rr_Blower_Req     =    (bitand(bitshift(bb(4,:),-2),63))' ;
    can.RCCM_CC_Status_HS.units.Panel_Mode_State     =  '%';
    can.RCCM_CC_Status_HS.Panel_Mode_State     =    8.330000e+000*(bitand(bitshift(bb(1,:),-4),15))' ;
    can.RCCM_CC_Status_HS.units.RrDefHtdMirrLdShedStat     =  'SED';
    can.RCCM_CC_Status_HS.RrDefHtdMirrLdShedStat     =    (bitand(bitshift(bb(3,:),-1),3))' ;
    can.RCCM_CC_Status_HS.units.Windshield_Mode_State     =  '%';
    can.RCCM_CC_Status_HS.Windshield_Mode_State     =    8.330000e+000*(bitand(bitshift(bb(2,:),-4),15))' ;
    can.RCCM_CC_Status_HS.units.Recirc_Door_State     =  'SED';
    can.RCCM_CC_Status_HS.Recirc_Door_State     =    (bitand(bitshift(bb(2,:),-2),3))' ;
    can.RCCM_CC_Status_HS.units.Rear_System_Mode_State     =  'SED';
    can.RCCM_CC_Status_HS.Rear_System_Mode_State     =    (bitand(bitshift(bb(3,:),-5),7))' ;
    can.RCCM_CC_Status_HS.units.Default_Defrost_State     =  'SED';
    can.RCCM_CC_Status_HS.Default_Defrost_State     =    (bitget(bb(2,:),2))';
    can.RCCM_CC_Status_HS.units.Auto_AC_Indicator_Temp     =  'SED';
    can.RCCM_CC_Status_HS.Auto_AC_Indicator_Temp     =    (bitget(bb(3,:),1))';
    can.RCCM_CC_Status_HS.units.Floor_Mode_State     =  '%';
    can.RCCM_CC_Status_HS.Floor_Mode_State     =    8.330000e+000*(bitand(bb(1,:),15))' ;
    can.RCCM_CC_Status_HS.units.RCCM_Fr_Left_TempSetpt     =  'Mixed';
    can.RCCM_CC_Status_HS.RCCM_Fr_Left_TempSetpt     =    (bb(5,:))' ;
    can.RCCM_CC_Status_HS.units.RrDefrost_HtdMirrState     =  'SED';
    can.RCCM_CC_Status_HS.RrDefrost_HtdMirrState     =    (bitget(bb(2,:),1))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RCCM_CC_Seat_Status_HS
% Hex ID:358
% Last edited by: selwart
% Date:26-Apr-2011
MSG_358 = hex2dec('358');

ix=find(msg == MSG_358);          % Find all message 0x358's
if ~isempty(ix)                   % If there are any ...
    can.RCCM_CC_Seat_Status_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x358 messages
    can.RCCM_CC_Seat_Status_HS.nsamples      = length(ix);
    can.RCCM_CC_Seat_Status_HS.ctime         = cantime(ix);

    can.RCCM_CC_Seat_Status_HS.units.Active_My_Temp     =  'SED';
    can.RCCM_CC_Seat_Status_HS.Active_My_Temp     =    (bitget(bb(1,:),3))';
    can.RCCM_CC_Seat_Status_HS.units.CC_HtdStrWhl_Req     =  'SED';
    can.RCCM_CC_Seat_Status_HS.CC_HtdStrWhl_Req     =    (bitget(bb(4,:),1))';
    can.RCCM_CC_Seat_Status_HS.units.RCCM_PR_Cond_Seat_Lvl     =  'SED';
    can.RCCM_CC_Seat_Status_HS.RCCM_PR_Cond_Seat_Lvl     =    (bitand(bitshift(bb(4,:),-5),7))' ;
    can.RCCM_CC_Seat_Status_HS.units.RCCM_PR_Cond_Seat_Req     =  'SED';
    can.RCCM_CC_Seat_Status_HS.RCCM_PR_Cond_Seat_Req     =    (bitand(bitshift(bb(4,:),-3),3))' ;
    can.RCCM_CC_Seat_Status_HS.units.RCCM_PF_Cond_Seat_Req     =  'SED';
    can.RCCM_CC_Seat_Status_HS.RCCM_PF_Cond_Seat_Req     =    (bitand(bitshift(bb(3,:),-3),3))' ;
    can.RCCM_CC_Seat_Status_HS.units.RCCM_PF_Cond_Seat_Lvl     =  'SED';
    can.RCCM_CC_Seat_Status_HS.RCCM_PF_Cond_Seat_Lvl     =    (bitand(bitshift(bb(3,:),-5),7))' ;
    can.RCCM_CC_Seat_Status_HS.units.RCCM_DR_Cond_Seat_Req     =  'SED';
    can.RCCM_CC_Seat_Status_HS.RCCM_DR_Cond_Seat_Req     =    (bitand(bitshift(bb(2,:),-3),3))' ;
    can.RCCM_CC_Seat_Status_HS.units.RCCM_DR_Cond_Seat_Lvl     =  'SED';
    can.RCCM_CC_Seat_Status_HS.RCCM_DR_Cond_Seat_Lvl     =    (bitand(bitshift(bb(2,:),-5),7))' ;
    can.RCCM_CC_Seat_Status_HS.units.RCCM_DF_Cond_Seat_Req     =  'SED';
    can.RCCM_CC_Seat_Status_HS.RCCM_DF_Cond_Seat_Req     =    (bitand(bitshift(bb(1,:),-3),3))' ;
    can.RCCM_CC_Seat_Status_HS.units.RCCM_DF_Cond_Seat_Lvl     =  'SED';
    can.RCCM_CC_Seat_Status_HS.RCCM_DF_Cond_Seat_Lvl     =    (bitand(bitshift(bb(1,:),-5),7))' ;
    can.RCCM_CC_Seat_Status_HS.units.PassRrCondStLdShedStat     =  'SED';
    can.RCCM_CC_Seat_Status_HS.PassRrCondStLdShedStat     =    (bitand(bitshift(bb(4,:),-1),3))' ;
    can.RCCM_CC_Seat_Status_HS.units.PassFrCondStLdShedStat     =  'SED';
    can.RCCM_CC_Seat_Status_HS.PassFrCondStLdShedStat     =    (bitand(bitshift(bb(3,:),-1),3))' ;
    can.RCCM_CC_Seat_Status_HS.units.DrvRrCondStLdShedStat     =  'SED';
    can.RCCM_CC_Seat_Status_HS.DrvRrCondStLdShedStat     =    (bitand(bitshift(bb(2,:),-1),3))' ;
    can.RCCM_CC_Seat_Status_HS.units.DrvFrCondStLdShedStat     =  'SED';
    can.RCCM_CC_Seat_Status_HS.DrvFrCondStLdShedStat     =    (bitand(bb(1,:),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RCCM_CC_MBP_Press_Stat_HS
% Hex ID:359
% Last edited by: selwart
% Date:26-Apr-2011
MSG_359 = hex2dec('359');

ix=find(msg == MSG_359);          % Find all message 0x359's
if ~isempty(ix)                   % If there are any ...
    can.RCCM_CC_MBP_Press_Stat_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x359 messages
    can.RCCM_CC_MBP_Press_Stat_HS.nsamples      = length(ix);
    can.RCCM_CC_MBP_Press_Stat_HS.ctime         = cantime(ix);

    can.RCCM_CC_MBP_Press_Stat_HS.units.MultBtnPushDsplyPass10     =  'Unitless';
    can.RCCM_CC_MBP_Press_Stat_HS.MultBtnPushDsplyPass10     =    (bb(3,:))' ;
    can.RCCM_CC_MBP_Press_Stat_HS.units.MultBtnPushDsplyPass1     =  'Unitless';
    can.RCCM_CC_MBP_Press_Stat_HS.MultBtnPushDsplyPass1     =    (bb(4,:))' ;
    can.RCCM_CC_MBP_Press_Stat_HS.units.Report_Active     =  'SED';
    can.RCCM_CC_MBP_Press_Stat_HS.Report_Active     =    (bitand(bb(5,:),3))' ;
    can.RCCM_CC_MBP_Press_Stat_HS.units.Pass_Temp_Units     =  'SED';
    can.RCCM_CC_MBP_Press_Stat_HS.Pass_Temp_Units     =    (bitget(bb(5,:),4))';
    can.RCCM_CC_MBP_Press_Stat_HS.units.Front_Fan_Bars_Disply     =  'SED';
    can.RCCM_CC_MBP_Press_Stat_HS.Front_Fan_Bars_Disply     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.RCCM_CC_MBP_Press_Stat_HS.units.Drvr_Temp_Units     =  'SED';
    can.RCCM_CC_MBP_Press_Stat_HS.Drvr_Temp_Units     =    (bitget(bb(5,:),5))';
    can.RCCM_CC_MBP_Press_Stat_HS.units.MultBtnPushDsplyDrvr10     =  'Unitless';
    can.RCCM_CC_MBP_Press_Stat_HS.MultBtnPushDsplyDrvr10     =    (bb(1,:))' ;
    can.RCCM_CC_MBP_Press_Stat_HS.units.MultBtnPushDsplyDrvr1     =  'Unitless';
    can.RCCM_CC_MBP_Press_Stat_HS.MultBtnPushDsplyDrvr1     =    (bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: MFD_CC_Status_HS
% Hex ID:35B
% Last edited by: selwart
% Date:26-Apr-2011
MSG_35B = hex2dec('35B');

ix=find(msg == MSG_35B);          % Find all message 0x35B's
if ~isempty(ix)                   % If there are any ...
    can.MFD_CC_Status_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x35B messages
    can.MFD_CC_Status_HS.nsamples      = length(ix);
    can.MFD_CC_Status_HS.ctime         = cantime(ix);

    can.MFD_CC_Status_HS.units.Rear_Mode_Bttn_Status     =  'SED';
    can.MFD_CC_Status_HS.Rear_Mode_Bttn_Status     =    (bitget(bb(5,:),7))';
    can.MFD_CC_Status_HS.units.ConditionSt_ButtonStat     =  'SED';
    can.MFD_CC_Status_HS.ConditionSt_ButtonStat     =    (bitand(bb(3,:),31))' ;
    can.MFD_CC_Status_HS.units.Driver_Set_Temp     =  'Degrees';
    can.MFD_CC_Status_HS.Driver_Set_Temp     =    5.000000e-001*(bb(4,:))' ;
    can.MFD_CC_Status_HS.units.Frt_System_Button_Stat     =  'SED';
    can.MFD_CC_Status_HS.Frt_System_Button_Stat     =    (bitand(bitshift(bb(1,:),-3),31))' ;
    can.MFD_CC_Status_HS.units.Rear_Blower_Bar_Status     =  '# of Bars';
    can.MFD_CC_Status_HS.Rear_Blower_Bar_Status     =    (bitand(bb(1,:),7))' ;
    can.MFD_CC_Status_HS.units.Rear_Fan_Button_Status     =  'SED';
    can.MFD_CC_Status_HS.Rear_Fan_Button_Status     =    (bitand(bitshift(bb(2,:),-4),3))' ;
    can.MFD_CC_Status_HS.units.Rear_Man_Temp_Bar_Stat     =  'SED';
    can.MFD_CC_Status_HS.Rear_Man_Temp_Bar_Stat     =    (bitand(bb(2,:),15))' ;
    can.MFD_CC_Status_HS.units.Rear_Temp_Button_Status     =  'SED';
    can.MFD_CC_Status_HS.Rear_Temp_Button_Status     =    (bitand(bitshift(bb(3,:),-6),3))' ;
    can.MFD_CC_Status_HS.units.Voice_Blower_Limit     =  'SED';
    can.MFD_CC_Status_HS.Voice_Blower_Limit     =    (bitget(bb(3,:),6))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: EFP_CC_Info_Status
% Hex ID:35C
% Last edited by: selwart
% Date:26-Apr-2011
MSG_35C = hex2dec('35C');

ix=find(msg == MSG_35C);          % Find all message 0x35C's
if ~isempty(ix)                   % If there are any ...
    can.EFP_CC_Info_Status = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x35C messages
    can.EFP_CC_Info_Status.nsamples      = length(ix);
    can.EFP_CC_Info_Status.ctime         = cantime(ix);

    can.EFP_CC_Info_Status.units.Rear_Panel_Btn_State     =  'SED';
    can.EFP_CC_Info_Status.Rear_Panel_Btn_State     =    (bitget(bb(6,:),2))';
    can.EFP_CC_Info_Status.units.Rear_Floor_Btn_State     =  'SED';
    can.EFP_CC_Info_Status.Rear_Floor_Btn_State     =    (bitget(bb(6,:),1))';
    can.EFP_CC_Info_Status.units.HtdStrWhl_SftBtt_Stt     =  'SED';
    can.EFP_CC_Info_Status.HtdStrWhl_SftBtt_Stt     =    (bitand(bitshift(bb(5,:),-6),3))' ;
    can.EFP_CC_Info_Status.units.AC_Sft_Button_State     =  'SED';
    can.EFP_CC_Info_Status.AC_Sft_Button_State     =    (bitand(bitshift(bb(3,:),-6),3))' ;
    can.EFP_CC_Info_Status.units.DrvRrCondSeatSftBttnSt     =  'SED';
    can.EFP_CC_Info_Status.DrvRrCondSeatSftBttnSt     =    (bitand(bitshift(bb(6,:),-5),7))' ;
    can.EFP_CC_Info_Status.units.DrvFrCondSeatSftBtnStt     =  'SED';
    can.EFP_CC_Info_Status.DrvFrCondSeatSftBtnStt     =    (bitand(bitshift(bb(5,:),-3),7))' ;
    can.EFP_CC_Info_Status.units.CC_RecircSBtn_St     =  'SED';
    can.EFP_CC_Info_Status.CC_RecircSBtn_St     =    (bitand(bitshift(bb(4,:),-2),3))' ;
    can.EFP_CC_Info_Status.units.CC_RrDefrSBtn_St     =  'SED';
    can.EFP_CC_Info_Status.CC_RrDefrSBtn_St     =    (bitget(bb(4,:),1))';
    can.EFP_CC_Info_Status.units.PasRrCondSeatSftBttnSt     =  'SED';
    can.EFP_CC_Info_Status.PasRrCondSeatSftBttnSt     =    (bitand(bitshift(bb(6,:),-2),7))' ;
    can.EFP_CC_Info_Status.units.PasFrCondSeatSftBtnStt     =  'SED';
    can.EFP_CC_Info_Status.PasFrCondSeatSftBtnStt     =    (bitand(bb(5,:),7))' ;
    can.EFP_CC_Info_Status.units.MyTemp_Soft_Bttn_State     =  'SED';
    can.EFP_CC_Info_Status.MyTemp_Soft_Bttn_State     =    (bitget(bb(4,:),2))';
    can.EFP_CC_Info_Status.units.CC_MaxACSBtn_St     =  'SED';
    can.EFP_CC_Info_Status.CC_MaxACSBtn_St     =    (bitget(bb(4,:),5))';
    can.EFP_CC_Info_Status.units.RearPowerButtonState     =  'SED';
    can.EFP_CC_Info_Status.RearPowerButtonState     =    (bitget(bb(3,:),1))';
    can.EFP_CC_Info_Status.units.RearCoolBarsDisplayed     =  'Bars_On';
    can.EFP_CC_Info_Status.RearCoolBarsDisplayed     =    (bitand(bitshift(bb(2,:),-1),7))' ;
    can.EFP_CC_Info_Status.units.Rear_Sft_Control_Stat     =  'SED';
    can.EFP_CC_Info_Status.Rear_Sft_Control_Stat     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.EFP_CC_Info_Status.units.CC_RrNeutralBarDsp_St     =  'SED';
    can.EFP_CC_Info_Status.CC_RrNeutralBarDsp_St     =    (bitget(bb(2,:),1))';
    can.EFP_CC_Info_Status.units.CC_RrHeatBarsDsp_St     =  'Bars_On';
    can.EFP_CC_Info_Status.CC_RrHeatBarsDsp_St     =    (bitand(bitshift(bb(4,:),-5),7))' ;
    can.EFP_CC_Info_Status.units.Rear_Fan_Bars_Displayed     =  'SED';
    can.EFP_CC_Info_Status.Rear_Fan_Bars_Displayed     =    (bitand(bitshift(bb(3,:),-1),7))' ;
    can.EFP_CC_Info_Status.units.CC_RrCtrlBtn_St     =  'SED';
    can.EFP_CC_Info_Status.CC_RrCtrlBtn_St     =    (bitget(bb(3,:),5))';
    can.EFP_CC_Info_Status.units.Rear_Auto_Button_State     =  'SED';
    can.EFP_CC_Info_Status.Rear_Auto_Button_State     =    (bitget(bb(3,:),6))';
    can.EFP_CC_Info_Status.units.CC_FrPowerSBtn_St     =  'SED';
    can.EFP_CC_Info_Status.CC_FrPowerSBtn_St     =    (bitget(bb(2,:),7))';
    can.EFP_CC_Info_Status.units.CC_FrDefrostSBtn_St     =  'SED';
    can.EFP_CC_Info_Status.CC_FrDefrostSBtn_St     =    (bitget(bb(2,:),8))';
    can.EFP_CC_Info_Status.units.Front_AUTO_Soft_Btn_Stt     =  'SED';
    can.EFP_CC_Info_Status.Front_AUTO_Soft_Btn_Stt     =    (bitget(bb(2,:),6))';
    can.EFP_CC_Info_Status.units.Front_AUTO_MODE_State     =  'SED';
    can.EFP_CC_Info_Status.Front_AUTO_MODE_State     =    (bitget(bb(1,:),2))';
    can.EFP_CC_Info_Status.units.Front_AUTO_FAN_State     =  'SED';
    can.EFP_CC_Info_Status.Front_AUTO_FAN_State     =    (bitget(bb(1,:),1))';
    can.EFP_CC_Info_Status.units.Dual_Button_State     =  'SED';
    can.EFP_CC_Info_Status.Dual_Button_State     =    (bitget(bb(2,:),5))';
    can.EFP_CC_Info_Status.units.CC_BarPnlSBtn_St     =  'SED';
    can.EFP_CC_Info_Status.CC_BarPnlSBtn_St     =    (bitget(bb(1,:),6))';
    can.EFP_CC_Info_Status.units.CC_BarPnFlrSBtn_St     =  'SED';
    can.EFP_CC_Info_Status.CC_BarPnFlrSBtn_St     =    (bitget(bb(1,:),5))';
    can.EFP_CC_Info_Status.units.CC_BarFlrWsSBtn_St     =  'SED';
    can.EFP_CC_Info_Status.CC_BarFlrWsSBtn_St     =    (bitget(bb(1,:),3))';
    can.EFP_CC_Info_Status.units.CC_BarDrvFlrSBtn_St     =  'SED';
    can.EFP_CC_Info_Status.CC_BarDrvFlrSBtn_St     =    (bitget(bb(1,:),4))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Active_Noise
% Hex ID:37A
% Last edited by: selwart
% Date:26-Apr-2011
MSG_37A = hex2dec('37A');

ix=find(msg == MSG_37A);          % Find all message 0x37A's
if ~isempty(ix)                   % If there are any ...
    can.Active_Noise = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x37A messages
    can.Active_Noise.nsamples      = length(ix);
    can.Active_Noise.ctime         = cantime(ix);

    can.Active_Noise.units.ANC_Chime_Supported     =  'SED';
    can.Active_Noise.ANC_Chime_Supported     =    (bitand(bitshift(bb(1,:),-3),3))' ;
    can.Active_Noise.units.ActvNseAudio_D_Stat     =  'SED';
    can.Active_Noise.ActvNseAudio_D_Stat     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.Active_Noise.units.ActvNse_B_Actv     =  'SED';
    can.Active_Noise.ActvNse_B_Actv     =    (bitget(bb(1,:),6))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Active_Noise_Data
% Hex ID:37B
% Last edited by: selwart
% Date:26-Apr-2011
MSG_37B = hex2dec('37B');

ix=find(msg == MSG_37B);          % Find all message 0x37B's
if ~isempty(ix)                   % If there are any ...
    can.Active_Noise_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x37B messages
    can.Active_Noise_Data.nsamples      = length(ix);
    can.Active_Noise_Data.ctime         = cantime(ix);

    can.Active_Noise_Data.units.CabnSndAmb_Db_Actl     =  'decibel';
    can.Active_Noise_Data.CabnSndAmb_Db_Actl     =    (bb(1,:))' +30.00;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Body_Information_1
% Hex ID:38A
% Last edited by: selwart
% Date:26-Apr-2011
MSG_38A = hex2dec('38A');

ix=find(msg == MSG_38A);          % Find all message 0x38A's
if ~isempty(ix)                   % If there are any ...
    can.Body_Information_1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x38A messages
    can.Body_Information_1.nsamples      = length(ix);
    can.Body_Information_1.ctime         = cantime(ix);

    can.Body_Information_1.units.CcdMde_D_Rq_UB     =  '';
    can.Body_Information_1.CcdMde_D_Rq_UB     =    (bitget(bb(1,:),1))';
    can.Body_Information_1.units.CcdMde_D_Rq     =  'SED';
    can.Body_Information_1.CcdMde_D_Rq     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.Body_Information_1.units.CarMode     =  'SED';
    can.Body_Information_1.CarMode     =    (bitand(bitshift(bb(1,:),-2),15))' ;
    can.Body_Information_1.units.SecondaryHeater_Rqst     =  'SED';
    can.Body_Information_1.SecondaryHeater_Rqst     =    (bitget(bb(7,:),8))';
    can.Body_Information_1.units.Passenger_Sunload_Raw     =  'W/m^2';
    can.Body_Information_1.Passenger_Sunload_Raw     =    5.000000e+000*(bb(6,:))' ;
    can.Body_Information_1.units.Driver_Sunload_Raw     =  'W/m^2';
    can.Body_Information_1.Driver_Sunload_Raw     =    5.000000e+000*(bb(5,:))' ;
    can.Body_Information_1.units.HvacEvap_Te_Actl_UB     =  'SED';
    can.Body_Information_1.HvacEvap_Te_Actl_UB     =    (bitget(bb(1,:),2))';
    can.Body_Information_1.units.HvacEvap_Te_Actl     =  'Degrees C';
    can.Body_Information_1.HvacEvap_Te_Actl     =    1.250000e-001*(2^8 * bitand(bb(3,:),3) + bb(4,:))' +-50.00;
    can.Body_Information_1.units.SecondaryHeater_Rqst_UB     =  'SED';
    can.Body_Information_1.SecondaryHeater_Rqst_UB     =    (bitget(bb(3,:),3))';
    can.Body_Information_1.units.Outside_Air_Temp_Stat_UB     =  'SED';
    can.Body_Information_1.Outside_Air_Temp_Stat_UB     =    (bitget(bb(3,:),8))';
    can.Body_Information_1.units.Outside_Air_Temp_Stat     =  'Degrees C';
    can.Body_Information_1.Outside_Air_Temp_Stat     =    5.000000e-001*(bb(2,:))' +-40.00;
    can.Body_Information_1.units.Veh_Lock_Status     =  'SED';
    can.Body_Information_1.Veh_Lock_Status     =    (bitand(bitshift(bb(7,:),-5),3))' ;
    can.Body_Information_1.units.Veh_Lock_Requestor     =  'SED';
    can.Body_Information_1.Veh_Lock_Requestor     =    (bitand(bb(7,:),31))' ;
    can.Body_Information_1.units.Veh_Lock_EvNum     =  'Counts';
    can.Body_Information_1.Veh_Lock_EvNum     =    (bb(8,:))' ;
    can.Body_Information_1.units.immoIndicatorCmd     =  'SED';
    can.Body_Information_1.immoIndicatorCmd     =    (bitand(bitshift(bb(3,:),-3),15))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Body_Information_6
% Hex ID:38D
% Last edited by: selwart
% Date:26-Apr-2011
MSG_38D = hex2dec('38D');

ix=find(msg == MSG_38D);          % Find all message 0x38D's
if ~isempty(ix)                   % If there are any ...
    can.Body_Information_6 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x38D messages
    can.Body_Information_6.nsamples      = length(ix);
    can.Body_Information_6.ctime         = cantime(ix);

    can.Body_Information_6.units.PEBackupSlot_Stats_UB     =  'SED';
    can.Body_Information_6.PEBackupSlot_Stats_UB     =    (bitget(bb(6,:),4))';
    can.Body_Information_6.units.PEBackupSlot_Stats     =  'SED';
    can.Body_Information_6.PEBackupSlot_Stats     =    (bitand(bb(4,:),3))' ;
    can.Body_Information_6.units.KeyMykeyTot_No_Cnt     =  'Counts';
    can.Body_Information_6.KeyMykeyTot_No_Cnt     =    (bitand(bitshift(bb(6,:),-4),15))' ;
    can.Body_Information_6.units.SideDetect_R_SysOpState_UB     =  'SED';
    can.Body_Information_6.SideDetect_R_SysOpState_UB     =    (bitget(bb(4,:),3))';
    can.Body_Information_6.units.SideDetect_R_SysOpState     =  'SED';
    can.Body_Information_6.SideDetect_R_SysOpState     =    (bitand(bitshift(bb(4,:),-3),3))' ;
    can.Body_Information_6.units.SideDetect_R_SnsrState_UB     =  'SED';
    can.Body_Information_6.SideDetect_R_SnsrState_UB     =    (bitget(bb(4,:),6))';
    can.Body_Information_6.units.SideDetect_R_SnsrState     =  'SED';
    can.Body_Information_6.SideDetect_R_SnsrState     =    (bitand(bitshift(bb(4,:),-6),3))' ;
    can.Body_Information_6.units.SideDetect_L_SysOpState_UB     =  'SED';
    can.Body_Information_6.SideDetect_L_SysOpState_UB     =    (bitget(bb(3,:),1))';
    can.Body_Information_6.units.SideDetect_L_SysOpState     =  'SED';
    can.Body_Information_6.SideDetect_L_SysOpState     =    (bitand(bitshift(bb(3,:),-1),3))' ;
    can.Body_Information_6.units.SideDetect_L_SnsrState_UB     =  'SED';
    can.Body_Information_6.SideDetect_L_SnsrState_UB     =    (bitget(bb(3,:),4))';
    can.Body_Information_6.units.SideDetect_L_SnsrState     =  'SED';
    can.Body_Information_6.SideDetect_L_SnsrState     =    (bitand(bitshift(bb(3,:),-4),3))' ;
    can.Body_Information_6.units.Cross_Traffic_R_SnState_UB     =  'SED';
    can.Body_Information_6.Cross_Traffic_R_SnState_UB     =    (bitget(bb(2,:),1))';
    can.Body_Information_6.units.Cross_Traffic_R_SnState     =  'SED';
    can.Body_Information_6.Cross_Traffic_R_SnState     =    (bitand(bitshift(bb(3,:),-6),3))' ;
    can.Body_Information_6.units.Cross_Traffic_R_Op_State_UB     =  'SED';
    can.Body_Information_6.Cross_Traffic_R_Op_State_UB     =    (bitget(bb(2,:),2))';
    can.Body_Information_6.units.Cross_Traffic_R_Op_State     =  'SED';
    can.Body_Information_6.Cross_Traffic_R_Op_State     =    (bitand(bitshift(bb(2,:),-2),3))' ;
    can.Body_Information_6.units.Cross_Traffic_R_Alert_UB     =  'SED';
    can.Body_Information_6.Cross_Traffic_R_Alert_UB     =    (bitget(bb(2,:),5))';
    can.Body_Information_6.units.Cross_Traffic_R_Alert     =  'SED';
    can.Body_Information_6.Cross_Traffic_R_Alert     =    (bitand(bitshift(bb(2,:),-5),3))' ;
    can.Body_Information_6.units.Cross_Traffic_L_SnState_UB     =  'SED';
    can.Body_Information_6.Cross_Traffic_L_SnState_UB     =    (bitget(bb(2,:),8))';
    can.Body_Information_6.units.Cross_Traffic_L_SnState     =  'SED';
    can.Body_Information_6.Cross_Traffic_L_SnState     =    (bitand(bb(1,:),3))' ;
    can.Body_Information_6.units.Cross_Traffic_L_Op_State_UB     =  'SED';
    can.Body_Information_6.Cross_Traffic_L_Op_State_UB     =    (bitget(bb(1,:),3))';
    can.Body_Information_6.units.Cross_Traffic_L_Op_State     =  'SED';
    can.Body_Information_6.Cross_Traffic_L_Op_State     =    (bitand(bitshift(bb(1,:),-3),3))' ;
    can.Body_Information_6.units.Cross_Traffic_L_Alert_UB     =  'SED';
    can.Body_Information_6.Cross_Traffic_L_Alert_UB     =    (bitget(bb(1,:),6))';
    can.Body_Information_6.units.Cross_Traffic_L_Alert     =  'SED';
    can.Body_Information_6.Cross_Traffic_L_Alert     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.Body_Information_6.units.IgnKeyType_D_Actl     =  'SED';
    can.Body_Information_6.IgnKeyType_D_Actl     =    (bitand(bitshift(bb(5,:),-4),15))' ;
    can.Body_Information_6.units.KeyAdmnTot_No_Cnt     =  'Counts';
    can.Body_Information_6.KeyAdmnTot_No_Cnt     =    (bitand(bb(5,:),15))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Reserve_Mazda_J50C_39E
% Hex ID:39E
% Last edited by: selwart
% Date:26-Apr-2011
MSG_39E = hex2dec('39E');

ix=find(msg == MSG_39E);          % Find all message 0x39E's
if ~isempty(ix)                   % If there are any ...
    can.Reserve_Mazda_J50C_39E = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x39E messages
    can.Reserve_Mazda_J50C_39E.nsamples      = length(ix);
    can.Reserve_Mazda_J50C_39E.ctime         = cantime(ix);

    can.Reserve_Mazda_J50C_39E.units.reserve_for_Mazda     =  '';
    can.Reserve_Mazda_J50C_39E.reserve_for_Mazda     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ParkAid_Data
% Hex ID:3A8
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3A8 = hex2dec('3A8');

ix=find(msg == MSG_3A8);          % Find all message 0x3A8's
if ~isempty(ix)                   % If there are any ...
    can.ParkAid_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3A8 messages
    can.ParkAid_Data.nsamples      = length(ix);
    can.ParkAid_Data.ctime         = cantime(ix);

    can.ParkAid_Data.units.SAPPErrorCoding     =  'SED';
    can.ParkAid_Data.SAPPErrorCoding     =    (bb(3,:))' ;
    can.ParkAid_Data.units.ExtSteeringAngleReq     =  'Degrees';
    can.ParkAid_Data.ExtSteeringAngleReq     =    1.000000e-001*(2^7 * bb(1,:) + bitand(bitshift(bb(2,:),-1),127))' +-1000.00;
    can.ParkAid_Data.units.EPASExtAngleStatReq     =  'SED';
    can.ParkAid_Data.EPASExtAngleStatReq     =    (bitget(bb(2,:),1))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ParkAid_Range_to_Target
% Hex ID:3A9
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3A9 = hex2dec('3A9');

ix=find(msg == MSG_3A9);          % Find all message 0x3A9's
if ~isempty(ix)                   % If there are any ...
    can.ParkAid_Range_to_Target = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3A9 messages
    can.ParkAid_Range_to_Target.nsamples      = length(ix);
    can.ParkAid_Range_to_Target.ctime         = cantime(ix);

    can.ParkAid_Range_to_Target.units.RangeToClosestObstacle     =  'cm';
    can.ParkAid_Range_to_Target.RangeToClosestObstacle     =    (2^4 * bb(7,:) + bitand(bitshift(bb(8,:),-4),15))' ;
    can.ParkAid_Range_to_Target.units.RangeRearCornerRtSn     =  'cm';
    can.ParkAid_Range_to_Target.RangeRearCornerRtSn     =    (2^8 * bitand(bb(5,:),15) + bb(6,:))' ;
    can.ParkAid_Range_to_Target.units.RangeRearCornerLeftSn     =  'cm';
    can.ParkAid_Range_to_Target.RangeRearCornerLeftSn     =    (2^4 * bb(4,:) + bitand(bitshift(bb(5,:),-4),15))' ;
    can.ParkAid_Range_to_Target.units.RangeRearCenterRtSn     =  'cm';
    can.ParkAid_Range_to_Target.RangeRearCenterRtSn     =    (2^8 * bitand(bb(2,:),15) + bb(3,:))' ;
    can.ParkAid_Range_to_Target.units.RangeRearCenterLeftSn     =  'cm';
    can.ParkAid_Range_to_Target.RangeRearCenterLeftSn     =    (2^4 * bb(1,:) + bitand(bitshift(bb(2,:),-4),15))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ParkAid_Data_CG1
% Hex ID:3AB
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3AB = hex2dec('3AB');

ix=find(msg == MSG_3AB);          % Find all message 0x3AB's
if ~isempty(ix)                   % If there are any ...
    can.ParkAid_Data_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3AB messages
    can.ParkAid_Data_CG1.nsamples      = length(ix);
    can.ParkAid_Data_CG1.ctime         = cantime(ix);

    can.ParkAid_Data_CG1.units.EPASExtAngleStatReq     =  'SED';
    can.ParkAid_Data_CG1.EPASExtAngleStatReq     =    (bitget(bb(1,:),8))';
    can.ParkAid_Data_CG1.units.ExtSteeringAngleReq     =  'Degrees';
    can.ParkAid_Data_CG1.ExtSteeringAngleReq     =    1.000000e-001*(2^8 * bitand(bb(1,:),127) + bb(2,:))' +-1000.00;
    can.ParkAid_Data_CG1.units.SAPPErrorCoding     =  'SED';
    can.ParkAid_Data_CG1.SAPPErrorCoding     =    (bb(3,:))' ;
    can.ParkAid_Data_CG1.units.RangeToClosestObstacle     =  'cm';
    can.ParkAid_Data_CG1.RangeToClosestObstacle     =    (2^8 * bitand(bb(4,:),15) + bb(5,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: BodyInformation_2
% Hex ID:3AE
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3AE = hex2dec('3AE');

ix=find(msg == MSG_3AE);          % Find all message 0x3AE's
if ~isempty(ix)                   % If there are any ...
    can.BodyInformation_2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3AE messages
    can.BodyInformation_2.nsamples      = length(ix);
    can.BodyInformation_2.ctime         = cantime(ix);

    can.BodyInformation_2.units.Easy_Entry_Exit_Stat     =  'SED';
    can.BodyInformation_2.Easy_Entry_Exit_Stat     =    (bitand(bitshift(bb(2,:),-5),3))' ;
    can.BodyInformation_2.units.Memory_Feedback_Rqst     =  'SED';
    can.BodyInformation_2.Memory_Feedback_Rqst     =    (bitget(bb(2,:),8))';
    can.BodyInformation_2.units.Delay_Accy     =  'SED';
    can.BodyInformation_2.Delay_Accy     =    (bitget(bb(6,:),2))';
    can.BodyInformation_2.units.Fuel_Econ_AFE_Reset_Req_UB     =  'SED';
    can.BodyInformation_2.Fuel_Econ_AFE_Reset_Req_UB     =    (bitget(bb(6,:),4))';
    can.BodyInformation_2.units.Multimedia_System     =  'SED';
    can.BodyInformation_2.Multimedia_System     =    (bitget(bb(6,:),3))';
    can.BodyInformation_2.units.DrStatDrv_B_Actl     =  'SED';
    can.BodyInformation_2.DrStatDrv_B_Actl     =    (bitget(bb(1,:),8))';
    can.BodyInformation_2.units.DrStatHood_B_Actl     =  'SED';
    can.BodyInformation_2.DrStatHood_B_Actl     =    (bitget(bb(1,:),7))';
    can.BodyInformation_2.units.DrStatInnrTgate_B_Actl     =  'SED';
    can.BodyInformation_2.DrStatInnrTgate_B_Actl     =    (bitget(bb(1,:),6))';
    can.BodyInformation_2.units.DrStatPsngr_B_Actl     =  'SED';
    can.BodyInformation_2.DrStatPsngr_B_Actl     =    (bitget(bb(1,:),5))';
    can.BodyInformation_2.units.DrStatRl_B_Actl     =  'SED';
    can.BodyInformation_2.DrStatRl_B_Actl     =    (bitget(bb(1,:),4))';
    can.BodyInformation_2.units.DrStatRr_B_Actl     =  'SED';
    can.BodyInformation_2.DrStatRr_B_Actl     =    (bitget(bb(1,:),3))';
    can.BodyInformation_2.units.DrStatTgate_B_Actl     =  'SED';
    can.BodyInformation_2.DrStatTgate_B_Actl     =    (bitget(bb(1,:),2))';
    can.BodyInformation_2.units.Fuel_Econ_AFE_Reset_Req     =  'SED';
    can.BodyInformation_2.Fuel_Econ_AFE_Reset_Req     =    (bitget(bb(1,:),1))';
    can.BodyInformation_2.units.Nav_Unit_Setting     =  'SED';
    can.BodyInformation_2.Nav_Unit_Setting     =    (bitget(bb(2,:),4))';
    can.BodyInformation_2.units.Cancel_Auto_Movement     =  'SED';
    can.BodyInformation_2.Cancel_Auto_Movement     =    (bitget(bb(2,:),2))';
    can.BodyInformation_2.units.Cancel_Auto_Movement_UB     =  'SED';
    can.BodyInformation_2.Cancel_Auto_Movement_UB     =    (bitget(bb(2,:),1))';
    can.BodyInformation_2.units.DrvSeat_Stat     =  'SED';
    can.BodyInformation_2.DrvSeat_Stat     =    (bitand(bb(5,:),7))' ;
    can.BodyInformation_2.units.DrvSeat_Stat_UB     =  'SED';
    can.BodyInformation_2.DrvSeat_Stat_UB     =    (bitget(bb(2,:),3))';
    can.BodyInformation_2.units.Easy_Entry_Rqst     =  'SED';
    can.BodyInformation_2.Easy_Entry_Rqst     =    (bitand(bitshift(bb(6,:),-6),3))' ;
    can.BodyInformation_2.units.Easy_Entry_Rqst_UB     =  'SED';
    can.BodyInformation_2.Easy_Entry_Rqst_UB     =    (bitget(bb(2,:),5))';
    can.BodyInformation_2.units.Multimedia_System_UB     =  'SED';
    can.BodyInformation_2.Multimedia_System_UB     =    (bitget(bb(6,:),1))';
    can.BodyInformation_2.units.Memory_Cmd     =  'SED';
    can.BodyInformation_2.Memory_Cmd     =    (bitand(bitshift(bb(5,:),-4),15))' ;
    can.BodyInformation_2.units.Memory_Cmd_UB     =  'SED';
    can.BodyInformation_2.Memory_Cmd_UB     =    (bitget(bb(5,:),4))';
    can.BodyInformation_2.units.Memory_Feedback_Rqst_UB     =  'SED';
    can.BodyInformation_2.Memory_Feedback_Rqst_UB     =    (bitget(bb(6,:),6))';
    can.BodyInformation_2.units.Decklid_Ajar_Status     =  'SED';
    can.BodyInformation_2.Decklid_Ajar_Status     =    (bitget(bb(6,:),5))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: BodyInformation_3
% Hex ID:3B3
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3B3 = hex2dec('3B3');

ix=find(msg == MSG_3B3);          % Find all message 0x3B3's
if ~isempty(ix)                   % If there are any ...
    can.BodyInformation_3 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3B3 messages
    can.BodyInformation_3.nsamples      = length(ix);
    can.BodyInformation_3.ctime         = cantime(ix);

    can.BodyInformation_3.units.RearFog_Lamp_Ind_UB     =  'SED';
    can.BodyInformation_3.RearFog_Lamp_Ind_UB     =    (bitget(bb(7,:),2))';
    can.BodyInformation_3.units.RearFog_Lamp_Ind     =  'SED';
    can.BodyInformation_3.RearFog_Lamp_Ind     =    (bitget(bb(7,:),3))';
    can.BodyInformation_3.units.PwMdeExten_D_Actl     =  'SED';
    can.BodyInformation_3.PwMdeExten_D_Actl     =    (bitand(bitshift(bb(8,:),-3),31))' ;
    can.BodyInformation_3.units.Turn_Ind_Cmd_Right     =  'SED';
    can.BodyInformation_3.Turn_Ind_Cmd_Right     =    (bitget(bb(2,:),1))';
    can.BodyInformation_3.units.Turn_Ind_Cmd_Left     =  'SED';
    can.BodyInformation_3.Turn_Ind_Cmd_Left     =    (bitget(bb(2,:),2))';
    can.BodyInformation_3.units.Ignition_Switch_Stable     =  'SED';
    can.BodyInformation_3.Ignition_Switch_Stable     =    (bitand(bb(1,:),3))' ;
    can.BodyInformation_3.units.Parklamp_Status     =  'SED';
    can.BodyInformation_3.Parklamp_Status     =    (bitand(bitshift(bb(1,:),-2),3))' ;
    can.BodyInformation_3.units.Litval     =  'SED';
    can.BodyInformation_3.Litval     =    (bb(6,:))' ;
    can.BodyInformation_3.units.Key_In_Ignition_Stat     =  'SED';
    can.BodyInformation_3.Key_In_Ignition_Stat     =    (bitand(bitshift(bb(2,:),-2),3))' ;
    can.BodyInformation_3.units.Ignition_Status     =  'SED';
    can.BodyInformation_3.Ignition_Status     =    (bitand(bitshift(bb(1,:),-4),15))' ;
    can.BodyInformation_3.units.Dimming_Lvl     =  'SED';
    can.BodyInformation_3.Dimming_Lvl     =    (bb(4,:))' ;
    can.BodyInformation_3.units.Day_Night_Status     =  'SED';
    can.BodyInformation_3.Day_Night_Status     =    (bitand(bitshift(bb(2,:),-6),3))' ;
    can.BodyInformation_3.units.Remote_Start_Status     =  'SED';
    can.BodyInformation_3.Remote_Start_Status     =    (bitand(bitshift(bb(2,:),-4),3))' ;
    can.BodyInformation_3.units.DRV_SELECT_STAT     =  'SED';
    can.BodyInformation_3.DRV_SELECT_STAT     =    (bitand(bb(3,:),15))' ;
    can.BodyInformation_3.units.PrkBrkActv_B_Actl     =  'SED';
    can.BodyInformation_3.PrkBrkActv_B_Actl     =    (bitget(bb(7,:),8))';
    can.BodyInformation_3.units.HtdStrWhl_SftBtt_State_UB     =  'SED';
    can.BodyInformation_3.HtdStrWhl_SftBtt_State_UB     =    (bitget(bb(7,:),4))';
    can.BodyInformation_3.units.HtdStrWhl_SftBtt_State     =  'SED';
    can.BodyInformation_3.HtdStrWhl_SftBtt_State     =    (bitand(bitshift(bb(7,:),-4),3))' ;
    can.BodyInformation_3.units.HvacRemoteStrt_N_Rq_UB     =  'SED';
    can.BodyInformation_3.HvacRemoteStrt_N_Rq_UB     =    (bitget(bb(8,:),1))';
    can.BodyInformation_3.units.HvacRemoteStrt_N_Rq     =  'RPM';
    can.BodyInformation_3.HvacRemoteStrt_N_Rq     =    1.000000e+002*(bitand(bitshift(bb(3,:),-4),15))' +450.00;
    can.BodyInformation_3.units.HvacAirCond_B_Rq_UB     =  'SED';
    can.BodyInformation_3.HvacAirCond_B_Rq_UB     =    (bitget(bb(8,:),2))';
    can.BodyInformation_3.units.Remote_Start_Warn_Req     =  'SED';
    can.BodyInformation_3.Remote_Start_Warn_Req     =    (bitget(bb(7,:),7))';
    can.BodyInformation_3.units.HvacAirCond_B_Rq     =  'SED';
    can.BodyInformation_3.HvacAirCond_B_Rq     =    (bitget(bb(8,:),3))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Tire_Pressure_Status
% Hex ID:3B4
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3B4 = hex2dec('3B4');

ix=find(msg == MSG_3B4);          % Find all message 0x3B4's
if ~isempty(ix)                   % If there are any ...
    can.Tire_Pressure_Status = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3B4 messages
    can.Tire_Pressure_Status.nsamples      = length(ix);
    can.Tire_Pressure_Status.ctime         = cantime(ix);

    can.Tire_Pressure_Status.units.Tire_Press_ILR_Stat2     =  'SED';
    can.Tire_Pressure_Status.Tire_Press_ILR_Stat2     =    (bitand(bb(4,:),15))' ;
    can.Tire_Pressure_Status.units.Tire_Press_IRR_Stat2     =  'SED';
    can.Tire_Pressure_Status.Tire_Press_IRR_Stat2     =    (bitand(bitshift(bb(4,:),-4),15))' ;
    can.Tire_Pressure_Status.units.Tire_Press_LR_OLR_Stat2     =  'SED';
    can.Tire_Pressure_Status.Tire_Press_LR_OLR_Stat2     =    (bitand(bb(3,:),15))' ;
    can.Tire_Pressure_Status.units.Tire_Press_RR_ORR_Stat2     =  'SED';
    can.Tire_Pressure_Status.Tire_Press_RR_ORR_Stat2     =    (bitand(bitshift(bb(3,:),-4),15))' ;
    can.Tire_Pressure_Status.units.Tire_Press_RF_Stat2     =  'SED';
    can.Tire_Pressure_Status.Tire_Press_RF_Stat2     =    (bitand(bb(2,:),15))' ;
    can.Tire_Pressure_Status.units.Tire_Press_LF_Stat2     =  'SED';
    can.Tire_Pressure_Status.Tire_Press_LF_Stat2     =    (bitand(bitshift(bb(2,:),-4),15))' ;
    can.Tire_Pressure_Status.units.Tire_Press_System_Stat2     =  'SED';
    can.Tire_Pressure_Status.Tire_Press_System_Stat2     =    (bitand(bitshift(bb(1,:),-4),15))' ;
    can.Tire_Pressure_Status.units.Tire_Press_Telltale     =  'SED';
    can.Tire_Pressure_Status.Tire_Press_Telltale     =    (bitand(bitshift(bb(1,:),-2),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Tire_Pressure_Data
% Hex ID:3B5
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3B5 = hex2dec('3B5');

ix=find(msg == MSG_3B5);          % Find all message 0x3B5's
if ~isempty(ix)                   % If there are any ...
    can.Tire_Pressure_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3B5 messages
    can.Tire_Pressure_Data.nsamples      = length(ix);
    can.Tire_Pressure_Data.ctime         = cantime(ix);

    can.Tire_Pressure_Data.units.Tire_Press_RR_ORR_Data     =  'Psi';
    can.Tire_Pressure_Data.Tire_Press_RR_ORR_Data     =    (bb(3,:))' ;
    can.Tire_Pressure_Data.units.Tire_Press_RF_Data     =  'Psi';
    can.Tire_Pressure_Data.Tire_Press_RF_Data     =    (bb(2,:))' ;
    can.Tire_Pressure_Data.units.Tire_Press_LR_OLR_Data     =  'Psi';
    can.Tire_Pressure_Data.Tire_Press_LR_OLR_Data     =    (bb(4,:))' ;
    can.Tire_Pressure_Data.units.Tire_Press_IRR_Data     =  'Psi';
    can.Tire_Pressure_Data.Tire_Press_IRR_Data     =    (bb(5,:))' ;
    can.Tire_Pressure_Data.units.Tire_Press_ILR_Data     =  'Psi';
    can.Tire_Pressure_Data.Tire_Press_ILR_Data     =    (bb(6,:))' ;
    can.Tire_Pressure_Data.units.Tire_Press_LF_Data     =  'Psi';
    can.Tire_Pressure_Data.Tire_Press_LF_Data     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Smart_Headlamp_Stat
% Hex ID:3BB
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3BB = hex2dec('3BB');

ix=find(msg == MSG_3BB);          % Find all message 0x3BB's
if ~isempty(ix)                   % If there are any ...
    can.Smart_Headlamp_Stat = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3BB messages
    can.Smart_Headlamp_Stat.nsamples      = length(ix);
    can.Smart_Headlamp_Stat.ctime         = cantime(ix);

    can.Smart_Headlamp_Stat.units.Headlamp_Switch_Stat     =  'SED';
    can.Smart_Headlamp_Stat.Headlamp_Switch_Stat     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.Smart_Headlamp_Stat.units.Fog_Lamp_Dbnce     =  '';
    can.Smart_Headlamp_Stat.Fog_Lamp_Dbnce     =    (bitand(bitshift(bb(1,:),-4),3))' ;
    can.Smart_Headlamp_Stat.units.Digital_Dimmer_Sw_Stat     =  'SED';
    can.Smart_Headlamp_Stat.Digital_Dimmer_Sw_Stat     =    (bitand(bitshift(bb(1,:),-1),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Rear_FogLamp
% Hex ID:3BD
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3BD = hex2dec('3BD');

ix=find(msg == MSG_3BD);          % Find all message 0x3BD's
if ~isempty(ix)                   % If there are any ...
    can.Rear_FogLamp = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3BD messages
    can.Rear_FogLamp.nsamples      = length(ix);
    can.Rear_FogLamp.ctime         = cantime(ix);

    can.Rear_FogLamp.units.RearFog_Lamp_Dbnce     =  'SED';
    can.Rear_FogLamp.RearFog_Lamp_Dbnce     =    (bitget(bb(1,:),8))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: BCM_to_HS_Body
% Hex ID:3C3
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3C3 = hex2dec('3C3');

ix=find(msg == MSG_3C3);          % Find all message 0x3C3's
if ~isempty(ix)                   % If there are any ...
    can.BCM_to_HS_Body = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3C3 messages
    can.BCM_to_HS_Body.nsamples      = length(ix);
    can.BCM_to_HS_Body.ctime         = cantime(ix);

    can.BCM_to_HS_Body.units.DrTgateChime_D_Rq_UB     =  'SED';
    can.BCM_to_HS_Body.DrTgateChime_D_Rq_UB     =    (bitget(bb(2,:),2))';
    can.BCM_to_HS_Body.units.DrTgateChime_D_Rq     =  'SED';
    can.BCM_to_HS_Body.DrTgateChime_D_Rq     =    (bitand(bb(3,:),3))' ;
    can.BCM_to_HS_Body.units.CamraDefog_B_Actl     =  'SED';
    can.BCM_to_HS_Body.CamraDefog_B_Actl     =    (bitget(bb(1,:),5))';
    can.BCM_to_HS_Body.units.Reverse_Mirror_Stat     =  'SED';
    can.BCM_to_HS_Body.Reverse_Mirror_Stat     =    (bitand(bitshift(bb(8,:),-4),3))' ;
    can.BCM_to_HS_Body.units.Power_Liftgate_Mode_Stat     =  'SED';
    can.BCM_to_HS_Body.Power_Liftgate_Mode_Stat     =    (bitand(bitshift(bb(8,:),-6),3))' ;
    can.BCM_to_HS_Body.units.IKT_Program_Status     =  'SED';
    can.BCM_to_HS_Body.IKT_Program_Status     =    (bitand(bitshift(bb(7,:),-2),3))' ;
    can.BCM_to_HS_Body.units.Veh_Spd_Slow_Puddle_Status     =  'SED';
    can.BCM_to_HS_Body.Veh_Spd_Slow_Puddle_Status     =    (bitand(bb(6,:),3))' ;
    can.BCM_to_HS_Body.units.Illuminated_Exit_Status     =  'SED';
    can.BCM_to_HS_Body.Illuminated_Exit_Status     =    (bitand(bitshift(bb(6,:),-2),3))' ;
    can.BCM_to_HS_Body.units.Illuminated_Entry_Status     =  'SED';
    can.BCM_to_HS_Body.Illuminated_Entry_Status     =    (bitand(bitshift(bb(6,:),-4),3))' ;
    can.BCM_to_HS_Body.units.Door_Courtesy_Light_Status     =  'SED';
    can.BCM_to_HS_Body.Door_Courtesy_Light_Status     =    (bitand(bitshift(bb(6,:),-6),3))' ;
    can.BCM_to_HS_Body.units.Courtesy_Demand_BSave_Stat     =  'SED';
    can.BCM_to_HS_Body.Courtesy_Demand_BSave_Stat     =    (bitand(bb(5,:),3))' ;
    can.BCM_to_HS_Body.units.Alarm_Lights_Courtesy_Stat     =  'SED';
    can.BCM_to_HS_Body.Alarm_Lights_Courtesy_Stat     =    (bitand(bitshift(bb(5,:),-2),3))' ;
    can.BCM_to_HS_Body.units.Courtesy_Delay_Status     =  'SED';
    can.BCM_to_HS_Body.Courtesy_Delay_Status     =    (bitand(bitshift(bb(5,:),-4),3))' ;
    can.BCM_to_HS_Body.units.Courtesy_Mode_Status     =  'SED';
    can.BCM_to_HS_Body.Courtesy_Mode_Status     =    (bitand(bitshift(bb(5,:),-6),3))' ;
    can.BCM_to_HS_Body.units.Front_Fog_Light_SW_Status     =  'SED';
    can.BCM_to_HS_Body.Front_Fog_Light_SW_Status     =    (bitand(bitshift(bb(3,:),-5),3))' ;
    can.BCM_to_HS_Body.units.Brake_Lamp_On_Status     =  'SED';
    can.BCM_to_HS_Body.Brake_Lamp_On_Status     =    (bitget(bb(3,:),8))';
    can.BCM_to_HS_Body.units.LowBeam_CKT_CAN     =  'SED';
    can.BCM_to_HS_Body.LowBeam_CKT_CAN     =    (bitget(bb(2,:),4))';
    can.BCM_to_HS_Body.units.ParkLamps_CKT_CAN     =  'SED';
    can.BCM_to_HS_Body.ParkLamps_CKT_CAN     =    (bitget(bb(2,:),1))';
    can.BCM_to_HS_Body.units.RF_Low_Beam_CKT_CAN     =  'SED';
    can.BCM_to_HS_Body.RF_Low_Beam_CKT_CAN     =    (bitget(bb(2,:),6))';
    can.BCM_to_HS_Body.units.Brk_Fluid_Lvl_Low     =  'SED';
    can.BCM_to_HS_Body.Brk_Fluid_Lvl_Low     =    (bitand(bitshift(bb(2,:),-6),3))' ;
    can.BCM_to_HS_Body.units.LF_Low_Beam_CKT_CAN     =  'SED';
    can.BCM_to_HS_Body.LF_Low_Beam_CKT_CAN     =    (bitget(bb(2,:),5))';
    can.BCM_to_HS_Body.units.High_Beam_Indicator_Rqst     =  'SED';
    can.BCM_to_HS_Body.High_Beam_Indicator_Rqst     =    (bitget(bb(1,:),2))';
    can.BCM_to_HS_Body.units.Brake_Warn_Indicator_Rqst     =  'SED';
    can.BCM_to_HS_Body.Brake_Warn_Indicator_Rqst     =    (bitget(bb(1,:),3))';
    can.BCM_to_HS_Body.units.Headlamp_On_Wrning_Cmd     =  'SED';
    can.BCM_to_HS_Body.Headlamp_On_Wrning_Cmd     =    (bitget(bb(1,:),7))';
    can.BCM_to_HS_Body.units.Key_In_Ignition_Warn_Cmd     =  'SED';
    can.BCM_to_HS_Body.Key_In_Ignition_Warn_Cmd     =    (bitget(bb(1,:),6))';
    can.BCM_to_HS_Body.units.Fog_Lamps_Rly_Ckt_CAN     =  'SED';
    can.BCM_to_HS_Body.Fog_Lamps_Rly_Ckt_CAN     =    (bitget(bb(2,:),3))';
    can.BCM_to_HS_Body.units.Power_Liftgate_Mode_Stat_UB     =  'SED';
    can.BCM_to_HS_Body.Power_Liftgate_Mode_Stat_UB     =    (bitget(bb(3,:),3))';
    can.BCM_to_HS_Body.units.Reverse_Mirror_Stat_UB     =  'SED';
    can.BCM_to_HS_Body.Reverse_Mirror_Stat_UB     =    (bitget(bb(1,:),8))';
    can.BCM_to_HS_Body.units.Park_Brake_Chime_Rqst     =  'SED';
    can.BCM_to_HS_Body.Park_Brake_Chime_Rqst     =    (bitget(bb(1,:),4))';
    can.BCM_to_HS_Body.units.Daytime_Running_Lamps     =  'SED';
    can.BCM_to_HS_Body.Daytime_Running_Lamps     =    (bitget(bb(1,:),1))';
    can.BCM_to_HS_Body.units.Running_Board_Stat_UB     =  'SED';
    can.BCM_to_HS_Body.Running_Board_Stat_UB     =    (bitget(bb(8,:),1))';
    can.BCM_to_HS_Body.units.Running_Board_Stat     =  'SED';
    can.BCM_to_HS_Body.Running_Board_Stat     =    (bitand(bitshift(bb(8,:),-1),3))' ;
    can.BCM_to_HS_Body.units.Perimeter_Alarm_Chime_Rqst     =  'SED';
    can.BCM_to_HS_Body.Perimeter_Alarm_Chime_Rqst     =    (bitand(bitshift(bb(3,:),-3),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: CMPS_FDM_Info_Status
% Hex ID:3C7
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3C7 = hex2dec('3C7');

ix=find(msg == MSG_3C7);          % Find all message 0x3C7's
if ~isempty(ix)                   % If there are any ...
    can.CMPS_FDM_Info_Status = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3C7 messages
    can.CMPS_FDM_Info_Status.nsamples      = length(ix);
    can.CMPS_FDM_Info_Status.ctime         = cantime(ix);

    can.CMPS_FDM_Info_Status.units.CamraFrntStat_D_Stat     =  'SED';
    can.CMPS_FDM_Info_Status.CamraFrntStat_D_Stat     =    (bitand(bb(6,:),3))' ;
    can.CMPS_FDM_Info_Status.units.Zone_Icon_UB     =  'SED';
    can.CMPS_FDM_Info_Status.Zone_Icon_UB     =    (bitget(bb(5,:),3))';
    can.CMPS_FDM_Info_Status.units.GPS_Compass_direction     =  'SED';
    can.CMPS_FDM_Info_Status.GPS_Compass_direction     =    (bitand(bitshift(bb(6,:),-4),15))' ;
    can.CMPS_FDM_Info_Status.units.Segment_MSD_UB     =  'SED';
    can.CMPS_FDM_Info_Status.Segment_MSD_UB     =    (bitget(bb(5,:),6))';
    can.CMPS_FDM_Info_Status.units.Segment_LSD_UB     =  'SED';
    can.CMPS_FDM_Info_Status.Segment_LSD_UB     =    (bitget(bb(5,:),5))';
    can.CMPS_FDM_Info_Status.units.ExcessiveMagnetism     =  'SED';
    can.CMPS_FDM_Info_Status.ExcessiveMagnetism     =    (bitget(bb(5,:),1))';
    can.CMPS_FDM_Info_Status.units.Compass_Display_UB     =  'SED';
    can.CMPS_FDM_Info_Status.Compass_Display_UB     =    (bitget(bb(5,:),4))';
    can.CMPS_FDM_Info_Status.units.Segment_LSD     =  'Dimensionless';
    can.CMPS_FDM_Info_Status.Segment_LSD     =    (bb(2,:))' ;
    can.CMPS_FDM_Info_Status.units.Segment_MSD     =  'Dimensionless';
    can.CMPS_FDM_Info_Status.Segment_MSD     =    (bb(1,:))' ;
    can.CMPS_FDM_Info_Status.units.Cal_Icon     =  'SED';
    can.CMPS_FDM_Info_Status.Cal_Icon     =    (bitget(bb(3,:),6))';
    can.CMPS_FDM_Info_Status.units.Zone_Icon     =  'SED';
    can.CMPS_FDM_Info_Status.Zone_Icon     =    (bitget(bb(3,:),7))';
    can.CMPS_FDM_Info_Status.units.Compass_Display     =  'SED';
    can.CMPS_FDM_Info_Status.Compass_Display     =    (bitget(bb(3,:),8))';
    can.CMPS_FDM_Info_Status.units.Cal_Icon_UB     =  'SED';
    can.CMPS_FDM_Info_Status.Cal_Icon_UB     =    (bitget(bb(5,:),2))';
    can.CMPS_FDM_Info_Status.units.RearCameraDelayStat     =  'SED';
    can.CMPS_FDM_Info_Status.RearCameraDelayStat     =    (bitand(bitshift(bb(5,:),-6),3))' ;
    can.CMPS_FDM_Info_Status.units.CamraOvrlTow_D_Actl     =  'SE';
    can.CMPS_FDM_Info_Status.CamraOvrlTow_D_Actl     =    (bitand(bb(4,:),3))' ;
    can.CMPS_FDM_Info_Status.units.CamZoomActiveState     =  'SED';
    can.CMPS_FDM_Info_Status.CamZoomActiveState     =    (bitand(bitshift(bb(4,:),-4),3))' ;
    can.CMPS_FDM_Info_Status.units.CamraZoomMan_D_Actl     =  'SED';
    can.CMPS_FDM_Info_Status.CamraZoomMan_D_Actl     =    (bitand(bb(3,:),7))' ;
    can.CMPS_FDM_Info_Status.units.CamraOvrlStat_D_Actl     =  'SED';
    can.CMPS_FDM_Info_Status.CamraOvrlStat_D_Actl     =    (bitand(bitshift(bb(4,:),-2),3))' ;
    can.CMPS_FDM_Info_Status.units.CamraOvrlDyn_D_Actl     =  'SED';
    can.CMPS_FDM_Info_Status.CamraOvrlDyn_D_Actl     =    (bitand(bitshift(bb(3,:),-3),3))' ;
    can.CMPS_FDM_Info_Status.units.CamPDCGuidStat     =  'SED';
    can.CMPS_FDM_Info_Status.CamPDCGuidStat     =    (bitand(bitshift(bb(4,:),-6),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Lane_Assist_Data1
% Hex ID:3CA
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3CA = hex2dec('3CA');

ix=find(msg == MSG_3CA);          % Find all message 0x3CA's
if ~isempty(ix)                   % If there are any ...
    can.Lane_Assist_Data1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3CA messages
    can.Lane_Assist_Data1.nsamples      = length(ix);
    can.Lane_Assist_Data1.ctime         = cantime(ix);

    can.Lane_Assist_Data1.units.LkaActvStats_D_Req     =  'SED';
    can.Lane_Assist_Data1.LkaActvStats_D_Req     =    (bitand(bitshift(bb(1,:),-5),7))' ;
    can.Lane_Assist_Data1.units.LdwActvStats_D_Req     =  'SED';
    can.Lane_Assist_Data1.LdwActvStats_D_Req     =    (bitand(bitshift(bb(1,:),-2),7))' ;
    can.Lane_Assist_Data1.units.LdwActvIntns_D_Req     =  'SED';
    can.Lane_Assist_Data1.LdwActvIntns_D_Req     =    (bitand(bb(1,:),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Lane_Assist_Data2
% Hex ID:3CB
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3CB = hex2dec('3CB');

ix=find(msg == MSG_3CB);          % Find all message 0x3CB's
if ~isempty(ix)                   % If there are any ...
    can.Lane_Assist_Data2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3CB messages
    can.Lane_Assist_Data2.nsamples      = length(ix);
    can.Lane_Assist_Data2.ctime         = cantime(ix);

    can.Lane_Assist_Data2.units.LaRefAng_No_Req     =  'mrad';
    can.Lane_Assist_Data2.LaRefAng_No_Req     =    5.000000e-002*(2^8 * bitand(bb(3,:),15) + bb(4,:))' +-102.40;
    can.Lane_Assist_Data2.units.LaRampType_B_Req     =  'SED';
    can.Lane_Assist_Data2.LaRampType_B_Req     =    (bitget(bb(1,:),5))';
    can.Lane_Assist_Data2.units.LaCurvature_No_Calc     =  '1/m';
    can.Lane_Assist_Data2.LaCurvature_No_Calc     =    5.000000e-006*(2^8 * bitand(bb(1,:),15) + bb(2,:))' +-0.01;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Lane_Assist_Data3
% Hex ID:3CC
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3CC = hex2dec('3CC');

ix=find(msg == MSG_3CC);          % Find all message 0x3CC's
if ~isempty(ix)                   % If there are any ...
    can.Lane_Assist_Data3 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3CC messages
    can.Lane_Assist_Data3.nsamples      = length(ix);
    can.Lane_Assist_Data3.ctime         = cantime(ix);

    can.Lane_Assist_Data3.units.LaHandsOff_B_Actl     =  'SED';
    can.Lane_Assist_Data3.LaHandsOff_B_Actl     =    (bitget(bb(1,:),8))';
    can.Lane_Assist_Data3.units.LaActDeny_B_Actl     =  'SED';
    can.Lane_Assist_Data3.LaActDeny_B_Actl     =    (bitget(bb(1,:),7))';
    can.Lane_Assist_Data3.units.LaActAvail_D_Actl     =  'SED';
    can.Lane_Assist_Data3.LaActAvail_D_Actl     =    (bitand(bitshift(bb(1,:),-4),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: IPMA_Data
% Hex ID:3D8
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3D8 = hex2dec('3D8');

ix=find(msg == MSG_3D8);          % Find all message 0x3D8's
if ~isempty(ix)                   % If there are any ...
    can.IPMA_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3D8 messages
    can.IPMA_Data.nsamples      = length(ix);
    can.IPMA_Data.ctime         = cantime(ix);

    can.IPMA_Data.units.LaSwtch_D_RqDrv     =  'SED';
    can.IPMA_Data.LaSwtch_D_RqDrv     =    (bitget(bb(6,:),6))';
    can.IPMA_Data.units.DasWarn_D_Dsply     =  'SED';
    can.IPMA_Data.DasWarn_D_Dsply     =    (bitand(bitshift(bb(6,:),-3),3))' ;
    can.IPMA_Data.units.DasStats_D_Dsply     =  'SED';
    can.IPMA_Data.DasStats_D_Dsply     =    (bitand(bitshift(bb(6,:),-6),3))' ;
    can.IPMA_Data.units.DasAlrtLvl_D_Dsply     =  'SED';
    can.IPMA_Data.DasAlrtLvl_D_Dsply     =    (bitand(bitshift(bb(7,:),-5),7))' ;
    can.IPMA_Data.units.CamraStats_D_Dsply     =  'SED';
    can.IPMA_Data.CamraStats_D_Dsply     =    (bitand(bitshift(bb(5,:),-2),3))' ;
    can.IPMA_Data.units.CamraDefog_B_Req     =  'SED';
    can.IPMA_Data.CamraDefog_B_Req     =    (bitget(bb(5,:),5))';
    can.IPMA_Data.units.LaSwtchStat_No_Actl     =  'unitless';
    can.IPMA_Data.LaSwtchStat_No_Actl     =    (bitget(bb(8,:),8))';
    can.IPMA_Data.units.LaHandsOff_D_Dsply     =  'SED';
    can.IPMA_Data.LaHandsOff_D_Dsply     =    (bitand(bitshift(bb(6,:),-1),3))' ;
    can.IPMA_Data.units.LaDenyStats_B_Dsply     =  'SED';
    can.IPMA_Data.LaDenyStats_B_Dsply     =    (bitget(bb(6,:),1))';
    can.IPMA_Data.units.LaActvStats_D_Dsply     =  'SED';
    can.IPMA_Data.LaActvStats_D_Dsply     =    (bitand(bb(7,:),31))' ;
    can.IPMA_Data.units.AhbcHiBeam_D_Rq     =  'SED';
    can.IPMA_Data.AhbcHiBeam_D_Rq     =    (bitand(bb(5,:),3))' ;
    can.IPMA_Data.units.PersIndexIpma_D_Actl     =  'SED';
    can.IPMA_Data.PersIndexIpma_D_Actl     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.IPMA_Data.units.FeatNoIpmaActl     =  'Number';
    can.IPMA_Data.FeatNoIpmaActl     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.IPMA_Data.units.FeatConfigIpmaActl     =  'Undefined';
    can.IPMA_Data.FeatConfigIpmaActl     =    (2^8 * bb(1,:) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_APIM_Data3
% Hex ID:3DA
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3DA = hex2dec('3DA');

ix=find(msg == MSG_3DA);          % Find all message 0x3DA's
if ~isempty(ix)                   % If there are any ...
    can.Personality_APIM_Data3 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3DA messages
    can.Personality_APIM_Data3.nsamples      = length(ix);
    can.Personality_APIM_Data3.ctime         = cantime(ix);

    can.Personality_APIM_Data3.units.LightAmbIntSwtchInc_B     =  'SED';
    can.Personality_APIM_Data3.LightAmbIntSwtchInc_B     =    (bitget(bb(3,:),7))';
    can.Personality_APIM_Data3.units.LightAmbIntSwtchDec_B     =  'SED';
    can.Personality_APIM_Data3.LightAmbIntSwtchDec_B     =    (bitget(bb(3,:),6))';
    can.Personality_APIM_Data3.units.LightAmbIntsty_No_Rq     =  '% Intensity';
    can.Personality_APIM_Data3.LightAmbIntsty_No_Rq     =    (bb(2,:))' ;
    can.Personality_APIM_Data3.units.LightAmbColor_No_Rq     =  'Color Index';
    can.Personality_APIM_Data3.LightAmbColor_No_Rq     =    (bb(1,:))' ;
    can.Personality_APIM_Data3.units.LightAmbClrSwtchInc_B     =  'SED';
    can.Personality_APIM_Data3.LightAmbClrSwtchInc_B     =    (bitget(bb(3,:),5))';
    can.Personality_APIM_Data3.units.LightAmbClrSwtchDec_B     =  'SED';
    can.Personality_APIM_Data3.LightAmbClrSwtchDec_B     =    (bitget(bb(3,:),8))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_VDM_Data
% Hex ID:3DF
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3DF = hex2dec('3DF');

ix=find(msg == MSG_3DF);          % Find all message 0x3DF's
if ~isempty(ix)                   % If there are any ...
    can.Personality_VDM_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3DF messages
    can.Personality_VDM_Data.nsamples      = length(ix);
    can.Personality_VDM_Data.ctime         = cantime(ix);

    can.Personality_VDM_Data.units.PersIndexVdm_D_Actl     =  'SED';
    can.Personality_VDM_Data.PersIndexVdm_D_Actl     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.Personality_VDM_Data.units.FeatNoVdmActl     =  'Number';
    can.Personality_VDM_Data.FeatNoVdmActl     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.Personality_VDM_Data.units.FeatConfigVdmActl     =  'Undefined';
    can.Personality_VDM_Data.FeatConfigVdmActl     =    (2^8 * bb(1,:) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_IPC_Data
% Hex ID:3E0
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3E0 = hex2dec('3E0');

ix=find(msg == MSG_3E0);          % Find all message 0x3E0's
if ~isempty(ix)                   % If there are any ...
    can.Personality_IPC_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3E0 messages
    can.Personality_IPC_Data.nsamples      = length(ix);
    can.Personality_IPC_Data.ctime         = cantime(ix);

    can.Personality_IPC_Data.units.MsgCntrPersIndex_D_Rq     =  'SED';
    can.Personality_IPC_Data.MsgCntrPersIndex_D_Rq     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.Personality_IPC_Data.units.MsgCntrFeatConfigRq     =  'Undefined';
    can.Personality_IPC_Data.MsgCntrFeatConfigRq     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.Personality_IPC_Data.units.MsgCntrFeatNoRq     =  'Number';
    can.Personality_IPC_Data.MsgCntrFeatNoRq     =    (2^8 * bb(1,:) + bb(2,:))' ;
    can.Personality_IPC_Data.units.MsgCntrDsplyOp_D_Rq     =  'SED';
    can.Personality_IPC_Data.MsgCntrDsplyOp_D_Rq     =    (bitand(bitshift(bb(5,:),-2),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_Data_HS
% Hex ID:3E1
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3E1 = hex2dec('3E1');

ix=find(msg == MSG_3E1);          % Find all message 0x3E1's
if ~isempty(ix)                   % If there are any ...
    can.Personality_Data_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3E1 messages
    can.Personality_Data_HS.nsamples      = length(ix);
    can.Personality_Data_HS.ctime         = cantime(ix);

    can.Personality_Data_HS.units.PersSetupRestr_D_Actl     =  'SED';
    can.Personality_Data_HS.PersSetupRestr_D_Actl     =    (bitand(bitshift(bb(3,:),-4),3))' ;
    can.Personality_Data_HS.units.PersSetupAccessCtrl     =  'SES';
    can.Personality_Data_HS.PersSetupAccessCtrl     =    (bitget(bb(3,:),4))';
    can.Personality_Data_HS.units.PersSetup_No_Actl     =  'Number';
    can.Personality_Data_HS.PersSetup_No_Actl     =    (2^8 * bb(4,:) + bb(5,:))' ;
    can.Personality_Data_HS.units.PersConflict_D_Actl     =  'SED';
    can.Personality_Data_HS.PersConflict_D_Actl     =    (bitget(bb(3,:),7))';
    can.Personality_Data_HS.units.AssocConfirm_D_Actl     =  'SED';
    can.Personality_Data_HS.AssocConfirm_D_Actl     =    (bitand(bitshift(bb(2,:),-5),7))' ;
    can.Personality_Data_HS.units.RecallEvent_No_Cnt     =  'Counts';
    can.Personality_Data_HS.RecallEvent_No_Cnt     =    (bb(1,:))' ;
    can.Personality_Data_HS.units.PersNo_D_Actl     =  'SED';
    can.Personality_Data_HS.PersNo_D_Actl     =    (bitand(bb(2,:),7))' ;
    can.Personality_Data_HS.units.PersStore_D_Actl_UB     =  'SED';
    can.Personality_Data_HS.PersStore_D_Actl_UB     =    (bitget(bb(3,:),8))';
    can.Personality_Data_HS.units.PersStore_D_Actl     =  'SED';
    can.Personality_Data_HS.PersStore_D_Actl     =    (bitand(bitshift(bb(2,:),-3),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_APIM_Data
% Hex ID:3E2
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3E2 = hex2dec('3E2');

ix=find(msg == MSG_3E2);          % Find all message 0x3E2's
if ~isempty(ix)                   % If there are any ...
    can.Personality_APIM_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3E2 messages
    can.Personality_APIM_Data.nsamples      = length(ix);
    can.Personality_APIM_Data.ctime         = cantime(ix);

    can.Personality_APIM_Data.units.CamraOvrlTow_D_Rq     =  'SED';
    can.Personality_APIM_Data.CamraOvrlTow_D_Rq     =    (bitget(bb(6,:),3))';
    can.Personality_APIM_Data.units.Pers4OptIn_B_Stats     =  'SED';
    can.Personality_APIM_Data.Pers4OptIn_B_Stats     =    (bitget(bb(6,:),4))';
    can.Personality_APIM_Data.units.Pers3OptIn_B_Stats     =  'SED';
    can.Personality_APIM_Data.Pers3OptIn_B_Stats     =    (bitget(bb(5,:),2))';
    can.Personality_APIM_Data.units.Pers2OptIn_B_Stats     =  'SED';
    can.Personality_APIM_Data.Pers2OptIn_B_Stats     =    (bitget(bb(5,:),1))';
    can.Personality_APIM_Data.units.Pers1OptIn_B_Stats     =  'SED';
    can.Personality_APIM_Data.Pers1OptIn_B_Stats     =    (bitget(bb(6,:),5))';
    can.Personality_APIM_Data.units.CtrStkPersIndex_D_Actl     =  'SED';
    can.Personality_APIM_Data.CtrStkPersIndex_D_Actl     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.Personality_APIM_Data.units.CtrStkFeatNoActl     =  'Undefined';
    can.Personality_APIM_Data.CtrStkFeatNoActl     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.Personality_APIM_Data.units.PersStore_D_Rq     =  'SED';
    can.Personality_APIM_Data.PersStore_D_Rq     =    (bitand(bitshift(bb(5,:),-2),7))' ;
    can.Personality_APIM_Data.units.CtrStkFeatConfigActl     =  'Undefined';
    can.Personality_APIM_Data.CtrStkFeatConfigActl     =    (2^8 * bb(1,:) + bb(2,:))' ;
    can.Personality_APIM_Data.units.CtrStkDsplyOp_D_Rq     =  'SED';
    can.Personality_APIM_Data.CtrStkDsplyOp_D_Rq     =    (bitand(bitshift(bb(6,:),-5),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_BCM_Data
% Hex ID:3E3
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3E3 = hex2dec('3E3');

ix=find(msg == MSG_3E3);          % Find all message 0x3E3's
if ~isempty(ix)                   % If there are any ...
    can.Personality_BCM_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3E3 messages
    can.Personality_BCM_Data.nsamples      = length(ix);
    can.Personality_BCM_Data.ctime         = cantime(ix);

    can.Personality_BCM_Data.units.PersIndexBcm_D_Actl     =  'SED';
    can.Personality_BCM_Data.PersIndexBcm_D_Actl     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.Personality_BCM_Data.units.FeatNoBcm_No_Actl     =  'Number';
    can.Personality_BCM_Data.FeatNoBcm_No_Actl     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.Personality_BCM_Data.units.FeatConfigBcmActl     =  'Undefined';
    can.Personality_BCM_Data.FeatConfigBcmActl     =    (2^8 * bb(1,:) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_HCMB_Data_HS
% Hex ID:3E4
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3E4 = hex2dec('3E4');

ix=find(msg == MSG_3E4);          % Find all message 0x3E4's
if ~isempty(ix)                   % If there are any ...
    can.Personality_HCMB_Data_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3E4 messages
    can.Personality_HCMB_Data_HS.nsamples      = length(ix);
    can.Personality_HCMB_Data_HS.ctime         = cantime(ix);

    can.Personality_HCMB_Data_HS.units.PersIndexHcmb_D_Actl_UB     =  'SED';
    can.Personality_HCMB_Data_HS.PersIndexHcmb_D_Actl_UB     =    (bitget(bb(5,:),3))';
    can.Personality_HCMB_Data_HS.units.PersIndexHcmb_D_Actl     =  'SED';
    can.Personality_HCMB_Data_HS.PersIndexHcmb_D_Actl     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.Personality_HCMB_Data_HS.units.FeatNoHcmbActl_UB     =  'SED';
    can.Personality_HCMB_Data_HS.FeatNoHcmbActl_UB     =    (bitget(bb(5,:),4))';
    can.Personality_HCMB_Data_HS.units.FeatNoHcmbActl     =  'Number';
    can.Personality_HCMB_Data_HS.FeatNoHcmbActl     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.Personality_HCMB_Data_HS.units.FeatConfigHcmbActl_UB     =  'SED';
    can.Personality_HCMB_Data_HS.FeatConfigHcmbActl_UB     =    (bitget(bb(5,:),5))';
    can.Personality_HCMB_Data_HS.units.FeatConfigHcmbActl     =  'Undefined';
    can.Personality_HCMB_Data_HS.FeatConfigHcmbActl     =    (2^8 * bb(1,:) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_CCM_Data
% Hex ID:3E5
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3E5 = hex2dec('3E5');

ix=find(msg == MSG_3E5);          % Find all message 0x3E5's
if ~isempty(ix)                   % If there are any ...
    can.Personality_CCM_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3E5 messages
    can.Personality_CCM_Data.nsamples      = length(ix);
    can.Personality_CCM_Data.ctime         = cantime(ix);

    can.Personality_CCM_Data.units.PersIndexCcm_D_Actl     =  'SED';
    can.Personality_CCM_Data.PersIndexCcm_D_Actl     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.Personality_CCM_Data.units.FeatNoCcmActl     =  'Number';
    can.Personality_CCM_Data.FeatNoCcmActl     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.Personality_CCM_Data.units.FeatConfigCcmActl     =  'Undefined';
    can.Personality_CCM_Data.FeatConfigCcmActl     =    (2^8 * bb(1,:) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_SCCM_Data
% Hex ID:3E6
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3E6 = hex2dec('3E6');

ix=find(msg == MSG_3E6);          % Find all message 0x3E6's
if ~isempty(ix)                   % If there are any ...
    can.Personality_SCCM_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3E6 messages
    can.Personality_SCCM_Data.nsamples      = length(ix);
    can.Personality_SCCM_Data.ctime         = cantime(ix);

    can.Personality_SCCM_Data.units.PersIndexSccm_D_Actl     =  'SED';
    can.Personality_SCCM_Data.PersIndexSccm_D_Actl     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.Personality_SCCM_Data.units.FeatNoSccmActl     =  'Number';
    can.Personality_SCCM_Data.FeatNoSccmActl     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.Personality_SCCM_Data.units.FeatConfigSccmActl     =  'Undefined';
    can.Personality_SCCM_Data.FeatConfigSccmActl     =    (2^8 * bb(1,:) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_HVAC_Data_HS
% Hex ID:3E7
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3E7 = hex2dec('3E7');

ix=find(msg == MSG_3E7);          % Find all message 0x3E7's
if ~isempty(ix)                   % If there are any ...
    can.Personality_HVAC_Data_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3E7 messages
    can.Personality_HVAC_Data_HS.nsamples      = length(ix);
    can.Personality_HVAC_Data_HS.ctime         = cantime(ix);

    can.Personality_HVAC_Data_HS.units.LightAmbIntsty_No_Actl_UB     =  'SED';
    can.Personality_HVAC_Data_HS.LightAmbIntsty_No_Actl_UB     =    (bitget(bb(5,:),2))';
    can.Personality_HVAC_Data_HS.units.LightAmbIntsty_No_Actl     =  '% Intensity';
    can.Personality_HVAC_Data_HS.LightAmbIntsty_No_Actl     =    (bb(7,:))' ;
    can.Personality_HVAC_Data_HS.units.LightAmbColor_No_Actl_UB     =  'SED';
    can.Personality_HVAC_Data_HS.LightAmbColor_No_Actl_UB     =    (bitget(bb(5,:),1))';
    can.Personality_HVAC_Data_HS.units.LightAmbColor_No_Actl     =  'Color Index';
    can.Personality_HVAC_Data_HS.LightAmbColor_No_Actl     =    (bb(6,:))' ;
    can.Personality_HVAC_Data_HS.units.PersIndexHvac_D_Actl_UB     =  'SED';
    can.Personality_HVAC_Data_HS.PersIndexHvac_D_Actl_UB     =    (bitget(bb(5,:),3))';
    can.Personality_HVAC_Data_HS.units.FeatNoHvacActl_UB     =  'SED';
    can.Personality_HVAC_Data_HS.FeatNoHvacActl_UB     =    (bitget(bb(5,:),4))';
    can.Personality_HVAC_Data_HS.units.FeatConfigHvacActl_UB     =  'SED';
    can.Personality_HVAC_Data_HS.FeatConfigHvacActl_UB     =    (bitget(bb(5,:),5))';
    can.Personality_HVAC_Data_HS.units.PersIndexHvac_D_Actl     =  'SED';
    can.Personality_HVAC_Data_HS.PersIndexHvac_D_Actl     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.Personality_HVAC_Data_HS.units.FeatNoHvacActl     =  'Number';
    can.Personality_HVAC_Data_HS.FeatNoHvacActl     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.Personality_HVAC_Data_HS.units.FeatConfigHvacActl     =  'Undefined';
    can.Personality_HVAC_Data_HS.FeatConfigHvacActl     =    (2^8 * bb(1,:) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_RFA_Data_HS
% Hex ID:3E9
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3E9 = hex2dec('3E9');

ix=find(msg == MSG_3E9);          % Find all message 0x3E9's
if ~isempty(ix)                   % If there are any ...
    can.Personality_RFA_Data_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3E9 messages
    can.Personality_RFA_Data_HS.nsamples      = length(ix);
    can.Personality_RFA_Data_HS.ctime         = cantime(ix);

    can.Personality_RFA_Data_HS.units.PersIndexRfa_D_Actl_UB     =  'SED';
    can.Personality_RFA_Data_HS.PersIndexRfa_D_Actl_UB     =    (bitget(bb(5,:),3))';
    can.Personality_RFA_Data_HS.units.FeatNoRfaActl_UB     =  'SED';
    can.Personality_RFA_Data_HS.FeatNoRfaActl_UB     =    (bitget(bb(5,:),4))';
    can.Personality_RFA_Data_HS.units.FeatConfigRfaActl_UB     =  'SED';
    can.Personality_RFA_Data_HS.FeatConfigRfaActl_UB     =    (bitget(bb(5,:),5))';
    can.Personality_RFA_Data_HS.units.PersIndexRfa_D_Actl     =  'SED';
    can.Personality_RFA_Data_HS.PersIndexRfa_D_Actl     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.Personality_RFA_Data_HS.units.FeatNoRfaActl     =  'Number';
    can.Personality_RFA_Data_HS.FeatNoRfaActl     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.Personality_RFA_Data_HS.units.FeatConfigRfaActl     =  'Undefined';
    can.Personality_RFA_Data_HS.FeatConfigRfaActl     =    (2^8 * bb(1,:) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_APIM_Data2
% Hex ID:3EA
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3EA = hex2dec('3EA');

ix=find(msg == MSG_3EA);          % Find all message 0x3EA's
if ~isempty(ix)                   % If there are any ...
    can.Personality_APIM_Data2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3EA messages
    can.Personality_APIM_Data2.nsamples      = length(ix);
    can.Personality_APIM_Data2.ctime         = cantime(ix);

    can.Personality_APIM_Data2.units.PersIndexApim_D_Actl     =  'SED';
    can.Personality_APIM_Data2.PersIndexApim_D_Actl     =    (bitand(bitshift(bb(8,:),-5),7))' ;
    can.Personality_APIM_Data2.units.FeatNoApimActl     =  'Number';
    can.Personality_APIM_Data2.FeatNoApimActl     =    (2^8 * bb(5,:) + bb(6,:))' ;
    can.Personality_APIM_Data2.units.FeatConfigApimActl     =  'Number';
    can.Personality_APIM_Data2.FeatConfigApimActl     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.Personality_APIM_Data2.units.CntrStkKeycodeActl     =  'Undefined';
    can.Personality_APIM_Data2.CntrStkKeycodeActl     =    (2^8 * bb(1,:) + bb(2,:))' ;
    can.Personality_APIM_Data2.units.CntrStk_D_RqRecall     =  'SED';
    can.Personality_APIM_Data2.CntrStk_D_RqRecall     =    (bitand(bitshift(bb(7,:),-2),7))' ;
    can.Personality_APIM_Data2.units.CntrStk_D_RqAssoc     =  'SED';
    can.Personality_APIM_Data2.CntrStk_D_RqAssoc     =    (bitand(bitshift(bb(7,:),-5),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_IPC_Data_2
% Hex ID:3EB
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3EB = hex2dec('3EB');

ix=find(msg == MSG_3EB);          % Find all message 0x3EB's
if ~isempty(ix)                   % If there are any ...
    can.Personality_IPC_Data_2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3EB messages
    can.Personality_IPC_Data_2.nsamples      = length(ix);
    can.Personality_IPC_Data_2.ctime         = cantime(ix);

    can.Personality_IPC_Data_2.units.PersIndexIpc_D_Actl     =  'SED';
    can.Personality_IPC_Data_2.PersIndexIpc_D_Actl     =    (bitand(bb(5,:),7))' ;
    can.Personality_IPC_Data_2.units.FeatNoIpcActl     =  'Number';
    can.Personality_IPC_Data_2.FeatNoIpcActl     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.Personality_IPC_Data_2.units.FeatConfigIpcActl     =  'Undefined';
    can.Personality_IPC_Data_2.FeatConfigIpcActl     =    (2^8 * bb(1,:) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_DSM_Data_HS
% Hex ID:3EC
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3EC = hex2dec('3EC');

ix=find(msg == MSG_3EC);          % Find all message 0x3EC's
if ~isempty(ix)                   % If there are any ...
    can.Personality_DSM_Data_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3EC messages
    can.Personality_DSM_Data_HS.nsamples      = length(ix);
    can.Personality_DSM_Data_HS.ctime         = cantime(ix);

    can.Personality_DSM_Data_HS.units.PersIndexDsm_D_Actl_UB     =  'SED';
    can.Personality_DSM_Data_HS.PersIndexDsm_D_Actl_UB     =    (bitget(bb(5,:),3))';
    can.Personality_DSM_Data_HS.units.PersIndexDsm_D_Actl     =  'SED';
    can.Personality_DSM_Data_HS.PersIndexDsm_D_Actl     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.Personality_DSM_Data_HS.units.FeatNoDsmActl_UB     =  'SED';
    can.Personality_DSM_Data_HS.FeatNoDsmActl_UB     =    (bitget(bb(5,:),4))';
    can.Personality_DSM_Data_HS.units.FeatNoDsmActl     =  'Number';
    can.Personality_DSM_Data_HS.FeatNoDsmActl     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.Personality_DSM_Data_HS.units.FeatConfigDsmActl_UB     =  'SED';
    can.Personality_DSM_Data_HS.FeatConfigDsmActl_UB     =    (bitget(bb(5,:),5))';
    can.Personality_DSM_Data_HS.units.FeatConfigDsmActl     =  'Undefined';
    can.Personality_DSM_Data_HS.FeatConfigDsmActl     =    (2^8 * bb(1,:) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Personality_RHVAC_Data_HS
% Hex ID:3ED
% Last edited by: selwart
% Date:26-Apr-2011
MSG_3ED = hex2dec('3ED');

ix=find(msg == MSG_3ED);          % Find all message 0x3ED's
if ~isempty(ix)                   % If there are any ...
    can.Personality_RHVAC_Data_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x3ED messages
    can.Personality_RHVAC_Data_HS.nsamples      = length(ix);
    can.Personality_RHVAC_Data_HS.ctime         = cantime(ix);

    can.Personality_RHVAC_Data_HS.units.PersIndexRhvac_D_Actl_UB     =  'SED';
    can.Personality_RHVAC_Data_HS.PersIndexRhvac_D_Actl_UB     =    (bitget(bb(5,:),3))';
    can.Personality_RHVAC_Data_HS.units.FeatNoRhvacActl_UB     =  'SED';
    can.Personality_RHVAC_Data_HS.FeatNoRhvacActl_UB     =    (bitget(bb(5,:),2))';
    can.Personality_RHVAC_Data_HS.units.FeatConfigRhvacActl_UB     =  'SED';
    can.Personality_RHVAC_Data_HS.FeatConfigRhvacActl_UB     =    (bitget(bb(5,:),1))';
    can.Personality_RHVAC_Data_HS.units.PersIndexRhvac_D_Actl     =  'SED';
    can.Personality_RHVAC_Data_HS.PersIndexRhvac_D_Actl     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.Personality_RHVAC_Data_HS.units.FeatNoRhvacActl     =  'Number';
    can.Personality_RHVAC_Data_HS.FeatNoRhvacActl     =    (2^8 * bb(3,:) + bb(4,:))' ;
    can.Personality_RHVAC_Data_HS.units.FeatConfigRhvacActl     =  'Undefined';
    can.Personality_RHVAC_Data_HS.FeatConfigRhvacActl     =    (2^8 * bb(1,:) + bb(2,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Diesel_Data_Legacy_1
% Hex ID:407
% Last edited by: selwart
% Date:26-Apr-2011
MSG_407 = hex2dec('407');

ix=find(msg == MSG_407);          % Find all message 0x407's
if ~isempty(ix)                   % If there are any ...
    can.Diesel_Data_Legacy_1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x407 messages
    can.Diesel_Data_Legacy_1.nsamples      = length(ix);
    can.Diesel_Data_Legacy_1.ctime         = cantime(ix);

    can.Diesel_Data_Legacy_1.units.W2S_COMMAND     =  'SED';
    can.Diesel_Data_Legacy_1.W2S_COMMAND     =    (bitget(bb(1,:),8))';
    can.Diesel_Data_Legacy_1.units.TURBO_BOOST     =  'PSI';
    can.Diesel_Data_Legacy_1.TURBO_BOOST     =    1.000000e-001*(2^8 * bitand(bb(1,:),3) + bb(2,:))' +-30.00;
    can.Diesel_Data_Legacy_1.units.IDLE_ENGINE_SHUTDOWN     =  'SED';
    can.Diesel_Data_Legacy_1.IDLE_ENGINE_SHUTDOWN     =    (bitand(bitshift(bb(6,:),-1),3))' ;
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
% Vector Message Name: Desired_Torq_BrkSys_Stat
% Hex ID:40C
% Last edited by: selwart
% Date:26-Apr-2011
MSG_40C = hex2dec('40C');

ix=find(msg == MSG_40C);          % Find all message 0x40C's
if ~isempty(ix)                   % If there are any ...
    can.Desired_Torq_BrkSys_Stat = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x40C messages
    can.Desired_Torq_BrkSys_Stat.nsamples      = length(ix);
    can.Desired_Torq_BrkSys_Stat.ctime         = cantime(ix);

    can.Desired_Torq_BrkSys_Stat.units.BRK_TC_TEMPORARILY_UNAVAIL     =  'SED';
    can.Desired_Torq_BrkSys_Stat.BRK_TC_TEMPORARILY_UNAVAIL     =    (bitget(bb(6,:),8))';
    can.Desired_Torq_BrkSys_Stat.units.TRLR_SWAY_EVNT_IN_PROGRESS     =  'SED';
    can.Desired_Torq_BrkSys_Stat.TRLR_SWAY_EVNT_IN_PROGRESS     =    (bitget(bb(3,:),7))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ADAPTIVE_HEADLAMP_STAT
% Hex ID:413
% Last edited by: selwart
% Date:26-Apr-2011
MSG_413 = hex2dec('413');

ix=find(msg == MSG_413);          % Find all message 0x413's
if ~isempty(ix)                   % If there are any ...
    can.ADAPTIVE_HEADLAMP_STAT = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x413 messages
    can.ADAPTIVE_HEADLAMP_STAT.nsamples      = length(ix);
    can.ADAPTIVE_HEADLAMP_STAT.ctime         = cantime(ix);

    can.ADAPTIVE_HEADLAMP_STAT.units.ADAPTIVE_HEADLAMP_FAILURE     =  'SED';
    can.ADAPTIVE_HEADLAMP_STAT.ADAPTIVE_HEADLAMP_FAILURE     =    (bitget(bb(1,:),8))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: AccelerationData
% Hex ID:414
% Last edited by: selwart
% Date:26-Apr-2011
MSG_414 = hex2dec('414');

ix=find(msg == MSG_414);          % Find all message 0x414's
if ~isempty(ix)                   % If there are any ...
    can.AccelerationData = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x414 messages
    can.AccelerationData.nsamples      = length(ix);
    can.AccelerationData.ctime         = cantime(ix);

    can.AccelerationData.units.VehVertComp_A_Actl     =  'm/s^2';
    can.AccelerationData.VehVertComp_A_Actl     =    1.000000e-002*(2^8 * bitand(bb(1,:),3) + bb(2,:))' +-0.40;
    can.AccelerationData.units.VehRolComp_W_Actl     =  'rad/s';
    can.AccelerationData.VehRolComp_W_Actl     =    2.000000e-004*(2^8 * bitand(bb(3,:),15) + bb(4,:))' +-0.82;
    can.AccelerationData.units.VehYawNonLin_W_Rq     =  'deg/s';
    can.AccelerationData.VehYawNonLin_W_Rq     =    3.663000e-002*(2^8 * bitand(bb(7,:),15) + bb(8,:))' +-75.00;
    can.AccelerationData.units.VehYawLin_W_Rq     =  'deg/s';
    can.AccelerationData.VehYawLin_W_Rq     =    3.663000e-002*(2^8 * bitand(bb(5,:),15) + bb(6,:))' +-75.00;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: BrakeSysFeatures
% Hex ID:415
% Last edited by: selwart
% Date:26-Apr-2011
MSG_415 = hex2dec('415');

ix=find(msg == MSG_415);          % Find all message 0x415's
if ~isempty(ix)                   % If there are any ...
    can.BrakeSysFeatures = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x415 messages
    can.BrakeSysFeatures.nsamples      = length(ix);
    can.BrakeSysFeatures.ctime         = cantime(ix);

    can.BrakeSysFeatures.units.TCMode     =  'SED';
    can.BrakeSysFeatures.TCMode     =    (bitget(bb(5,:),3))';
    can.BrakeSysFeatures.units.DrvSlipCtlLamp_D_Rq     =  'SED';
    can.BrakeSysFeatures.DrvSlipCtlLamp_D_Rq     =    (bitand(bitshift(bb(8,:),-6),3))' ;
    can.BrakeSysFeatures.units.RSCMode     =  'SED';
    can.BrakeSysFeatures.RSCMode     =    (bitget(bb(7,:),1))';
    can.BrakeSysFeatures.units.EBAMode     =  'SED';
    can.BrakeSysFeatures.EBAMode     =    (bitget(bb(6,:),1))';
    can.BrakeSysFeatures.units.DrvAntiLckLamp_D_Rq     =  'SED';
    can.BrakeSysFeatures.DrvAntiLckLamp_D_Rq     =    (bitand(bb(3,:),3))' ;
    can.BrakeSysFeatures.units.ChimeBrk_B_Rq     =  'SED';
    can.BrakeSysFeatures.ChimeBrk_B_Rq     =    (bitget(bb(5,:),7))';
    can.BrakeSysFeatures.units.BrkLamp_B_Rq     =  'SED';
    can.BrakeSysFeatures.BrkLamp_B_Rq     =    (bitget(bb(5,:),8))';
    can.BrakeSysFeatures.units.VehVActlBrk_No_Cs     =  'Unitless';
    can.BrakeSysFeatures.VehVActlBrk_No_Cs     =    (bb(4,:))' ;
    can.BrakeSysFeatures.units.VehVActlBrk_No_Cnt     =  'Unitless';
    can.BrakeSysFeatures.VehVActlBrk_No_Cnt     =    (bitand(bitshift(bb(3,:),-4),15))' ;
    can.BrakeSysFeatures.units.Veh_V_ActlBrk     =  'kph';
    can.BrakeSysFeatures.Veh_V_ActlBrk     =    1.000000e-002*(2^8 * bb(1,:) + bb(2,:))' ;
    can.BrakeSysFeatures.units.DrvSlipCtlMde_D_Ind     =  'SED';
    can.BrakeSysFeatures.DrvSlipCtlMde_D_Ind     =    (bitand(bb(5,:),3))' ;
    can.BrakeSysFeatures.units.VehRol_An_Dsply     =  'Degrees';
    can.BrakeSysFeatures.VehRol_An_Dsply     =    (bitand(bitshift(bb(7,:),-1),127))' +-64.00;
    can.BrakeSysFeatures.units.VehPtch_An_Dsply     =  'Degrees';
    can.BrakeSysFeatures.VehPtch_An_Dsply     =    (bitand(bitshift(bb(6,:),-1),127))' +-64.00;
    can.BrakeSysFeatures.units.VehVActlBrk_D_Qf     =  'SED';
    can.BrakeSysFeatures.VehVActlBrk_D_Qf     =    (bitand(bitshift(bb(3,:),-2),3))' ;
    can.BrakeSysFeatures.units.HILL_DESC_MC     =  'SED';
    can.BrakeSysFeatures.HILL_DESC_MC     =    (bitand(bitshift(bb(5,:),-3),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: BrakeSysFeatures_2
% Hex ID:416
% Last edited by: selwart
% Date:26-Apr-2011
MSG_416 = hex2dec('416');

ix=find(msg == MSG_416);          % Find all message 0x416's
if ~isempty(ix)                   % If there are any ...
    can.BrakeSysFeatures_2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x416 messages
    can.BrakeSysFeatures_2.nsamples      = length(ix);
    can.BrakeSysFeatures_2.ctime         = cantime(ix);

    can.BrakeSysFeatures_2.units.BpedMove_No_Cs     =  'Unitless';
    can.BrakeSysFeatures_2.BpedMove_No_Cs     =    (bb(3,:))' ;
    can.BrakeSysFeatures_2.units.BpedMove_No_Cnt     =  'Unitless';
    can.BrakeSysFeatures_2.BpedMove_No_Cnt     =    (bitand(bb(1,:),15))' ;
    can.BrakeSysFeatures_2.units.BpedMove_D_Actl     =  'SED';
    can.BrakeSysFeatures_2.BpedMove_D_Actl     =    (bitand(bitshift(bb(1,:),-6),3))' ;
    can.BrakeSysFeatures_2.units.AbsMduleAlive_No_Cnt     =  'Unitless';
    can.BrakeSysFeatures_2.AbsMduleAlive_No_Cnt     =    (bitand(bitshift(bb(5,:),-4),15))' ;
    can.BrakeSysFeatures_2.units.Abs_No_Cs     =  'Unitless';
    can.BrakeSysFeatures_2.Abs_No_Cs     =    (bb(4,:))' ;
    can.BrakeSysFeatures_2.units.BrkAsst_B_Actl     =  'SED';
    can.BrakeSysFeatures_2.BrkAsst_B_Actl     =    (bitget(bb(5,:),2))';
    can.BrakeSysFeatures_2.units.StabCtlBrk_B_Avail     =  'SED';
    can.BrakeSysFeatures_2.StabCtlBrk_B_Avail     =    (bitget(bb(1,:),5))';
    can.BrakeSysFeatures_2.units.DrvHdcWarnInfo_D_Rq     =  'Unitless';
    can.BrakeSysFeatures_2.DrvHdcWarnInfo_D_Rq     =    (bitand(bitshift(bb(5,:),-2),3))' ;
    can.BrakeSysFeatures_2.units.DrvHdcMsg_D_Rq     =  'SED';
    can.BrakeSysFeatures_2.DrvHdcMsg_D_Rq     =    (bitand(bb(2,:),7))' ;
    can.BrakeSysFeatures_2.units.DrvHdcLampInfo_D_Rq     =  'SED';
    can.BrakeSysFeatures_2.DrvHdcLampInfo_D_Rq     =    (bitand(bitshift(bb(2,:),-3),3))' ;
    can.BrakeSysFeatures_2.units.Abs_B_Falt     =  'SED';
    can.BrakeSysFeatures_2.Abs_B_Falt     =    (bitget(bb(1,:),6))';
    can.BrakeSysFeatures_2.units.VehLongComp_A_Actl     =  'm/s^2';
    can.BrakeSysFeatures_2.VehLongComp_A_Actl     =    3.500000e-002*(2^8 * bitand(bb(7,:),3) + bb(8,:))' +-17.90;
    can.BrakeSysFeatures_2.units.TRAILER_SWAY_CONFIG_STAT     =  'SED';
    can.BrakeSysFeatures_2.TRAILER_SWAY_CONFIG_STAT     =    (bitget(bb(5,:),1))';
    can.BrakeSysFeatures_2.units.VehLatComp_A_Actl     =  'm/s^2';
    can.BrakeSysFeatures_2.VehLatComp_A_Actl     =    3.500000e-002*(2^2 * bb(6,:) + bitand(bitshift(bb(7,:),-6),3))' +-17.90;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TractionCtrlStatus_CG1
% Hex ID:417
% Last edited by: selwart
% Date:26-Apr-2011
MSG_417 = hex2dec('417');

ix=find(msg == MSG_417);          % Find all message 0x417's
if ~isempty(ix)                   % If there are any ...
    can.TractionCtrlStatus_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x417 messages
    can.TractionCtrlStatus_CG1.nsamples      = length(ix);
    can.TractionCtrlStatus_CG1.ctime         = cantime(ix);

    can.TractionCtrlStatus_CG1.units.EngEotcCtlMde_B_Ind     =  'SED';
    can.TractionCtrlStatus_CG1.EngEotcCtlMde_B_Ind     =    (bitget(bb(1,:),4))';
    can.TractionCtrlStatus_CG1.units.YawStabilityIndex     =  '%';
    can.TractionCtrlStatus_CG1.YawStabilityIndex     =    (2^8 * bitand(bb(7,:),1) + bb(8,:))' +-256.00;
    can.TractionCtrlStatus_CG1.units.TCS_ENG_FAILD     =  'SED';
    can.TractionCtrlStatus_CG1.TCS_ENG_FAILD     =    (bitget(bb(1,:),1))';
    can.TractionCtrlStatus_CG1.units.TCS_ENG_ONLY_PRESENT     =  'SED';
    can.TractionCtrlStatus_CG1.TCS_ENG_ONLY_PRESENT     =    (bitget(bb(1,:),2))';
    can.TractionCtrlStatus_CG1.units.TCS_BRK_FAILD     =  'SED';
    can.TractionCtrlStatus_CG1.TCS_BRK_FAILD     =    (bitget(bb(1,:),3))';
    can.TractionCtrlStatus_CG1.units.PrplWhlTqRqMn_No_Cnt     =  'Unitless';
    can.TractionCtrlStatus_CG1.PrplWhlTqRqMn_No_Cnt     =    (bitand(bitshift(bb(6,:),-4),15))' ;
    can.TractionCtrlStatus_CG1.units.PrplWhlTot_Tq_RqMn     =  'Nm';
    can.TractionCtrlStatus_CG1.PrplWhlTot_Tq_RqMn     =    4.000000e+000*(2^8 * bb(3,:) + bb(4,:))' +-131072.00;
    can.TractionCtrlStatus_CG1.units.EngEotcCtlLamp_D_Rq     =  'SED';
    can.TractionCtrlStatus_CG1.EngEotcCtlLamp_D_Rq     =    (bitand(bb(2,:),3))' ;
    can.TractionCtrlStatus_CG1.units.PrplWhlTqRqMn_No_Cs     =  'Unitless';
    can.TractionCtrlStatus_CG1.PrplWhlTqRqMn_No_Cs     =    (bb(5,:))' ;
    can.TractionCtrlStatus_CG1.units.HdcMde_D_Actl     =  'SED';
    can.TractionCtrlStatus_CG1.HdcMde_D_Actl     =    (bitand(bitshift(bb(2,:),-2),7))' ;
    can.TractionCtrlStatus_CG1.units.VehicleDir_D_Est     =  'SED';
    can.TractionCtrlStatus_CG1.VehicleDir_D_Est     =    (bitand(bitshift(bb(1,:),-4),3))' ;
    can.TractionCtrlStatus_CG1.units.TracCtlPtActv_B_Actl     =  'SED';
    can.TractionCtrlStatus_CG1.TracCtlPtActv_B_Actl     =    (bitget(bb(1,:),7))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: PowertrainData_1_CG1
% Hex ID:420
% Last edited by: selwart
% Date:26-Apr-2011
MSG_420 = hex2dec('420');

ix=find(msg == MSG_420);          % Find all message 0x420's
if ~isempty(ix)                   % If there are any ...
    can.PowertrainData_1_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x420 messages
    can.PowertrainData_1_CG1.nsamples      = length(ix);
    can.PowertrainData_1_CG1.ctime         = cantime(ix);

    can.PowertrainData_1_CG1.units.FUEL_ALCOHOL_PERCNT     =  'Percent';
    can.PowertrainData_1_CG1.FUEL_ALCOHOL_PERCNT     =    3.937008e-001*(bb(8,:))' ;
    can.PowertrainData_1_CG1.units.TrnTotTq_Rt_Est     =  'Unitless';
    can.PowertrainData_1_CG1.TrnTotTq_Rt_Est     =    1.000000e-003*(2^8 * bb(5,:) + bb(6,:))' ;
    can.PowertrainData_1_CG1.units.TrnTotLss_Tq_Est     =  'Nm';
    can.PowertrainData_1_CG1.TrnTotLss_Tq_Est     =    5.000000e-001*(bb(4,:))' ;
    can.PowertrainData_1_CG1.units.ECMMILRequest     =  'SED';
    can.PowertrainData_1_CG1.ECMMILRequest     =    (bitand(bb(2,:),3))' ;
    can.PowertrainData_1_CG1.units.AirCondFluidHi_P_Actl     =  'bar';
    can.PowertrainData_1_CG1.AirCondFluidHi_P_Actl     =    1.250000e-001*(bb(7,:))' ;
    can.PowertrainData_1_CG1.units.OilPressureWarning     =  'SED';
    can.PowertrainData_1_CG1.OilPressureWarning     =    (bitget(bb(3,:),3))';
    can.PowertrainData_1_CG1.units.CluPdlPos_Pc_Meas     =  '%';
    can.PowertrainData_1_CG1.CluPdlPos_Pc_Meas     =    1.000000e-001*(2^2 * bb(1,:) + bitand(bitshift(bb(2,:),-6),3))' ;
    can.PowertrainData_1_CG1.units.VehVLimStat_D_Actl     =  'SED';
    can.PowertrainData_1_CG1.VehVLimStat_D_Actl     =    (bitand(bitshift(bb(2,:),-2),7))' ;
    can.PowertrainData_1_CG1.units.VehVLimActv_B_Actl     =  'SED';
    can.PowertrainData_1_CG1.VehVLimActv_B_Actl     =    (bitget(bb(2,:),6))';
    can.PowertrainData_1_CG1.units.CluPdlPosPcMeas_D_Qf     =  'SED';
    can.PowertrainData_1_CG1.CluPdlPosPcMeas_D_Qf     =    (bitand(bb(3,:),3))' ;
    can.PowertrainData_1_CG1.units.CoolantFanStepAct     =  'Steps';
    can.PowertrainData_1_CG1.CoolantFanStepAct     =    (bitand(bitshift(bb(3,:),-3),31))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: PowertrainData_2_CG1
% Hex ID:422
% Last edited by: selwart
% Date:26-Apr-2011
MSG_422 = hex2dec('422');

ix=find(msg == MSG_422);          % Find all message 0x422's
if ~isempty(ix)                   % If there are any ...
    can.PowertrainData_2_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x422 messages
    can.PowertrainData_2_CG1.nsamples      = length(ix);
    can.PowertrainData_2_CG1.ctime         = cantime(ix);

    can.PowertrainData_2_CG1.units.EngIdlShutDown_D_Stat     =  'SED';
    can.PowertrainData_2_CG1.EngIdlShutDown_D_Stat     =    (bitand(bitshift(bb(3,:),-2),3))' ;
    can.PowertrainData_2_CG1.units.EngAout2_Tq_Actl     =  'Nm';
    can.PowertrainData_2_CG1.EngAout2_Tq_Actl     =    (2^3 * bb(7,:) + bitand(bitshift(bb(8,:),-5),7))' +-500.00;
    can.PowertrainData_2_CG1.units.EngMsgTxt_D_Rq     =  'SED';
    can.PowertrainData_2_CG1.EngMsgTxt_D_Rq     =    (bitand(bitshift(bb(3,:),-4),3))' ;
    can.PowertrainData_2_CG1.units.EngClnt_Te_ActlDiag     =  'degC';
    can.PowertrainData_2_CG1.EngClnt_Te_ActlDiag     =    (bb(5,:))' +-40.00;
    can.PowertrainData_2_CG1.units.ThrPos_Pc_CalcDiag     =  '%';
    can.PowertrainData_2_CG1.ThrPos_Pc_CalcDiag     =    3.921570e-001*(bb(1,:))' ;
    can.PowertrainData_2_CG1.units.EngLoad_Pc_CalcDiag     =  '%';
    can.PowertrainData_2_CG1.EngLoad_Pc_CalcDiag     =    3.921570e-001*(bb(6,:))' ;
    can.PowertrainData_2_CG1.units.EngAirIn_Te_Actl     =  'degC';
    can.PowertrainData_2_CG1.EngAirIn_Te_Actl     =    2.500000e-001*(2^2 * bb(2,:) + bitand(bitshift(bb(3,:),-6),3))' +-128.00;
    can.PowertrainData_2_CG1.units.ApedPos_Pc_ActlDiag     =  '%';
    can.PowertrainData_2_CG1.ApedPos_Pc_ActlDiag     =    3.921570e-001*(bb(4,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: StrgWheel_PolicePkg
% Hex ID:428
% Last edited by: selwart
% Date:26-Apr-2011
MSG_428 = hex2dec('428');

ix=find(msg == MSG_428);          % Find all message 0x428's
if ~isempty(ix)                   % If there are any ...
    can.StrgWheel_PolicePkg = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x428 messages
    can.StrgWheel_PolicePkg.nsamples      = length(ix);
    can.StrgWheel_PolicePkg.ctime         = cantime(ix);

    can.StrgWheel_PolicePkg.units.PoliceAux4Lamp_B_Rq     =  'SED';
    can.StrgWheel_PolicePkg.PoliceAux4Lamp_B_Rq     =    (bitget(bb(1,:),5))';
    can.StrgWheel_PolicePkg.units.PoliceAux3Lamp_B_Rq     =  'SED';
    can.StrgWheel_PolicePkg.PoliceAux3Lamp_B_Rq     =    (bitget(bb(1,:),6))';
    can.StrgWheel_PolicePkg.units.PoliceAux2Lamp_B_Rq     =  'SED';
    can.StrgWheel_PolicePkg.PoliceAux2Lamp_B_Rq     =    (bitget(bb(1,:),7))';
    can.StrgWheel_PolicePkg.units.PoliceAux1Lamp_B_Rq     =  'SED';
    can.StrgWheel_PolicePkg.PoliceAux1Lamp_B_Rq     =    (bitget(bb(1,:),8))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Battery_Mgmt_1
% Hex ID:42B
% Last edited by: selwart
% Date:26-Apr-2011
MSG_42B = hex2dec('42B');

ix=find(msg == MSG_42B);          % Find all message 0x42B's
if ~isempty(ix)                   % If there are any ...
    can.Battery_Mgmt_1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x42B messages
    can.Battery_Mgmt_1.nsamples      = length(ix);
    can.Battery_Mgmt_1.ctime         = cantime(ix);

    can.Battery_Mgmt_1.units.AlternatorExcDutyCycle     =  '%';
    can.Battery_Mgmt_1.AlternatorExcDutyCycle     =    3.225810e+000*(bitand(bitshift(bb(4,:),-3),31))' ;
    can.Battery_Mgmt_1.units.EngineEffStatus     =  'SED';
    can.Battery_Mgmt_1.EngineEffStatus     =    (bitand(bitshift(bb(5,:),-6),3))' ;
    can.Battery_Mgmt_1.units.AvailableCurrentAtIdle     =  'Amps';
    can.Battery_Mgmt_1.AvailableCurrentAtIdle     =    (bb(3,:))' ;
    can.Battery_Mgmt_1.units.AvailableCurrent     =  'Amps';
    can.Battery_Mgmt_1.AvailableCurrent     =    (bb(2,:))' ;
    can.Battery_Mgmt_1.units.ActualCurrent     =  'Amps';
    can.Battery_Mgmt_1.ActualCurrent     =    (bb(1,:))' ;
    can.Battery_Mgmt_1.units.NoAlternatorResponse     =  'SED';
    can.Battery_Mgmt_1.NoAlternatorResponse     =    (bitget(bb(4,:),3))';
    can.Battery_Mgmt_1.units.AlternatorTempFault     =  'SED';
    can.Battery_Mgmt_1.AlternatorTempFault     =    (bitget(bb(4,:),2))';
    can.Battery_Mgmt_1.units.AlternatorMechFault     =  'SED';
    can.Battery_Mgmt_1.AlternatorMechFault     =    (bitget(bb(4,:),1))';
    can.Battery_Mgmt_1.units.AlternatorElFault     =  'SED';
    can.Battery_Mgmt_1.AlternatorElFault     =    (bitget(bb(5,:),6))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Battery_Mgmt_2
% Hex ID:42C
% Last edited by: selwart
% Date:26-Apr-2011
MSG_42C = hex2dec('42C');

ix=find(msg == MSG_42C);          % Find all message 0x42C's
if ~isempty(ix)                   % If there are any ...
    can.Battery_Mgmt_2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x42C messages
    can.Battery_Mgmt_2.nsamples      = length(ix);
    can.Battery_Mgmt_2.ctime         = cantime(ix);

    can.Battery_Mgmt_2.units.ChargeMode     =  'SED';
    can.Battery_Mgmt_2.ChargeMode     =    (bitand(bitshift(bb(5,:),-5),7))' ;
    can.Battery_Mgmt_2.units.ChargeVoltageReq     =  'Volts';
    can.Battery_Mgmt_2.ChargeVoltageReq     =    1.000000e-001*(bitand(bitshift(bb(1,:),-2),63))' +10.60;
    can.Battery_Mgmt_2.units.ChargeVoltageReqMax     =  'Volts';
    can.Battery_Mgmt_2.ChargeVoltageReqMax     =    1.000000e-001*(bitand(bitshift(bb(3,:),-2),63))' +10.60;
    can.Battery_Mgmt_2.units.FrontBatteryTemp     =  'DegC';
    can.Battery_Mgmt_2.FrontBatteryTemp     =    (bb(6,:))' +-60.00;
    can.Battery_Mgmt_2.units.IBoost_Msg     =  'SED';
    can.Battery_Mgmt_2.IBoost_Msg     =    (bitand(bitshift(bb(7,:),-1),15))' ;
    can.Battery_Mgmt_2.units.IdleSpeedIncrease_El     =  'SED';
    can.Battery_Mgmt_2.IdleSpeedIncrease_El     =    (bitget(bb(2,:),1))';
    can.Battery_Mgmt_2.units.MaxLashStep     =  'Volts';
    can.Battery_Mgmt_2.MaxLashStep     =    1.000000e-001*(bitand(bitshift(bb(2,:),-1),7))' ;
    can.Battery_Mgmt_2.units.PowerSystemStatus     =  'SED';
    can.Battery_Mgmt_2.PowerSystemStatus     =    (bitand(bitshift(bb(2,:),-4),15))' ;
    can.Battery_Mgmt_2.units.Shed_T_Eng_Off_B     =  'SED';
    can.Battery_Mgmt_2.Shed_T_Eng_Off_B     =    (bitget(bb(3,:),2))';
    can.Battery_Mgmt_2.units.Shed_Level_Req     =  'SED';
    can.Battery_Mgmt_2.Shed_Level_Req     =    (bitand(bitshift(bb(7,:),-5),7))' ;
    can.Battery_Mgmt_2.units.Shed_Feature_Group_ID     =  'SED';
    can.Battery_Mgmt_2.Shed_Feature_Group_ID     =    (bitand(bb(5,:),31))' ;
    can.Battery_Mgmt_2.units.Shed_Drain_Eng_Off_B     =  'SED';
    can.Battery_Mgmt_2.Shed_Drain_Eng_Off_B     =    (bitget(bb(3,:),1))';
    can.Battery_Mgmt_2.units.Batt_Lo_SoC_B     =  'SED';
    can.Battery_Mgmt_2.Batt_Lo_SoC_B     =    (bitget(bb(4,:),2))';
    can.Battery_Mgmt_2.units.VoltageRampRateUpMax     =  'Volts/sec';
    can.Battery_Mgmt_2.VoltageRampRateUpMax     =    1.000000e-001*(bitand(bitshift(bb(4,:),-2),63))' ;
    can.Battery_Mgmt_2.units.Batt_Crit_SoC_B     =  'SED';
    can.Battery_Mgmt_2.Batt_Crit_SoC_B     =    (bitget(bb(4,:),1))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Battery_Mgmt_3
% Hex ID:42D
% Last edited by: selwart
% Date:26-Apr-2011
MSG_42D = hex2dec('42D');

ix=find(msg == MSG_42D);          % Find all message 0x42D's
if ~isempty(ix)                   % If there are any ...
    can.Battery_Mgmt_3 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x42D messages
    can.Battery_Mgmt_3.nsamples      = length(ix);
    can.Battery_Mgmt_3.ctime         = cantime(ix);

    can.Battery_Mgmt_3.units.BSFault     =  'unitless';
    can.Battery_Mgmt_3.BSFault     =    (bitget(bb(3,:),8))';
    can.Battery_Mgmt_3.units.BSBattSOC     =  '%';
    can.Battery_Mgmt_3.BSBattSOC     =    (bitand(bb(4,:),127))' ;
    can.Battery_Mgmt_3.units.BSBattQDeltaRideAh     =  'Ah';
    can.Battery_Mgmt_3.BSBattQDeltaRideAh     =    7.812500e-003*(2^8 * bitand(bb(5,:),127) + bb(6,:))' +-100.00;
    can.Battery_Mgmt_3.units.BSBattQCapAh     =  'Ah';
    can.Battery_Mgmt_3.BSBattQCapAh     =    (bitand(bb(3,:),127))' ;
    can.Battery_Mgmt_3.units.BSBattCurrent     =  'Amps';
    can.Battery_Mgmt_3.BSBattCurrent     =    6.250000e-002*(2^8 * bitand(bb(1,:),63) + bb(2,:))' +-512.00;
    can.Battery_Mgmt_3.units.BattULoState_D_Qlty     =  'SED';
    can.Battery_Mgmt_3.BattULoState_D_Qlty     =    (bitand(bitshift(bb(1,:),-6),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Cluster_Information
% Hex ID:430
% Last edited by: selwart
% Date:26-Apr-2011
MSG_430 = hex2dec('430');

ix=find(msg == MSG_430);          % Find all message 0x430's
if ~isempty(ix)                   % If there are any ...
    can.Cluster_Information = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x430 messages
    can.Cluster_Information.nsamples      = length(ix);
    can.Cluster_Information.ctime         = cantime(ix);

    can.Cluster_Information.units.ManRgen_D_Rq     =  'SED';
    can.Cluster_Information.ManRgen_D_Rq     =    (bitand(bitshift(bb(1,:),-4),3))' ;
    can.Cluster_Information.units.Easy_Entry_Exit_Cmd     =  'SED';
    can.Cluster_Information.Easy_Entry_Exit_Cmd     =    (bitget(bb(7,:),2))';
    can.Cluster_Information.units.KeyTypeChngMykey_D_Rq     =  'SED';
    can.Cluster_Information.KeyTypeChngMykey_D_Rq     =    (bitand(bitshift(bb(7,:),-4),3))' ;
    can.Cluster_Information.units.DrvSlipCtlMde_B_Rq     =  'SED';
    can.Cluster_Information.DrvSlipCtlMde_B_Rq     =    (bitget(bb(3,:),4))';
    can.Cluster_Information.units.MetricActv_B_Actl     =  'SED';
    can.Cluster_Information.MetricActv_B_Actl     =    (bitget(bb(1,:),7))';
    can.Cluster_Information.units.LdwDfaltOn_B_Actl     =  'SED';
    can.Cluster_Information.LdwDfaltOn_B_Actl     =    (bitget(bb(1,:),1))';
    can.Cluster_Information.units.Fda_B_Stat     =  'SED';
    can.Cluster_Information.Fda_B_Stat     =    (bitget(bb(2,:),2))';
    can.Cluster_Information.units.ePRNDL_MODE     =  'SED';
    can.Cluster_Information.ePRNDL_MODE     =    (bitget(bb(2,:),1))';
    can.Cluster_Information.units.AccDeny_B_RqIpc     =  'SED';
    can.Cluster_Information.AccDeny_B_RqIpc     =    (bitget(bb(1,:),8))';
    can.Cluster_Information.units.MetricActvTe_B_Actl     =  'SED';
    can.Cluster_Information.MetricActvTe_B_Actl     =    (bitget(bb(3,:),8))';
    can.Cluster_Information.units.EngOilLife_B_RqReset     =  'SED';
    can.Cluster_Information.EngOilLife_B_RqReset     =    (bitget(bb(3,:),3))';
    can.Cluster_Information.units.OdometerMasterValue     =  'km';
    can.Cluster_Information.OdometerMasterValue     =    (2^16 * bb(4,:) + 2^8 * bb(5,:) + bb(6,:))' ;
    can.Cluster_Information.units.New_Module_Attn_Event     =  'SED';
    can.Cluster_Information.New_Module_Attn_Event     =    (bitget(bb(8,:),1))';
    can.Cluster_Information.units.TRAILER_SWAY_CONFIG_CMD     =  'SED';
    can.Cluster_Information.TRAILER_SWAY_CONFIG_CMD     =    (bitget(bb(8,:),5))';
    can.Cluster_Information.units.ParkDetect_Stat     =  'SED';
    can.Cluster_Information.ParkDetect_Stat     =    (bitget(bb(8,:),7))';
    can.Cluster_Information.units.Attn_Info_Audio     =  'SED';
    can.Cluster_Information.Attn_Info_Audio     =    (bitand(bitshift(bb(8,:),-1),7))' ;
    can.Cluster_Information.units.TrlrBrkMde_D_Rq     =  'SED';
    can.Cluster_Information.TrlrBrkMde_D_Rq     =    (bitget(bb(8,:),6))';
    can.Cluster_Information.units.TRAILER_BRAKE_CONFIG     =  'SED';
    can.Cluster_Information.TRAILER_BRAKE_CONFIG     =    (bitget(bb(7,:),1))';
    can.Cluster_Information.units.VehMykey_Vl_LimRq     =  'SED';
    can.Cluster_Information.VehMykey_Vl_LimRq     =    (bitget(bb(8,:),8))';
    can.Cluster_Information.units.VehMykey_V_LimRqMx     =  'SED';
    can.Cluster_Information.VehMykey_V_LimRqMx     =    (bitget(bb(7,:),4))';
    can.Cluster_Information.units.EmgcyCallAsstMykey_Rq     =  'SED';
    can.Cluster_Information.EmgcyCallAsstMykey_Rq     =    (bitget(bb(7,:),3))';
    can.Cluster_Information.units.DrvSlipCtlMde_D_Rq     =  'SED';
    can.Cluster_Information.DrvSlipCtlMde_D_Rq     =    (bitand(bb(3,:),3))' ;
    can.Cluster_Information.units.AccEnbl_B_RqDrv     =  'SED';
    can.Cluster_Information.AccEnbl_B_RqDrv     =    (bitget(bb(3,:),5))';
    can.Cluster_Information.units.AutoHighBeam_Cmd     =  'SED';
    can.Cluster_Information.AutoHighBeam_Cmd     =    (bitand(bitshift(bb(7,:),-6),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Cluster_Information_3_CG1
% Hex ID:433
% Last edited by: selwart
% Date:26-Apr-2011
MSG_433 = hex2dec('433');

ix=find(msg == MSG_433);          % Find all message 0x433's
if ~isempty(ix)                   % If there are any ...
    can.Cluster_Information_3_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x433 messages
    can.Cluster_Information_3_CG1.nsamples      = length(ix);
    can.Cluster_Information_3_CG1.ctime         = cantime(ix);

    can.Cluster_Information_3_CG1.units.CamraFrntStat_D_Rq     =  'SED';
    can.Cluster_Information_3_CG1.CamraFrntStat_D_Rq     =    (bitget(bb(8,:),3))';
    can.Cluster_Information_3_CG1.units.DieslFuelBio_B_ActlDrv     =  'SED';
    can.Cluster_Information_3_CG1.DieslFuelBio_B_ActlDrv     =    (bitget(bb(8,:),1))';
    can.Cluster_Information_3_CG1.units.RearCameraDelayCmd     =  'SED';
    can.Cluster_Information_3_CG1.RearCameraDelayCmd     =    (bitget(bb(8,:),4))';
    can.Cluster_Information_3_CG1.units.UreaWarnReset     =  'SED';
    can.Cluster_Information_3_CG1.UreaWarnReset     =    (bitget(bb(8,:),5))';
    can.Cluster_Information_3_CG1.units.DistanceBarSetting     =  'SED';
    can.Cluster_Information_3_CG1.DistanceBarSetting     =    (bitget(bb(7,:),2))';
    can.Cluster_Information_3_CG1.units.CamraZoomMan_D_Rq     =  'SED';
    can.Cluster_Information_3_CG1.CamraZoomMan_D_Rq     =    (bitand(bitshift(bb(8,:),-5),7))' ;
    can.Cluster_Information_3_CG1.units.CamraOvrlStat_D_Rq     =  'SED';
    can.Cluster_Information_3_CG1.CamraOvrlStat_D_Rq     =    (bitget(bb(7,:),1))';
    can.Cluster_Information_3_CG1.units.CamraOvrlDyn_D_Rq     =  'SED';
    can.Cluster_Information_3_CG1.CamraOvrlDyn_D_Rq     =    (bitget(bb(4,:),2))';
    can.Cluster_Information_3_CG1.units.CamAutoTowbarZoom     =  'SED';
    can.Cluster_Information_3_CG1.CamAutoTowbarZoom     =    (bitget(bb(4,:),1))';
    can.Cluster_Information_3_CG1.units.FuelSecndActv_B_Actl     =  'SED';
    can.Cluster_Information_3_CG1.FuelSecndActv_B_Actl     =    (bitget(bb(5,:),8))';
    can.Cluster_Information_3_CG1.units.HILL_DESC_SW     =  'SED';
    can.Cluster_Information_3_CG1.HILL_DESC_SW     =    (bitget(bb(5,:),7))';
    can.Cluster_Information_3_CG1.units.FuelLvlPssvSide_No_Raw     =  'Unitless';
    can.Cluster_Information_3_CG1.FuelLvlPssvSide_No_Raw     =    (2^6 * bitand(bb(3,:),15) + bitand(bitshift(bb(4,:),-2),63))' ;
    can.Cluster_Information_3_CG1.units.SPDJBCompassCMDDecalibrate     =  '';
    can.Cluster_Information_3_CG1.SPDJBCompassCMDDecalibrate     =    (bitget(bb(7,:),3))';
    can.Cluster_Information_3_CG1.units.SPDJBCompassCMDChangeZone     =  '';
    can.Cluster_Information_3_CG1.SPDJBCompassCMDChangeZone     =    (bitget(bb(7,:),4))';
    can.Cluster_Information_3_CG1.units.SPDJBCompassCmdDesiredZone     =  '';
    can.Cluster_Information_3_CG1.SPDJBCompassCmdDesiredZone     =    (bitand(bitshift(bb(7,:),-4),15))' ;
    can.Cluster_Information_3_CG1.units.FUEL_SENSOR_NUM     =  'SED';
    can.Cluster_Information_3_CG1.FUEL_SENSOR_NUM     =    (bitget(bb(5,:),4))';
    can.Cluster_Information_3_CG1.units.W2S_LAMP_OK     =  'SED';
    can.Cluster_Information_3_CG1.W2S_LAMP_OK     =    (bitget(bb(5,:),6))';
    can.Cluster_Information_3_CG1.units.Beltminder_Warn_Stats_IPC     =  'SED';
    can.Cluster_Information_3_CG1.Beltminder_Warn_Stats_IPC     =    (bitget(bb(5,:),1))';
    can.Cluster_Information_3_CG1.units.FuelLvlActvSide_No_Raw     =  'Unitless';
    can.Cluster_Information_3_CG1.FuelLvlActvSide_No_Raw     =    (2^4 * bitand(bb(2,:),63) + bitand(bitshift(bb(3,:),-4),15))' ;
    can.Cluster_Information_3_CG1.units.FuelLvl_Pc_Dsply     =  'Percent';
    can.Cluster_Information_3_CG1.FuelLvl_Pc_Dsply     =    1.086960e-001*(2^2 * bb(1,:) + bitand(bitshift(bb(2,:),-6),3))' +-5.22;
    can.Cluster_Information_3_CG1.units.FUEL_LVL_PER_MEAN     =  '% Indication';
    can.Cluster_Information_3_CG1.FUEL_LVL_PER_MEAN     =    4.347830e-001*(bb(6,:))' +-5.22;
    can.Cluster_Information_3_CG1.units.Fuel_Level_State     =  'SED';
    can.Cluster_Information_3_CG1.Fuel_Level_State     =    (bitand(bitshift(bb(5,:),-1),3))' ;
    can.Cluster_Information_3_CG1.units.H2O_IN_FUEL_LAMP_OK_OBD     =  'SED';
    can.Cluster_Information_3_CG1.H2O_IN_FUEL_LAMP_OK_OBD     =    (bitget(bb(5,:),5))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TrailerBrakeInfo
% Hex ID:445
% Last edited by: selwart
% Date:26-Apr-2011
MSG_445 = hex2dec('445');

ix=find(msg == MSG_445);          % Find all message 0x445's
if ~isempty(ix)                   % If there are any ...
    can.TrailerBrakeInfo = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x445 messages
    can.TrailerBrakeInfo.nsamples      = length(ix);
    can.TrailerBrakeInfo.ctime         = cantime(ix);

    can.TrailerBrakeInfo.units.TrlrLampCnnct_B_Actl     =  'SED';
    can.TrailerBrakeInfo.TrlrLampCnnct_B_Actl     =    (bitget(bb(3,:),7))';
    can.TrailerBrakeInfo.units.TrlrBrkActCnnct_B_Actl     =  'SED';
    can.TrailerBrakeInfo.TrlrBrkActCnnct_B_Actl     =    (bitget(bb(3,:),1))';
    can.TrailerBrakeInfo.units.StopLamp_B_RqTrlrBrk     =  'SED';
    can.TrailerBrakeInfo.StopLamp_B_RqTrlrBrk     =    (bitget(bb(1,:),8))';
    can.TrailerBrakeInfo.units.TrlrBrkOut_No_Dsply     =  'Unitless';
    can.TrailerBrakeInfo.TrlrBrkOut_No_Dsply     =    (bitand(bb(1,:),15))' ;
    can.TrailerBrakeInfo.units.TrlrBrkGain_No_Actl     =  'Unitless';
    can.TrailerBrakeInfo.TrlrBrkGain_No_Actl     =    5.000000e-001*(bitand(bitshift(bb(3,:),-1),31))' ;
    can.TrailerBrakeInfo.units.TrlrBrkDsply_B_Rq     =  'SED';
    can.TrailerBrakeInfo.TrlrBrkDsply_B_Rq     =    (bitget(bb(1,:),7))';
    can.TrailerBrakeInfo.units.TrlrBrkDcnnt_B_Actl     =  'SED';
    can.TrailerBrakeInfo.TrlrBrkDcnnt_B_Actl     =    (bitget(bb(1,:),6))';
    can.TrailerBrakeInfo.units.TrlrBrkCtl_B_Falt     =  'SED';
    can.TrailerBrakeInfo.TrlrBrkCtl_B_Falt     =    (bitget(bb(1,:),5))';
    can.TrailerBrakeInfo.units.TrlrBrkActCirct_B_Falt     =  'SED';
    can.TrailerBrakeInfo.TrlrBrkActCirct_B_Falt     =    (bitget(bb(5,:),8))';
    can.TrailerBrakeInfo.units.TrlrBrkMde_D_Actl     =  'SED';
    can.TrailerBrakeInfo.TrlrBrkMde_D_Actl     =    (bitget(bb(3,:),8))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: SHCM_Status
% Hex ID:450
% Last edited by: selwart
% Date:26-Apr-2011
MSG_450 = hex2dec('450');

ix=find(msg == MSG_450);          % Find all message 0x450's
if ~isempty(ix)                   % If there are any ...
    can.SHCM_Status = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x450 messages
    can.SHCM_Status.nsamples      = length(ix);
    can.SHCM_Status.ctime         = cantime(ix);

    can.SHCM_Status.units.CURRENT_DRAW     =  'Amps';
    can.SHCM_Status.CURRENT_DRAW     =    5.000000e-001*(bb(2,:))' ;
    can.SHCM_Status.units.SECONDARY_HEATER_STAT     =  'SED';
    can.SHCM_Status.SECONDARY_HEATER_STAT     =    (bitget(bb(1,:),8))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: PassengerOCSSerialNum
% Hex ID:453
% Last edited by: selwart
% Date:26-Apr-2011
MSG_453 = hex2dec('453');

ix=find(msg == MSG_453);          % Find all message 0x453's
if ~isempty(ix)                   % If there are any ...
    can.PassengerOCSSerialNum = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x453 messages
    can.PassengerOCSSerialNum.nsamples      = length(ix);
    can.PassengerOCSSerialNum.ctime         = cantime(ix);

    can.PassengerOCSSerialNum.units.OCSSerialNoByte8     =  'Unitless';
    can.PassengerOCSSerialNum.OCSSerialNoByte8     =    (bb(8,:))' ;
    can.PassengerOCSSerialNum.units.OCSSerialNoByte7     =  'Unitless';
    can.PassengerOCSSerialNum.OCSSerialNoByte7     =    (bb(7,:))' ;
    can.PassengerOCSSerialNum.units.OCSSerialNoByte6     =  'Unitless';
    can.PassengerOCSSerialNum.OCSSerialNoByte6     =    (bb(6,:))' ;
    can.PassengerOCSSerialNum.units.OCSSerialNoByte5     =  'Unitless';
    can.PassengerOCSSerialNum.OCSSerialNoByte5     =    (bb(5,:))' ;
    can.PassengerOCSSerialNum.units.OCSSerialNoByte4     =  'Unitless';
    can.PassengerOCSSerialNum.OCSSerialNoByte4     =    (bb(4,:))' ;
    can.PassengerOCSSerialNum.units.OCSSerialNoByte3     =  'Unitless';
    can.PassengerOCSSerialNum.OCSSerialNoByte3     =    (bb(3,:))' ;
    can.PassengerOCSSerialNum.units.OCSSerialNoByte2     =  'Unitless';
    can.PassengerOCSSerialNum.OCSSerialNoByte2     =    (bb(2,:))' ;
    can.PassengerOCSSerialNum.units.OCSSerialNoByte1     =  'Unitless';
    can.PassengerOCSSerialNum.OCSSerialNoByte1     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RCMSerialNumber
% Hex ID:454
% Last edited by: selwart
% Date:26-Apr-2011
MSG_454 = hex2dec('454');

ix=find(msg == MSG_454);          % Find all message 0x454's
if ~isempty(ix)                   % If there are any ...
    can.RCMSerialNumber = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x454 messages
    can.RCMSerialNumber.nsamples      = length(ix);
    can.RCMSerialNumber.ctime         = cantime(ix);

    can.RCMSerialNumber.units.RCMSerialNoByte8     =  'Unitless';
    can.RCMSerialNumber.RCMSerialNoByte8     =    (bb(8,:))' ;
    can.RCMSerialNumber.units.RCMSerialNoByte7     =  'Unitless';
    can.RCMSerialNumber.RCMSerialNoByte7     =    (bb(7,:))' ;
    can.RCMSerialNumber.units.RCMSerialNoByte6     =  'Unitless';
    can.RCMSerialNumber.RCMSerialNoByte6     =    (bb(6,:))' ;
    can.RCMSerialNumber.units.RCMSerialNoByte5     =  'Unitless';
    can.RCMSerialNumber.RCMSerialNoByte5     =    (bb(5,:))' ;
    can.RCMSerialNumber.units.RCMSerialNoByte4     =  'Unitless';
    can.RCMSerialNumber.RCMSerialNoByte4     =    (bb(4,:))' ;
    can.RCMSerialNumber.units.RCMSerialNoByte3     =  'Unitless';
    can.RCMSerialNumber.RCMSerialNoByte3     =    (bb(3,:))' ;
    can.RCMSerialNumber.units.RCMSerialNoByte2     =  'Unitless';
    can.RCMSerialNumber.RCMSerialNoByte2     =    (bb(2,:))' ;
    can.RCMSerialNumber.units.RCMSerialNoByte1     =  'Unitless';
    can.RCMSerialNumber.RCMSerialNoByte1     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: eCall_Info
% Hex ID:455
% Last edited by: selwart
% Date:26-Apr-2011
MSG_455 = hex2dec('455');

ix=find(msg == MSG_455);          % Find all message 0x455's
if ~isempty(ix)                   % If there are any ...
    can.eCall_Info = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x455 messages
    can.eCall_Info.nsamples      = length(ix);
    can.eCall_Info.ctime         = cantime(ix);

    can.eCall_Info.units.eCallConfirmation     =  'SED';
    can.eCall_Info.eCallConfirmation     =    (bitand(bitshift(bb(1,:),-5),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: GPS_Data_Nav_1_HS
% Hex ID:465
% Last edited by: selwart
% Date:26-Apr-2011
MSG_465 = hex2dec('465');

ix=find(msg == MSG_465);          % Find all message 0x465's
if ~isempty(ix)                   % If there are any ...
    can.GPS_Data_Nav_1_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x465 messages
    can.GPS_Data_Nav_1_HS.nsamples      = length(ix);
    can.GPS_Data_Nav_1_HS.ctime         = cantime(ix);

    can.GPS_Data_Nav_1_HS.units.GpsHsphLattSth_D_Actl     =  'SED';
    can.GPS_Data_Nav_1_HS.GpsHsphLattSth_D_Actl     =    (bitand(bb(4,:),3))' ;
    can.GPS_Data_Nav_1_HS.units.GpsHsphLongEast_D_Actl     =  'SED';
    can.GPS_Data_Nav_1_HS.GpsHsphLongEast_D_Actl     =    (bitand(bb(2,:),3))' ;
    can.GPS_Data_Nav_1_HS.units.GPS_Longitude_Minutes     =  'Minutes';
    can.GPS_Data_Nav_1_HS.GPS_Longitude_Minutes     =    (bitand(bitshift(bb(6,:),-1),63))' ;
    can.GPS_Data_Nav_1_HS.units.GPS_Longitude_Min_dec     =  'Minutes';
    can.GPS_Data_Nav_1_HS.GPS_Longitude_Min_dec     =    1.000000e-004*(2^6 * bb(7,:) + bitand(bitshift(bb(8,:),-2),63))' ;
    can.GPS_Data_Nav_1_HS.units.GPS_Longitude_Degrees     =  'Degrees';
    can.GPS_Data_Nav_1_HS.GPS_Longitude_Degrees     =    (2^1 * bb(5,:) + bitand(bitshift(bb(6,:),-7),1))' +-179.00;
    can.GPS_Data_Nav_1_HS.units.GPS_Latitude_Minutes     =  'Minutes';
    can.GPS_Data_Nav_1_HS.GPS_Latitude_Minutes     =    (bitand(bitshift(bb(2,:),-2),63))' ;
    can.GPS_Data_Nav_1_HS.units.GPS_Latitude_Min_dec     =  'Minutes';
    can.GPS_Data_Nav_1_HS.GPS_Latitude_Min_dec     =    1.000000e-004*(2^6 * bb(3,:) + bitand(bitshift(bb(4,:),-2),63))' ;
    can.GPS_Data_Nav_1_HS.units.GPS_Latitude_Degrees     =  'Degrees';
    can.GPS_Data_Nav_1_HS.GPS_Latitude_Degrees     =    (bb(1,:))' +-89.00;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: GPS_Data_Nav_2_HS
% Hex ID:466
% Last edited by: selwart
% Date:26-Apr-2011
MSG_466 = hex2dec('466');

ix=find(msg == MSG_466);          % Find all message 0x466's
if ~isempty(ix)                   % If there are any ...
    can.GPS_Data_Nav_2_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x466 messages
    can.GPS_Data_Nav_2_HS.nsamples      = length(ix);
    can.GPS_Data_Nav_2_HS.ctime         = cantime(ix);

    can.GPS_Data_Nav_2_HS.units.Gps_B_Falt     =  'SED';
    can.GPS_Data_Nav_2_HS.Gps_B_Falt     =    (bitget(bb(1,:),3))';
    can.GPS_Data_Nav_2_HS.units.GpsUtcYr_No_Actl     =  'Year';
    can.GPS_Data_Nav_2_HS.GpsUtcYr_No_Actl     =    (bitand(bitshift(bb(7,:),-3),31))' +1.00;
    can.GPS_Data_Nav_2_HS.units.GpsUtcMnth_No_Actl     =  'Month';
    can.GPS_Data_Nav_2_HS.GpsUtcMnth_No_Actl     =    (bitand(bitshift(bb(6,:),-4),15))' +1.00;
    can.GPS_Data_Nav_2_HS.units.GpsUtcDay_No_Actl     =  'Day';
    can.GPS_Data_Nav_2_HS.GpsUtcDay_No_Actl     =    (bitand(bitshift(bb(5,:),-1),31))' +1.00;
    can.GPS_Data_Nav_2_HS.units.GPS_UTC_seconds     =  'seconds';
    can.GPS_Data_Nav_2_HS.GPS_UTC_seconds     =    (bitand(bitshift(bb(3,:),-2),63))' ;
    can.GPS_Data_Nav_2_HS.units.GPS_UTC_minutes     =  'Minutes';
    can.GPS_Data_Nav_2_HS.GPS_UTC_minutes     =    (bitand(bitshift(bb(2,:),-2),63))' ;
    can.GPS_Data_Nav_2_HS.units.GPS_UTC_hours     =  'Hours';
    can.GPS_Data_Nav_2_HS.GPS_UTC_hours     =    (bitand(bitshift(bb(1,:),-3),31))' ;
    can.GPS_Data_Nav_2_HS.units.GPS_Pdop     =  '';
    can.GPS_Data_Nav_2_HS.GPS_Pdop     =    2.000000e-001*(bitand(bitshift(bb(4,:),-3),31))' ;
    can.GPS_Data_Nav_2_HS.units.GPS_Compass_direction     =  'SED';
    can.GPS_Data_Nav_2_HS.GPS_Compass_direction     =    (2^1 * bitand(bb(4,:),7) + bitand(bitshift(bb(5,:),-7),1))' ;
    can.GPS_Data_Nav_2_HS.units.GPS_Actual_vs_Infer_pos     =  'SED';
    can.GPS_Data_Nav_2_HS.GPS_Actual_vs_Infer_pos     =    (bitget(bb(5,:),7))';
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: GPS_Data_Nav_3_HS
% Hex ID:467
% Last edited by: selwart
% Date:26-Apr-2011
MSG_467 = hex2dec('467');

ix=find(msg == MSG_467);          % Find all message 0x467's
if ~isempty(ix)                   % If there are any ...
    can.GPS_Data_Nav_3_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x467 messages
    can.GPS_Data_Nav_3_HS.nsamples      = length(ix);
    can.GPS_Data_Nav_3_HS.ctime         = cantime(ix);

    can.GPS_Data_Nav_3_HS.units.GPS_Vdop     =  '';
    can.GPS_Data_Nav_3_HS.GPS_Vdop     =    2.000000e-001*(bitand(bitshift(bb(8,:),-3),31))' ;
    can.GPS_Data_Nav_3_HS.units.GPS_Speed     =  'MPH';
    can.GPS_Data_Nav_3_HS.GPS_Speed     =    (bb(6,:))' ;
    can.GPS_Data_Nav_3_HS.units.GPS_Sat_num_in_view     =  '';
    can.GPS_Data_Nav_3_HS.GPS_Sat_num_in_view     =    (bitand(bitshift(bb(1,:),-3),31))' ;
    can.GPS_Data_Nav_3_HS.units.GPS_MSL_altitude     =  'feet';
    can.GPS_Data_Nav_3_HS.GPS_MSL_altitude     =    1.000000e+001*(2^4 * bb(2,:) + bitand(bitshift(bb(3,:),-4),15))' +-20460.00;
    can.GPS_Data_Nav_3_HS.units.GPS_Heading     =  'Degrees';
    can.GPS_Data_Nav_3_HS.GPS_Heading     =    1.000000e-002*(2^8 * bb(4,:) + bb(5,:))' ;
    can.GPS_Data_Nav_3_HS.units.GPS_Hdop     =  '';
    can.GPS_Data_Nav_3_HS.GPS_Hdop     =    2.000000e-001*(bitand(bitshift(bb(7,:),-3),31))' ;
    can.GPS_Data_Nav_3_HS.units.GPS_dimension     =  'SED';
    can.GPS_Data_Nav_3_HS.GPS_dimension     =    (bitand(bb(1,:),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: All_Terrain_Data
% Hex ID:480
% Last edited by: selwart
% Date:26-Apr-2011
MSG_480 = hex2dec('480');

ix=find(msg == MSG_480);          % Find all message 0x480's
if ~isempty(ix)                   % If there are any ...
    can.All_Terrain_Data = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x480 messages
    can.All_Terrain_Data.nsamples      = length(ix);
    can.All_Terrain_Data.ctime         = cantime(ix);

    can.All_Terrain_Data.units.HdcSwitchPos_B_Actl     =  'SED';
    can.All_Terrain_Data.HdcSwitchPos_B_Actl     =    (bitget(bb(1,:),1))';
    can.All_Terrain_Data.units.TerrStat_D_RqDsply     =  'SED';
    can.All_Terrain_Data.TerrStat_D_RqDsply     =    (bitand(bitshift(bb(1,:),-4),15))' ;
    can.All_Terrain_Data.units.TerrMde_D_RqDrv     =  'Unitless';
    can.All_Terrain_Data.TerrMde_D_RqDrv     =    (bitand(bitshift(bb(1,:),-1),7))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: Information_4x4_2_CG1
% Hex ID:4A2
% Last edited by: selwart
% Date:26-Apr-2011
MSG_4A2 = hex2dec('4A2');

ix=find(msg == MSG_4A2);          % Find all message 0x4A2's
if ~isempty(ix)                   % If there are any ...
    can.Information_4x4_2_CG1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x4A2 messages
    can.Information_4x4_2_CG1.nsamples      = length(ix);
    can.Information_4x4_2_CG1.ctime         = cantime(ix);

    can.Information_4x4_2_CG1.units.RearDiffFalt_D_Stat     =  'SED';
    can.Information_4x4_2_CG1.RearDiffFalt_D_Stat     =    (bitand(bitshift(bb(3,:),-6),3))' ;
    can.Information_4x4_2_CG1.units.RearDiffLck_Tq_Actl     =  'Nm';
    can.Information_4x4_2_CG1.RearDiffLck_Tq_Actl     =    (2^4 * bb(1,:) + bitand(bitshift(bb(2,:),-4),15))' ;
    can.Information_4x4_2_CG1.units.RearDiffLckMsg_D_Rq     =  'SED';
    can.Information_4x4_2_CG1.RearDiffLckMsg_D_Rq     =    (bitand(bitshift(bb(3,:),-2),7))' ;
    can.Information_4x4_2_CG1.units.AwdSrvcRqd_B_Rq     =  'SED';
    can.Information_4x4_2_CG1.AwdSrvcRqd_B_Rq     =    (bitget(bb(3,:),6))';
    can.Information_4x4_2_CG1.units.RearDiffLckLamp_D_Rq     =  'SED';
    can.Information_4x4_2_CG1.RearDiffLckLamp_D_Rq     =    (bitand(bitshift(bb(2,:),-2),3))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: BCM_AutoSar_Network_Mgmt
% Hex ID:581
% Last edited by: selwart
% Date:26-Apr-2011
MSG_581 = hex2dec('581');

ix=find(msg == MSG_581);          % Find all message 0x581's
if ~isempty(ix)                   % If there are any ...
    can.BCM_AutoSar_Network_Mgmt = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x581 messages
    can.BCM_AutoSar_Network_Mgmt.nsamples      = length(ix);
    can.BCM_AutoSar_Network_Mgmt.ctime         = cantime(ix);

    can.BCM_AutoSar_Network_Mgmt.units.BCM_AutoSar_Network_Mgmt     =  '';
    can.BCM_AutoSar_Network_Mgmt.BCM_AutoSar_Network_Mgmt     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ACM_AutoSar_Network_Mgmt
% Hex ID:58C
% Last edited by: selwart
% Date:26-Apr-2011
MSG_58C = hex2dec('58C');

ix=find(msg == MSG_58C);          % Find all message 0x58C's
if ~isempty(ix)                   % If there are any ...
    can.ACM_AutoSar_Network_Mgmt = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x58C messages
    can.ACM_AutoSar_Network_Mgmt.nsamples      = length(ix);
    can.ACM_AutoSar_Network_Mgmt.ctime         = cantime(ix);

    can.ACM_AutoSar_Network_Mgmt.units.ACM_AutoSar_Network_Mgmt     =  '';
    can.ACM_AutoSar_Network_Mgmt.ACM_AutoSar_Network_Mgmt     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: IPC_AutoSar_Network_Mgmt
% Hex ID:591
% Last edited by: selwart
% Date:26-Apr-2011
MSG_591 = hex2dec('591');

ix=find(msg == MSG_591);          % Find all message 0x591's
if ~isempty(ix)                   % If there are any ...
    can.IPC_AutoSar_Network_Mgmt = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x591 messages
    can.IPC_AutoSar_Network_Mgmt.nsamples      = length(ix);
    can.IPC_AutoSar_Network_Mgmt.ctime         = cantime(ix);

    can.IPC_AutoSar_Network_Mgmt.units.IPC_AutoSar_Network_Mgmt     =  '';
    can.IPC_AutoSar_Network_Mgmt.IPC_AutoSar_Network_Mgmt     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: CLM_AutoSar_Network_Mgmt
% Hex ID:59D
% Last edited by: selwart
% Date:26-Apr-2011
MSG_59D = hex2dec('59D');

ix=find(msg == MSG_59D);          % Find all message 0x59D's
if ~isempty(ix)                   % If there are any ...
    can.CLM_AutoSar_Network_Mgmt = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x59D messages
    can.CLM_AutoSar_Network_Mgmt.nsamples      = length(ix);
    can.CLM_AutoSar_Network_Mgmt.ctime         = cantime(ix);

    can.CLM_AutoSar_Network_Mgmt.units.CLM_AutoSar_Network_Mgmt     =  '';
    can.CLM_AutoSar_Network_Mgmt.CLM_AutoSar_Network_Mgmt     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TCM_AutoSar_Network_Mgmt
% Hex ID:5A0
% Last edited by: selwart
% Date:26-Apr-2011
MSG_5A0 = hex2dec('5A0');

ix=find(msg == MSG_5A0);          % Find all message 0x5A0's
if ~isempty(ix)                   % If there are any ...
    can.TCM_AutoSar_Network_Mgmt = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x5A0 messages
    can.TCM_AutoSar_Network_Mgmt.nsamples      = length(ix);
    can.TCM_AutoSar_Network_Mgmt.ctime         = cantime(ix);

    can.TCM_AutoSar_Network_Mgmt.units.TCM_AutoSar_Network_Mgmt     =  '';
    can.TCM_AutoSar_Network_Mgmt.TCM_AutoSar_Network_Mgmt     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: SCCM_AutoSar_Network_Mgmt
% Hex ID:5B3
% Last edited by: selwart
% Date:26-Apr-2011
MSG_5B3 = hex2dec('5B3');

ix=find(msg == MSG_5B3);          % Find all message 0x5B3's
if ~isempty(ix)                   % If there are any ...
    can.SCCM_AutoSar_Network_Mgmt = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x5B3 messages
    can.SCCM_AutoSar_Network_Mgmt.nsamples      = length(ix);
    can.SCCM_AutoSar_Network_Mgmt.ctime         = cantime(ix);

    can.SCCM_AutoSar_Network_Mgmt.units.SCCM_AutoSar_Network_Mgmt     =  'Unitless';
    can.SCCM_AutoSar_Network_Mgmt.SCCM_AutoSar_Network_Mgmt     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: FLM_AutoSar_Network_Mgmt
% Hex ID:5CE
% Last edited by: selwart
% Date:26-Apr-2011
MSG_5CE = hex2dec('5CE');

ix=find(msg == MSG_5CE);          % Find all message 0x5CE's
if ~isempty(ix)                   % If there are any ...
    can.FLM_AutoSar_Network_Mgmt = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x5CE messages
    can.FLM_AutoSar_Network_Mgmt.nsamples      = length(ix);
    can.FLM_AutoSar_Network_Mgmt.ctime         = cantime(ix);

    can.FLM_AutoSar_Network_Mgmt.units.FLM_AutoSar_Network_Mgmt     =  '';
    can.FLM_AutoSar_Network_Mgmt.FLM_AutoSar_Network_Mgmt     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: APIM_AutoSar_Network_Mgmt
% Hex ID:5E2
% Last edited by: selwart
% Date:26-Apr-2011
MSG_5E2 = hex2dec('5E2');

ix=find(msg == MSG_5E2);          % Find all message 0x5E2's
if ~isempty(ix)                   % If there are any ...
    can.APIM_AutoSar_Network_Mgmt = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x5E2 messages
    can.APIM_AutoSar_Network_Mgmt.nsamples      = length(ix);
    can.APIM_AutoSar_Network_Mgmt.ctime         = cantime(ix);

    can.APIM_AutoSar_Network_Mgmt.units.APIM_AutoSar_Network_Mgmt     =  '';
    can.APIM_AutoSar_Network_Mgmt.APIM_AutoSar_Network_Mgmt     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: DACMC_AutoSar_Network_Mgmt
% Hex ID:5EF
% Last edited by: selwart
% Date:26-Apr-2011
MSG_5EF = hex2dec('5EF');

ix=find(msg == MSG_5EF);          % Find all message 0x5EF's
if ~isempty(ix)                   % If there are any ...
    can.DACMC_AutoSar_Network_Mgmt = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x5EF messages
    can.DACMC_AutoSar_Network_Mgmt.nsamples      = length(ix);
    can.DACMC_AutoSar_Network_Mgmt.ctime         = cantime(ix);

    can.DACMC_AutoSar_Network_Mgmt.units.DACMC_AutoSar_Network_Mgmt     =  '';
    can.DACMC_AutoSar_Network_Mgmt.DACMC_AutoSar_Network_Mgmt     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RCM_Rapid_Data_Response1
% Hex ID:680
% Last edited by: selwart
% Date:26-Apr-2011
MSG_680 = hex2dec('680');

ix=find(msg == MSG_680);          % Find all message 0x680's
if ~isempty(ix)                   % If there are any ...
    can.RCM_Rapid_Data_Response1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x680 messages
    can.RCM_Rapid_Data_Response1.nsamples      = length(ix);
    can.RCM_Rapid_Data_Response1.ctime         = cantime(ix);

    can.RCM_Rapid_Data_Response1.units.UUDTRCMResponse1     =  '';
    can.RCM_Rapid_Data_Response1.UUDTRCMResponse1     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: RCM_Rapid_Data_Response2
% Hex ID:681
% Last edited by: selwart
% Date:26-Apr-2011
MSG_681 = hex2dec('681');

ix=find(msg == MSG_681);          % Find all message 0x681's
if ~isempty(ix)                   % If there are any ...
    can.RCM_Rapid_Data_Response2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x681 messages
    can.RCM_Rapid_Data_Response2.nsamples      = length(ix);
    can.RCM_Rapid_Data_Response2.ctime         = cantime(ix);

    can.RCM_Rapid_Data_Response2.units.UUDTRCMResponse2     =  '';
    can.RCM_Rapid_Data_Response2.UUDTRCMResponse2     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: PSCM_Rapid_Data_Response1
% Hex ID:684
% Last edited by: selwart
% Date:26-Apr-2011
MSG_684 = hex2dec('684');

ix=find(msg == MSG_684);          % Find all message 0x684's
if ~isempty(ix)                   % If there are any ...
    can.PSCM_Rapid_Data_Response1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x684 messages
    can.PSCM_Rapid_Data_Response1.nsamples      = length(ix);
    can.PSCM_Rapid_Data_Response1.ctime         = cantime(ix);

    can.PSCM_Rapid_Data_Response1.units.UUDTPSCMResponse1     =  '';
    can.PSCM_Rapid_Data_Response1.UUDTPSCMResponse1     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: PSCM_Rapid_Data_Response2
% Hex ID:685
% Last edited by: selwart
% Date:26-Apr-2011
MSG_685 = hex2dec('685');

ix=find(msg == MSG_685);          % Find all message 0x685's
if ~isempty(ix)                   % If there are any ...
    can.PSCM_Rapid_Data_Response2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x685 messages
    can.PSCM_Rapid_Data_Response2.nsamples      = length(ix);
    can.PSCM_Rapid_Data_Response2.ctime         = cantime(ix);

    can.PSCM_Rapid_Data_Response2.units.UUDTPSCMResponse2     =  '';
    can.PSCM_Rapid_Data_Response2.UUDTPSCMResponse2     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: PCM_Rapid_Data_Response_1
% Hex ID:6A0
% Last edited by: selwart
% Date:26-Apr-2011
MSG_6A0 = hex2dec('6A0');

ix=find(msg == MSG_6A0);          % Find all message 0x6A0's
if ~isempty(ix)                   % If there are any ...
    can.PCM_Rapid_Data_Response_1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x6A0 messages
    can.PCM_Rapid_Data_Response_1.nsamples      = length(ix);
    can.PCM_Rapid_Data_Response_1.ctime         = cantime(ix);

    can.PCM_Rapid_Data_Response_1.units.UUDTPCMResponse1     =  '';
    can.PCM_Rapid_Data_Response_1.UUDTPCMResponse1     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: PCM_Rapid_Data_Response_2
% Hex ID:6A1
% Last edited by: selwart
% Date:26-Apr-2011
MSG_6A1 = hex2dec('6A1');

ix=find(msg == MSG_6A1);          % Find all message 0x6A1's
if ~isempty(ix)                   % If there are any ...
    can.PCM_Rapid_Data_Response_2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x6A1 messages
    can.PCM_Rapid_Data_Response_2.nsamples      = length(ix);
    can.PCM_Rapid_Data_Response_2.ctime         = cantime(ix);

    can.PCM_Rapid_Data_Response_2.units.UUDTPCMResponse2     =  '';
    can.PCM_Rapid_Data_Response_2.UUDTPCMResponse2     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: PCM_Rapid_Data_Response_3
% Hex ID:6A2
% Last edited by: selwart
% Date:26-Apr-2011
MSG_6A2 = hex2dec('6A2');

ix=find(msg == MSG_6A2);          % Find all message 0x6A2's
if ~isempty(ix)                   % If there are any ...
    can.PCM_Rapid_Data_Response_3 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x6A2 messages
    can.PCM_Rapid_Data_Response_3.nsamples      = length(ix);
    can.PCM_Rapid_Data_Response_3.ctime         = cantime(ix);

    can.PCM_Rapid_Data_Response_3.units.UUDTPCMResponse3     =  '';
    can.PCM_Rapid_Data_Response_3.UUDTPCMResponse3     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TCM_Rapid_Data_Response_1
% Hex ID:6A4
% Last edited by: selwart
% Date:26-Apr-2011
MSG_6A4 = hex2dec('6A4');

ix=find(msg == MSG_6A4);          % Find all message 0x6A4's
if ~isempty(ix)                   % If there are any ...
    can.TCM_Rapid_Data_Response_1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x6A4 messages
    can.TCM_Rapid_Data_Response_1.nsamples      = length(ix);
    can.TCM_Rapid_Data_Response_1.ctime         = cantime(ix);

    can.TCM_Rapid_Data_Response_1.units.UUDTTCMResponse1     =  '';
    can.TCM_Rapid_Data_Response_1.UUDTTCMResponse1     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TCM_Rapid_Data_Response_2
% Hex ID:6A5
% Last edited by: selwart
% Date:26-Apr-2011
MSG_6A5 = hex2dec('6A5');

ix=find(msg == MSG_6A5);          % Find all message 0x6A5's
if ~isempty(ix)                   % If there are any ...
    can.TCM_Rapid_Data_Response_2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x6A5 messages
    can.TCM_Rapid_Data_Response_2.nsamples      = length(ix);
    can.TCM_Rapid_Data_Response_2.ctime         = cantime(ix);

    can.TCM_Rapid_Data_Response_2.units.UUDTTCMResponse2     =  '';
    can.TCM_Rapid_Data_Response_2.UUDTTCMResponse2     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ABS_Rapid_Data_Response_1
% Hex ID:6B0
% Last edited by: selwart
% Date:26-Apr-2011
MSG_6B0 = hex2dec('6B0');

ix=find(msg == MSG_6B0);          % Find all message 0x6B0's
if ~isempty(ix)                   % If there are any ...
    can.ABS_Rapid_Data_Response_1 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x6B0 messages
    can.ABS_Rapid_Data_Response_1.nsamples      = length(ix);
    can.ABS_Rapid_Data_Response_1.ctime         = cantime(ix);

    can.ABS_Rapid_Data_Response_1.units.UUDTABSResponse1     =  '';
    can.ABS_Rapid_Data_Response_1.UUDTABSResponse1     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: ABS_Rapid_Data_Response_2
% Hex ID:6B1
% Last edited by: selwart
% Date:26-Apr-2011
MSG_6B1 = hex2dec('6B1');

ix=find(msg == MSG_6B1);          % Find all message 0x6B1's
if ~isempty(ix)                   % If there are any ...
    can.ABS_Rapid_Data_Response_2 = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x6B1 messages
    can.ABS_Rapid_Data_Response_2.nsamples      = length(ix);
    can.ABS_Rapid_Data_Response_2.ctime         = cantime(ix);

    can.ABS_Rapid_Data_Response_2.units.UUDTABSResponse2     =  '';
    can.ABS_Rapid_Data_Response_2.UUDTABSResponse2     =    (bb(1,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqIPMA
% Hex ID:706
% Last edited by: selwart
% Date:26-Apr-2011
MSG_706 = hex2dec('706');

ix=find(msg == MSG_706);          % Find all message 0x706's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqIPMA = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x706 messages
    can.TesterPhysicalReqIPMA.nsamples      = length(ix);
    can.TesterPhysicalReqIPMA.ctime         = cantime(ix);

    can.TesterPhysicalReqIPMA.units.TesterPhysicalReqIPMA     =  '';
    can.TesterPhysicalReqIPMA.TesterPhysicalReqIPMA     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResIPMA
% Hex ID:70E
% Last edited by: selwart
% Date:26-Apr-2011
MSG_70E = hex2dec('70E');

ix=find(msg == MSG_70E);          % Find all message 0x70E's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResIPMA = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x70E messages
    can.TesterPhysicalResIPMA.nsamples      = length(ix);
    can.TesterPhysicalResIPMA.ctime         = cantime(ix);

    can.TesterPhysicalResIPMA.units.TesterPhysicalResIPMA     =  '';
    can.TesterPhysicalResIPMA.TesterPhysicalResIPMA     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqCLM
% Hex ID:715
% Last edited by: selwart
% Date:26-Apr-2011
MSG_715 = hex2dec('715');

ix=find(msg == MSG_715);          % Find all message 0x715's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqCLM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x715 messages
    can.TesterPhysicalReqCLM.nsamples      = length(ix);
    can.TesterPhysicalReqCLM.ctime         = cantime(ix);

    can.TesterPhysicalReqCLM.units.TesterPhysicalReqCLM     =  '';
    can.TesterPhysicalReqCLM.TesterPhysicalReqCLM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResCLM
% Hex ID:71D
% Last edited by: selwart
% Date:26-Apr-2011
MSG_71D = hex2dec('71D');

ix=find(msg == MSG_71D);          % Find all message 0x71D's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResCLM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x71D messages
    can.TesterPhysicalResCLM.nsamples      = length(ix);
    can.TesterPhysicalResCLM.ctime         = cantime(ix);

    can.TesterPhysicalResCLM.units.TesterPhysicalResCLM     =  '';
    can.TesterPhysicalResCLM.TesterPhysicalResCLM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqIPC
% Hex ID:720
% Last edited by: selwart
% Date:26-Apr-2011
MSG_720 = hex2dec('720');

ix=find(msg == MSG_720);          % Find all message 0x720's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqIPC = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x720 messages
    can.TesterPhysicalReqIPC.nsamples      = length(ix);
    can.TesterPhysicalReqIPC.ctime         = cantime(ix);

    can.TesterPhysicalReqIPC.units.TesterPhysicalReqIPC     =  '';
    can.TesterPhysicalReqIPC.TesterPhysicalReqIPC     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqVDM
% Hex ID:721
% Last edited by: selwart
% Date:26-Apr-2011
MSG_721 = hex2dec('721');

ix=find(msg == MSG_721);          % Find all message 0x721's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqVDM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x721 messages
    can.TesterPhysicalReqVDM.nsamples      = length(ix);
    can.TesterPhysicalReqVDM.ctime         = cantime(ix);

    can.TesterPhysicalReqVDM.units.TesterPhysicalReqVDM     =  '';
    can.TesterPhysicalReqVDM.TesterPhysicalReqVDM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqSCCM
% Hex ID:724
% Last edited by: selwart
% Date:26-Apr-2011
MSG_724 = hex2dec('724');

ix=find(msg == MSG_724);          % Find all message 0x724's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqSCCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x724 messages
    can.TesterPhysicalReqSCCM.nsamples      = length(ix);
    can.TesterPhysicalReqSCCM.ctime         = cantime(ix);

    can.TesterPhysicalReqSCCM.units.TesterPhysicalReqSCCM     =  '';
    can.TesterPhysicalReqSCCM.TesterPhysicalReqSCCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqBCM_HS
% Hex ID:726
% Last edited by: selwart
% Date:26-Apr-2011
MSG_726 = hex2dec('726');

ix=find(msg == MSG_726);          % Find all message 0x726's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqBCM_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x726 messages
    can.TesterPhysicalReqBCM_HS.nsamples      = length(ix);
    can.TesterPhysicalReqBCM_HS.ctime         = cantime(ix);

    can.TesterPhysicalReqBCM_HS.units.TesterPhysicalReqBCM_HS     =  '';
    can.TesterPhysicalReqBCM_HS.TesterPhysicalReqBCM_HS     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResIPC
% Hex ID:728
% Last edited by: selwart
% Date:26-Apr-2011
MSG_728 = hex2dec('728');

ix=find(msg == MSG_728);          % Find all message 0x728's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResIPC = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x728 messages
    can.TesterPhysicalResIPC.nsamples      = length(ix);
    can.TesterPhysicalResIPC.ctime         = cantime(ix);

    can.TesterPhysicalResIPC.units.TesterPhysicalResIPC     =  '';
    can.TesterPhysicalResIPC.TesterPhysicalResIPC     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResVDM
% Hex ID:729
% Last edited by: selwart
% Date:26-Apr-2011
MSG_729 = hex2dec('729');

ix=find(msg == MSG_729);          % Find all message 0x729's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResVDM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x729 messages
    can.TesterPhysicalResVDM.nsamples      = length(ix);
    can.TesterPhysicalResVDM.ctime         = cantime(ix);

    can.TesterPhysicalResVDM.units.TesterPhysicalResVDM     =  '';
    can.TesterPhysicalResVDM.TesterPhysicalResVDM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResSCCM
% Hex ID:72C
% Last edited by: selwart
% Date:26-Apr-2011
MSG_72C = hex2dec('72C');

ix=find(msg == MSG_72C);          % Find all message 0x72C's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResSCCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x72C messages
    can.TesterPhysicalResSCCM.nsamples      = length(ix);
    can.TesterPhysicalResSCCM.ctime         = cantime(ix);

    can.TesterPhysicalResSCCM.units.TesterPhysicalResSCCM     =  '';
    can.TesterPhysicalResSCCM.TesterPhysicalResSCCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResBCM_HS
% Hex ID:72E
% Last edited by: selwart
% Date:26-Apr-2011
MSG_72E = hex2dec('72E');

ix=find(msg == MSG_72E);          % Find all message 0x72E's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResBCM_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x72E messages
    can.TesterPhysicalResBCM_HS.nsamples      = length(ix);
    can.TesterPhysicalResBCM_HS.ctime         = cantime(ix);

    can.TesterPhysicalResBCM_HS.units.TesterPhysicalResBCM_HS     =  '';
    can.TesterPhysicalResBCM_HS.TesterPhysicalResBCM_HS     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqPSCM
% Hex ID:730
% Last edited by: selwart
% Date:26-Apr-2011
MSG_730 = hex2dec('730');

ix=find(msg == MSG_730);          % Find all message 0x730's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqPSCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x730 messages
    can.TesterPhysicalReqPSCM.nsamples      = length(ix);
    can.TesterPhysicalReqPSCM.ctime         = cantime(ix);

    can.TesterPhysicalReqPSCM.units.TesterPhysicalReqPSCM     =  '';
    can.TesterPhysicalReqPSCM.TesterPhysicalReqPSCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqHCM
% Hex ID:734
% Last edited by: selwart
% Date:26-Apr-2011
MSG_734 = hex2dec('734');

ix=find(msg == MSG_734);          % Find all message 0x734's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqHCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x734 messages
    can.TesterPhysicalReqHCM.nsamples      = length(ix);
    can.TesterPhysicalReqHCM.ctime         = cantime(ix);

    can.TesterPhysicalReqHCM.units.TesterPhysicalReqHCM     =  '';
    can.TesterPhysicalReqHCM.TesterPhysicalReqHCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqPAM
% Hex ID:736
% Last edited by: selwart
% Date:26-Apr-2011
MSG_736 = hex2dec('736');

ix=find(msg == MSG_736);          % Find all message 0x736's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqPAM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x736 messages
    can.TesterPhysicalReqPAM.nsamples      = length(ix);
    can.TesterPhysicalReqPAM.ctime         = cantime(ix);

    can.TesterPhysicalReqPAM.units.TesterPhysicalReqPAM     =  '';
    can.TesterPhysicalReqPAM.TesterPhysicalReqPAM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqRCM
% Hex ID:737
% Last edited by: selwart
% Date:26-Apr-2011
MSG_737 = hex2dec('737');

ix=find(msg == MSG_737);          % Find all message 0x737's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqRCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x737 messages
    can.TesterPhysicalReqRCM.nsamples      = length(ix);
    can.TesterPhysicalReqRCM.ctime         = cantime(ix);

    can.TesterPhysicalReqRCM.units.TesterPhysicalReqRCM     =  '';
    can.TesterPhysicalReqRCM.TesterPhysicalReqRCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResPSCM
% Hex ID:738
% Last edited by: selwart
% Date:26-Apr-2011
MSG_738 = hex2dec('738');

ix=find(msg == MSG_738);          % Find all message 0x738's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResPSCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x738 messages
    can.TesterPhysicalResPSCM.nsamples      = length(ix);
    can.TesterPhysicalResPSCM.ctime         = cantime(ix);

    can.TesterPhysicalResPSCM.units.TesterPhysicalResPSCM     =  '';
    can.TesterPhysicalResPSCM.TesterPhysicalResPSCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResHCM
% Hex ID:73C
% Last edited by: selwart
% Date:26-Apr-2011
MSG_73C = hex2dec('73C');

ix=find(msg == MSG_73C);          % Find all message 0x73C's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResHCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x73C messages
    can.TesterPhysicalResHCM.nsamples      = length(ix);
    can.TesterPhysicalResHCM.ctime         = cantime(ix);

    can.TesterPhysicalResHCM.units.TesterPhysicalResHCM     =  '';
    can.TesterPhysicalResHCM.TesterPhysicalResHCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResPAM
% Hex ID:73E
% Last edited by: selwart
% Date:26-Apr-2011
MSG_73E = hex2dec('73E');

ix=find(msg == MSG_73E);          % Find all message 0x73E's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResPAM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x73E messages
    can.TesterPhysicalResPAM.nsamples      = length(ix);
    can.TesterPhysicalResPAM.ctime         = cantime(ix);

    can.TesterPhysicalResPAM.units.TesterPhysicalResPAM     =  '';
    can.TesterPhysicalResPAM.TesterPhysicalResPAM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResRCM
% Hex ID:73F
% Last edited by: selwart
% Date:26-Apr-2011
MSG_73F = hex2dec('73F');

ix=find(msg == MSG_73F);          % Find all message 0x73F's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResRCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x73F messages
    can.TesterPhysicalResRCM.nsamples      = length(ix);
    can.TesterPhysicalResRCM.ctime         = cantime(ix);

    can.TesterPhysicalResRCM.units.TesterPhysicalResRCM     =  '';
    can.TesterPhysicalResRCM.TesterPhysicalResRCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqDCDC
% Hex ID:746
% Last edited by: selwart
% Date:26-Apr-2011
MSG_746 = hex2dec('746');

ix=find(msg == MSG_746);          % Find all message 0x746's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqDCDC = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x746 messages
    can.TesterPhysicalReqDCDC.nsamples      = length(ix);
    can.TesterPhysicalReqDCDC.ctime         = cantime(ix);

    can.TesterPhysicalReqDCDC.units.TesterPhysicalReqDCDC     =  '';
    can.TesterPhysicalReqDCDC.TesterPhysicalReqDCDC     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResDCDC
% Hex ID:74E
% Last edited by: selwart
% Date:26-Apr-2011
MSG_74E = hex2dec('74E');

ix=find(msg == MSG_74E);          % Find all message 0x74E's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResDCDC = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x74E messages
    can.TesterPhysicalResDCDC.nsamples      = length(ix);
    can.TesterPhysicalResDCDC.ctime         = cantime(ix);

    can.TesterPhysicalResDCDC.units.TesterPhysicalResDCDC     =  '';
    can.TesterPhysicalResDCDC.TesterPhysicalResDCDC     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqTBM
% Hex ID:757
% Last edited by: selwart
% Date:26-Apr-2011
MSG_757 = hex2dec('757');

ix=find(msg == MSG_757);          % Find all message 0x757's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqTBM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x757 messages
    can.TesterPhysicalReqTBM.nsamples      = length(ix);
    can.TesterPhysicalReqTBM.ctime         = cantime(ix);

    can.TesterPhysicalReqTBM.units.TesterPhysicalReqTBM     =  '';
    can.TesterPhysicalReqTBM.TesterPhysicalReqTBM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResTBM
% Hex ID:75F
% Last edited by: selwart
% Date:26-Apr-2011
MSG_75F = hex2dec('75F');

ix=find(msg == MSG_75F);          % Find all message 0x75F's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResTBM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x75F messages
    can.TesterPhysicalResTBM.nsamples      = length(ix);
    can.TesterPhysicalResTBM.ctime         = cantime(ix);

    can.TesterPhysicalResTBM.units.TesterPhysicalResTBM     =  '';
    can.TesterPhysicalResTBM.TesterPhysicalResTBM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqABS
% Hex ID:760
% Last edited by: selwart
% Date:26-Apr-2011
MSG_760 = hex2dec('760');

ix=find(msg == MSG_760);          % Find all message 0x760's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqABS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x760 messages
    can.TesterPhysicalReqABS.nsamples      = length(ix);
    can.TesterPhysicalReqABS.ctime         = cantime(ix);

    can.TesterPhysicalReqABS.units.TesterPhysicalReqABS     =  '';
    can.TesterPhysicalReqABS.TesterPhysicalReqABS     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqTCCM
% Hex ID:761
% Last edited by: selwart
% Date:26-Apr-2011
MSG_761 = hex2dec('761');

ix=find(msg == MSG_761);          % Find all message 0x761's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqTCCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x761 messages
    can.TesterPhysicalReqTCCM.nsamples      = length(ix);
    can.TesterPhysicalReqTCCM.ctime         = cantime(ix);

    can.TesterPhysicalReqTCCM.units.TesterPhysicalReqTCCM     =  '';
    can.TesterPhysicalReqTCCM.TesterPhysicalReqTCCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqCCM
% Hex ID:764
% Last edited by: selwart
% Date:26-Apr-2011
MSG_764 = hex2dec('764');

ix=find(msg == MSG_764);          % Find all message 0x764's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqCCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x764 messages
    can.TesterPhysicalReqCCM.nsamples      = length(ix);
    can.TesterPhysicalReqCCM.ctime         = cantime(ix);

    can.TesterPhysicalReqCCM.units.TesterPhysicalReqCCM     =  '';
    can.TesterPhysicalReqCCM.TesterPhysicalReqCCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqOCS
% Hex ID:765
% Last edited by: selwart
% Date:26-Apr-2011
MSG_765 = hex2dec('765');

ix=find(msg == MSG_765);          % Find all message 0x765's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqOCS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x765 messages
    can.TesterPhysicalReqOCS.nsamples      = length(ix);
    can.TesterPhysicalReqOCS.ctime         = cantime(ix);

    can.TesterPhysicalReqOCS.units.TesterPhysicalReqOCS     =  '';
    can.TesterPhysicalReqOCS.TesterPhysicalReqOCS     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResABS
% Hex ID:768
% Last edited by: selwart
% Date:26-Apr-2011
MSG_768 = hex2dec('768');

ix=find(msg == MSG_768);          % Find all message 0x768's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResABS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x768 messages
    can.TesterPhysicalResABS.nsamples      = length(ix);
    can.TesterPhysicalResABS.ctime         = cantime(ix);

    can.TesterPhysicalResABS.units.TesterPhysicalResABS     =  '';
    can.TesterPhysicalResABS.TesterPhysicalResABS     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResTCCM
% Hex ID:769
% Last edited by: selwart
% Date:26-Apr-2011
MSG_769 = hex2dec('769');

ix=find(msg == MSG_769);          % Find all message 0x769's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResTCCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x769 messages
    can.TesterPhysicalResTCCM.nsamples      = length(ix);
    can.TesterPhysicalResTCCM.ctime         = cantime(ix);

    can.TesterPhysicalResTCCM.units.TesterPhysicalResTCCM     =  '';
    can.TesterPhysicalResTCCM.TesterPhysicalResTCCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResCCM
% Hex ID:76C
% Last edited by: selwart
% Date:26-Apr-2011
MSG_76C = hex2dec('76C');

ix=find(msg == MSG_76C);          % Find all message 0x76C's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResCCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x76C messages
    can.TesterPhysicalResCCM.nsamples      = length(ix);
    can.TesterPhysicalResCCM.ctime         = cantime(ix);

    can.TesterPhysicalResCCM.units.TesterPhysicalResCCM     =  '';
    can.TesterPhysicalResCCM.TesterPhysicalResCCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResOCS
% Hex ID:76D
% Last edited by: selwart
% Date:26-Apr-2011
MSG_76D = hex2dec('76D');

ix=find(msg == MSG_76D);          % Find all message 0x76D's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResOCS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x76D messages
    can.TesterPhysicalResOCS.nsamples      = length(ix);
    can.TesterPhysicalResOCS.ctime         = cantime(ix);

    can.TesterPhysicalResOCS.units.TesterPhysicalResOCS     =  '';
    can.TesterPhysicalResOCS.TesterPhysicalResOCS     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqSUMB
% Hex ID:786
% Last edited by: selwart
% Date:26-Apr-2011
MSG_786 = hex2dec('786');

ix=find(msg == MSG_786);          % Find all message 0x786's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqSUMB = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x786 messages
    can.TesterPhysicalReqSUMB.nsamples      = length(ix);
    can.TesterPhysicalReqSUMB.ctime         = cantime(ix);

    can.TesterPhysicalReqSUMB.units.TesterPhysicalReqSUMB     =  '';
    can.TesterPhysicalReqSUMB.TesterPhysicalReqSUMB     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResSUMB
% Hex ID:78E
% Last edited by: selwart
% Date:26-Apr-2011
MSG_78E = hex2dec('78E');

ix=find(msg == MSG_78E);          % Find all message 0x78E's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResSUMB = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x78E messages
    can.TesterPhysicalResSUMB.nsamples      = length(ix);
    can.TesterPhysicalResSUMB.ctime         = cantime(ix);

    can.TesterPhysicalResSUMB.units.TesterPhysicalResSUMB     =  '';
    can.TesterPhysicalResSUMB.TesterPhysicalResSUMB     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqATCM
% Hex ID:792
% Last edited by: selwart
% Date:26-Apr-2011
MSG_792 = hex2dec('792');

ix=find(msg == MSG_792);          % Find all message 0x792's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqATCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x792 messages
    can.TesterPhysicalReqATCM.nsamples      = length(ix);
    can.TesterPhysicalReqATCM.ctime         = cantime(ix);

    can.TesterPhysicalReqATCM.units.TesterPhysicalReqATCM     =  '';
    can.TesterPhysicalReqATCM.TesterPhysicalReqATCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqFLM
% Hex ID:796
% Last edited by: selwart
% Date:26-Apr-2011
MSG_796 = hex2dec('796');

ix=find(msg == MSG_796);          % Find all message 0x796's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqFLM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x796 messages
    can.TesterPhysicalReqFLM.nsamples      = length(ix);
    can.TesterPhysicalReqFLM.ctime         = cantime(ix);

    can.TesterPhysicalReqFLM.units.TesterPhysicalReqFLM     =  '';
    can.TesterPhysicalReqFLM.TesterPhysicalReqFLM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqSASM
% Hex ID:797
% Last edited by: selwart
% Date:26-Apr-2011
MSG_797 = hex2dec('797');

ix=find(msg == MSG_797);          % Find all message 0x797's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqSASM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x797 messages
    can.TesterPhysicalReqSASM.nsamples      = length(ix);
    can.TesterPhysicalReqSASM.ctime         = cantime(ix);

    can.TesterPhysicalReqSASM.units.TesterPhysicalReqSASM     =  '';
    can.TesterPhysicalReqSASM.TesterPhysicalReqSASM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResATCM
% Hex ID:79A
% Last edited by: selwart
% Date:26-Apr-2011
MSG_79A = hex2dec('79A');

ix=find(msg == MSG_79A);          % Find all message 0x79A's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResATCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x79A messages
    can.TesterPhysicalResATCM.nsamples      = length(ix);
    can.TesterPhysicalResATCM.ctime         = cantime(ix);

    can.TesterPhysicalResATCM.units.TesterPhysicalResATCM     =  '';
    can.TesterPhysicalResATCM.TesterPhysicalResATCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResFLM
% Hex ID:79E
% Last edited by: selwart
% Date:26-Apr-2011
MSG_79E = hex2dec('79E');

ix=find(msg == MSG_79E);          % Find all message 0x79E's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResFLM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x79E messages
    can.TesterPhysicalResFLM.nsamples      = length(ix);
    can.TesterPhysicalResFLM.ctime         = cantime(ix);

    can.TesterPhysicalResFLM.units.TesterPhysicalResFLM     =  '';
    can.TesterPhysicalResFLM.TesterPhysicalResFLM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResSASM
% Hex ID:79F
% Last edited by: selwart
% Date:26-Apr-2011
MSG_79F = hex2dec('79F');

ix=find(msg == MSG_79F);          % Find all message 0x79F's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResSASM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x79F messages
    can.TesterPhysicalResSASM.nsamples      = length(ix);
    can.TesterPhysicalResSASM.ctime         = cantime(ix);

    can.TesterPhysicalResSASM.units.TesterPhysicalResSASM     =  '';
    can.TesterPhysicalResSASM.TesterPhysicalResSASM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqSWIM
% Hex ID:7A1
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7A1 = hex2dec('7A1');

ix=find(msg == MSG_7A1);          % Find all message 0x7A1's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqSWIM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7A1 messages
    can.TesterPhysicalReqSWIM.nsamples      = length(ix);
    can.TesterPhysicalReqSWIM.ctime         = cantime(ix);

    can.TesterPhysicalReqSWIM.units.TesterPhysicalReqSWIM     =  '';
    can.TesterPhysicalReqSWIM.TesterPhysicalReqSWIM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResSWIM
% Hex ID:7A9
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7A9 = hex2dec('7A9');

ix=find(msg == MSG_7A9);          % Find all message 0x7A9's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResSWIM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7A9 messages
    can.TesterPhysicalResSWIM.nsamples      = length(ix);
    can.TesterPhysicalResSWIM.ctime         = cantime(ix);

    can.TesterPhysicalResSWIM.units.TesterPhysicalResSWIM     =  '';
    can.TesterPhysicalResSWIM.TesterPhysicalResSWIM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqHUD
% Hex ID:7B2
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7B2 = hex2dec('7B2');

ix=find(msg == MSG_7B2);          % Find all message 0x7B2's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqHUD = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7B2 messages
    can.TesterPhysicalReqHUD.nsamples      = length(ix);
    can.TesterPhysicalReqHUD.ctime         = cantime(ix);

    can.TesterPhysicalReqHUD.units.TesterPhysicalReqHUD     =  '';
    can.TesterPhysicalReqHUD.TesterPhysicalReqHUD     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResHUD
% Hex ID:7BA
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7BA = hex2dec('7BA');

ix=find(msg == MSG_7BA);          % Find all message 0x7BA's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResHUD = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7BA messages
    can.TesterPhysicalResHUD.nsamples      = length(ix);
    can.TesterPhysicalResHUD.ctime         = cantime(ix);

    can.TesterPhysicalResHUD.units.TesterPhysicalResHUD     =  '';
    can.TesterPhysicalResHUD.TesterPhysicalResHUD     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqSECM
% Hex ID:7C5
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7C5 = hex2dec('7C5');

ix=find(msg == MSG_7C5);          % Find all message 0x7C5's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqSECM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7C5 messages
    can.TesterPhysicalReqSECM.nsamples      = length(ix);
    can.TesterPhysicalReqSECM.ctime         = cantime(ix);

    can.TesterPhysicalReqSECM.units.TesterPhysicalReqSECM     =  '';
    can.TesterPhysicalReqSECM.TesterPhysicalReqSECM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResSECM
% Hex ID:7CD
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7CD = hex2dec('7CD');

ix=find(msg == MSG_7CD);          % Find all message 0x7CD's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResSECM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7CD messages
    can.TesterPhysicalResSECM.nsamples      = length(ix);
    can.TesterPhysicalResSECM.ctime         = cantime(ix);

    can.TesterPhysicalResSECM.units.TesterPhysicalResSECM     =  '';
    can.TesterPhysicalResSECM.TesterPhysicalResSECM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqAPIM_HS
% Hex ID:7D0
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7D0 = hex2dec('7D0');

ix=find(msg == MSG_7D0);          % Find all message 0x7D0's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqAPIM_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7D0 messages
    can.TesterPhysicalReqAPIM_HS.nsamples      = length(ix);
    can.TesterPhysicalReqAPIM_HS.ctime         = cantime(ix);

    can.TesterPhysicalReqAPIM_HS.units.TesterPhysicalReqAPIM_HS     =  '';
    can.TesterPhysicalReqAPIM_HS.TesterPhysicalReqAPIM_HS     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqDACMC
% Hex ID:7D5
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7D5 = hex2dec('7D5');

ix=find(msg == MSG_7D5);          % Find all message 0x7D5's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqDACMC = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7D5 messages
    can.TesterPhysicalReqDACMC.nsamples      = length(ix);
    can.TesterPhysicalReqDACMC.ctime         = cantime(ix);

    can.TesterPhysicalReqDACMC.units.TesterPhysicalReqDACMC     =  '';
    can.TesterPhysicalReqDACMC.TesterPhysicalReqDACMC     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResAPIM_HS
% Hex ID:7D8
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7D8 = hex2dec('7D8');

ix=find(msg == MSG_7D8);          % Find all message 0x7D8's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResAPIM_HS = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7D8 messages
    can.TesterPhysicalResAPIM_HS.nsamples      = length(ix);
    can.TesterPhysicalResAPIM_HS.ctime         = cantime(ix);

    can.TesterPhysicalResAPIM_HS.units.TesterPhysicalResAPIM_HS     =  '';
    can.TesterPhysicalResAPIM_HS.TesterPhysicalResAPIM_HS     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResDACMC
% Hex ID:7DD
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7DD = hex2dec('7DD');

ix=find(msg == MSG_7DD);          % Find all message 0x7DD's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResDACMC = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7DD messages
    can.TesterPhysicalResDACMC.nsamples      = length(ix);
    can.TesterPhysicalResDACMC.ctime         = cantime(ix);

    can.TesterPhysicalResDACMC.units.TesterPhysicalResDACMC     =  '';
    can.TesterPhysicalResDACMC.TesterPhysicalResDACMC     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
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
% Vector Message Name: TesterPhysicalReqPCM
% Hex ID:7E0
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7E0 = hex2dec('7E0');

ix=find(msg == MSG_7E0);          % Find all message 0x7E0's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqPCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7E0 messages
    can.TesterPhysicalReqPCM.nsamples      = length(ix);
    can.TesterPhysicalReqPCM.ctime         = cantime(ix);

    can.TesterPhysicalReqPCM.units.TesterPhysicalReqPCM     =  '';
    can.TesterPhysicalReqPCM.TesterPhysicalReqPCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqTCM
% Hex ID:7E1
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7E1 = hex2dec('7E1');

ix=find(msg == MSG_7E1);          % Find all message 0x7E1's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqTCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7E1 messages
    can.TesterPhysicalReqTCM.nsamples      = length(ix);
    can.TesterPhysicalReqTCM.ctime         = cantime(ix);

    can.TesterPhysicalReqTCM.units.TesterPhysicalReqTCM     =  '';
    can.TesterPhysicalReqTCM.TesterPhysicalReqTCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqAHCM
% Hex ID:7E3
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7E3 = hex2dec('7E3');

ix=find(msg == MSG_7E3);          % Find all message 0x7E3's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqAHCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7E3 messages
    can.TesterPhysicalReqAHCM.nsamples      = length(ix);
    can.TesterPhysicalReqAHCM.ctime         = cantime(ix);

    can.TesterPhysicalReqAHCM.units.TesterPhysicalReqAHCM     =  '';
    can.TesterPhysicalReqAHCM.TesterPhysicalReqAHCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqBECM
% Hex ID:7E4
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7E4 = hex2dec('7E4');

ix=find(msg == MSG_7E4);          % Find all message 0x7E4's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqBECM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7E4 messages
    can.TesterPhysicalReqBECM.nsamples      = length(ix);
    can.TesterPhysicalReqBECM.ctime         = cantime(ix);

    can.TesterPhysicalReqBECM.units.TesterPhysicalReqBECM     =  '';
    can.TesterPhysicalReqBECM.TesterPhysicalReqBECM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqSPCM
% Hex ID:7E6
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7E6 = hex2dec('7E6');

ix=find(msg == MSG_7E6);          % Find all message 0x7E6's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqSPCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7E6 messages
    can.TesterPhysicalReqSPCM.nsamples      = length(ix);
    can.TesterPhysicalReqSPCM.ctime         = cantime(ix);

    can.TesterPhysicalReqSPCM.units.TesterPhysicalReqSPCM     =  '';
    can.TesterPhysicalReqSPCM.TesterPhysicalReqSPCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResPCM
% Hex ID:7E8
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7E8 = hex2dec('7E8');

ix=find(msg == MSG_7E8);          % Find all message 0x7E8's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResPCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7E8 messages
    can.TesterPhysicalResPCM.nsamples      = length(ix);
    can.TesterPhysicalResPCM.ctime         = cantime(ix);

    can.TesterPhysicalResPCM.units.TesterPhysicalResPCM     =  '';
    can.TesterPhysicalResPCM.TesterPhysicalResPCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResTCM
% Hex ID:7E9
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7E9 = hex2dec('7E9');

ix=find(msg == MSG_7E9);          % Find all message 0x7E9's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResTCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7E9 messages
    can.TesterPhysicalResTCM.nsamples      = length(ix);
    can.TesterPhysicalResTCM.ctime         = cantime(ix);

    can.TesterPhysicalResTCM.units.TesterPhysicalResTCM     =  '';
    can.TesterPhysicalResTCM.TesterPhysicalResTCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResAHCM
% Hex ID:7EB
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7EB = hex2dec('7EB');

ix=find(msg == MSG_7EB);          % Find all message 0x7EB's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResAHCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7EB messages
    can.TesterPhysicalResAHCM.nsamples      = length(ix);
    can.TesterPhysicalResAHCM.ctime         = cantime(ix);

    can.TesterPhysicalResAHCM.units.TesterPhysicalResAHCM     =  '';
    can.TesterPhysicalResAHCM.TesterPhysicalResAHCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResBECM
% Hex ID:7EC
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7EC = hex2dec('7EC');

ix=find(msg == MSG_7EC);          % Find all message 0x7EC's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResBECM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7EC messages
    can.TesterPhysicalResBECM.nsamples      = length(ix);
    can.TesterPhysicalResBECM.ctime         = cantime(ix);

    can.TesterPhysicalResBECM.units.TesterPhysicalResBECM     =  '';
    can.TesterPhysicalResBECM.TesterPhysicalResBECM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResSPCM
% Hex ID:7EE
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7EE = hex2dec('7EE');

ix=find(msg == MSG_7EE);          % Find all message 0x7EE's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResSPCM = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7EE messages
    can.TesterPhysicalResSPCM.nsamples      = length(ix);
    can.TesterPhysicalResSPCM.ctime         = cantime(ix);

    can.TesterPhysicalResSPCM.units.TesterPhysicalResSPCM     =  '';
    can.TesterPhysicalResSPCM.TesterPhysicalResSPCM     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalReqPCU
% Hex ID:7F1
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7F1 = hex2dec('7F1');

ix=find(msg == MSG_7F1);          % Find all message 0x7F1's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalReqPCU = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7F1 messages
    can.TesterPhysicalReqPCU.nsamples      = length(ix);
    can.TesterPhysicalReqPCU.ctime         = cantime(ix);

    can.TesterPhysicalReqPCU.units.TesterPhysicalReqPCU     =  '';
    can.TesterPhysicalReqPCU.TesterPhysicalReqPCU     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vector Message Name: TesterPhysicalResPCU
% Hex ID:7F9
% Last edited by: selwart
% Date:26-Apr-2011
MSG_7F9 = hex2dec('7F9');

ix=find(msg == MSG_7F9);          % Find all message 0x7F9's
if ~isempty(ix)                   % If there are any ...
    can.TesterPhysicalResPCU = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

    bb  = b(:,ix);                % bb is data bytes of the 0x7F9 messages
    can.TesterPhysicalResPCU.nsamples      = length(ix);
    can.TesterPhysicalResPCU.ctime         = cantime(ix);

    can.TesterPhysicalResPCU.units.TesterPhysicalResPCU     =  '';
    can.TesterPhysicalResPCU.TesterPhysicalResPCU     =    (2^56 * bb(1,:) + 2^48 * bb(2,:) + 2^40 * bb(3,:) + 2^32 * bb(4,:) + 2^24 * bb(5,:) + 2^16 * bb(6,:) + 2^8 * bb(7,:) + bb(8,:))' ;
end



