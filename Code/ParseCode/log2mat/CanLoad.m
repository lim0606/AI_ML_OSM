function  [varargout] = CanLoad(filepath,varargin)

% CanLoad -- Loads a CANalyzer Data file into a Matlab Structure 
%
% CONFIDENTIAL FORD MOTOR COMPANY (see notice in .m source file)
%
% USAGE:
%   [cancel_button,test_name,can] = CanLoad(full_name)
%
% DESCRIPTION:
%   Uses the Common Open Dialog Box to load a CANAlyzer Data file
%   into a Matlab Structure.  Creates the following files in the data
%   directory:  can_module_ext.m, blf_matlab.mexw32 (blf file type only)
%   binlog.dll (blf file type only), GetAsciiMessageFilterList.m (asc file
%   type only)
%
% REQUIRED ARGUMENTS:
%   None
%
% OPTIONAL ARGUMENTS:
%   full_name - The name of the CANalyzer file to be translated.  File
%               types can be .blf, .mat, .asc or .dvl. If no
%               CANalyzer file is provided, the user will be presented
%               with a file selector box.
%
%   Version - (string) The string Version in order to return the Version of
%              the CanLoad function
%
% PROPERTIES:
%   None
%
% RETURN VALUE:
%   (logical) - cancel_button variable is either 1 or 0 based on whether or
%               not the user hit the cancel button in the file selector box.
%
%   (string) - test_name variable will return the name of the file analyzed
%
%   (structure) - can variable will return the CANalyzer data in a Matlab
%                 Structure 
%
% SIDE EFFECTS:
%   None   
%
% EXAMPLES:
%   % Read a data file and return data in a Matlab structure 
%   can = CanLoad('E:\data\MyData001.blf');
%
%   % Use the file selector box to pick a file
%   [cancel_button,test_name,can] = CanLoad;
%
%   % Retrieve the version number of the CanLoad function
%   CanLoad('Version')
%
% See also:
%   CANalyzer2Cdf1File, ConvertCANalyzer2Cdf, dbc2Module, dbc2ModuleBatch
%   Gdas2Cdf1File


    % Interface Change. Algorithm Change . Documentation or bug fix
    CanLoadVersion = '12.04.04';

    % Output Variables
    CancelButton = 1;
    % Get the current matlab directory
    CurrentPath = cd;
    % initialize can structure
    can = [];
    
    
    
    % check the number of input argumnets
    switch nargin
        case 0
            [FileName, PathName] = uigetfile( ...
               {'*.vsb','Vehicle Spy Log Files (*.vsb)'}, ...
                'Pick a CAN File');
            if FileName ~=0
                FullName = strcat(PathName,FileName);
            else
                FullName = '';
            end
        case 2
            FullName = char([filepath varargin{1}]);
        otherwise
            error('wrong number of inputs')
    end
    % decompose the FullName
    [PathName,TestName,Extention] = fileparts(FullName);
    PathName = strcat(PathName,'/');
    % check to see if the path name was captured
    if strcmp(PathName,'/')
        % path name was not captured so use current directory for path name
        PathName = cd;
        PathName = strcat(PathName,'/');
        % recompose full name
        FullName = strcat(PathName,FullName);
    end
    % change to path, if user selected a different path with the dialog box
    % then the directory will change, otherwise it will stay in the current
    % directory
    %cd(PathName);

    FileName = strcat(TestName,Extention);
    if strcmp(FileName,'Version')
        fprintf('CanLoad Version:%s\n',CanLoadVersion);
        return
    end
    if ~exist([PathName  FileName],'file')
        FileName = [];
        fprintf('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n');
        fprintf(' File Does not exist!\n');
        fprintf(' No File Loaded.\n');
        fprintf('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n');
    end
    
    % check to see if the file exists
    % two ways it could not exist
    % If the user hit Cancel on the dialog box then file name is empty
    % If the user typed in the file name and made a spelling error then the
    % file name is empty
    if ~isempty(FileName)
        % start the timmer
        % clear the cancel button
        CancelButton = 0;
        
        % find out what type of file the user selected and decode the data
        % with the correct conversions
        switch Extention
        case {'.vsb','.vsb'}
            [can] =load_vehicle_spy_binary(FullName,PathName);
        otherwise
            error('Unsupported File Type');
        end
        % stop the timer
    end

    can.sw.CanLoadVersion = CanLoadVersion;
    % go back the the current path
    cd(CurrentPath);
    
    % check how many output arguments the user typed in
    switch nargout
        case 0
            if exist('can','var')
               assignin('base','can',can); % send to workspace
            end
        case 1
            varargout(1) = {can};
        case 2
            varargout(1) = {TestName};
            varargout(2) = {can};
        case 3
            varargout(1) = {CancelButton};
            varargout(2) = {TestName};
            varargout(3) = {can};
        otherwise
            error('wrong number of outputs')
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% L O C A L   F U N C T I O N S
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% funciton can = load_vehicle_spy_binary(FileName,PathName)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function can = load_vehicle_spy_binary(FileName,PathName)
    MICROSEC2SEC = 1e-6;         % micro-sec to sec
    R = strread(FileName,'%s','delimiter','\\');
    FileName=char(R(end));

    
    
    % Load the entire file
    fid = fopen(FileName,'rb');
    if fid == -1
      error('Unable to open file %s',FileName);
    end
    % Toss Header info for file since its not used
    hdr = fread(fid,10,'uchar');

    % read data arrays from file in 64 byte chuncks
    more_data=1;
    msg=[];
    cantime=[];
    b=[];
    canchannel=[];
    chunk_size = 200000;
    while(more_data)
        
        data = fread(fid,[64,chunk_size],'*uint8');
        % extract the can message ids
        this_msg = (bitshift(double(data(38,:)),8)+double(data(37,:)))';
        this_cantime = bitshift((bitshift(uint32(data(12,:)),24)+bitshift(uint32(data(11,:)),16)+bitshift(uint32(data(10,:)),8)+uint32(data(9,:))),-2)';
        % reset can time to start at zero for each file
        this_b = uint8(data(41:48,:));
        % Extract the channel.
        this_canchannel =  uint8(data(27,:));
        
        msg = [msg;single(this_msg)];
        cantime = [cantime;single(this_cantime)];
        b = [b,this_b];
        canchannel = [canchannel,this_canchannel];
        
%         size(msg)
%         size(cantime)
%         size(b)
%         size(canchannel)
        
        if size(data,2) < chunk_size
            more_data =0;
        end
    end

    fclose(fid);

    cantime = double(10.*floor(cantime./10))*MICROSEC2SEC/10;

    unique_channels = unique(canchannel);

    % Find unique CAN message ID's per channel
    uniquemsgid = cell(1,unique_channels(end));
    for c=1:length(uniquemsgid)
        uniquemsgid{c} = double(unique(msg(canchannel == c))); % Channel c
    end
   
    if ~exist('can_module_ext','file')     % If local function exists
        keyboard
        dbc_file_info = dir(strcat(PathName,'*.dbc'));
        if ~isempty(dbc_file_info);
            dbc_file_names = {dbc_file_info.name};
            dbc2ModuleBatch(dbc_file_names);
        else
            fprintf('\n%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n');
            fprintf('No CAN Module Extender File exist!\n');
            fprintf('Please Run Dbc2ModuleBatch\n');
            fprintf('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n\n');
        end
    end
    
    
    
    if exist('can_module_ext','file')     % If local function exists
        can_ext = can_module_ext(uniquemsgid, cantime, msg, b, canchannel, FileName);
        % Copy the fields of can_ext to can
        fields = fieldnames(can_ext);
        for k=1:length(fields);
            can.(fields{k}) = can_ext.(fields{k});
        end
        clear can_ext;
        can = unroll_can(can);
    else
        can = [];
    end
end


function s = unroll_can(s)
    % Unroll the scanidx fields
    adjustScanIdx = (2^16);
    if isfield(s, 'scanidx')
        s.scanidxu = s.scanidx;
        iroll = find(diff(s.scanidx) < -adjustScanIdx/2);
        if length(iroll) == 1  % Only handle single rollover
            s.scanidxu(iroll+1:end) =  s.scanidx(iroll+1:end) + adjustScanIdx;
        end
    end
    % Unroll the mvs_scanidx fields
    if isfield(s, 'mvs_scanidx')
        s.mvs_scanidxu = s.mvs_scanidx;
        iroll = find(diff(s.mvs_scanidx) < -adjustScanIdx/2);
        if length(iroll) == 1  % Only handle single rollover
            s.mvs_scanidxu(iroll+1:end) =  s.mvs_scanidx(iroll+1:end) + adjustScanIdx;
        end
    end

    % Unroll the ctime field
    adjustCtime = (2^32)*1e-6;
    if isfield(s, 'ctime')
        s.ctimeu = s.ctime;
        iroll = find(diff(s.ctime) < -adjustCtime/2);
        if length(iroll) == 1  % Only handle single rollover
            s.ctimeu(iroll+1:end) =  s.ctime(iroll+1:end) + adjustCtime;
        end
    end

    % Recursively process sub-structures
    fields = fieldnames(s);
    for k=1:length(fields)
        if isstruct(s.(fields{k}))
            s.(fields{k}) = unroll_can(s.(fields{k}));
        end
    end
end

% **************************************************************************
%
% $Source: CanLoad.m $
% $Revision: 1.1 $
% $Date: 2011/02/10 14:42:18EST $
% $Author: Tony Sleath (asleath) $
% $State: Dev $
% $Locker:  $
%
% **************************************************************************
%
% $Log: CanLoad.m  $
% Revision 1.1 2011/02/10 14:42:18EST Tony Sleath (asleath) 
% Initial revision
% Member added to project d:/si_root/matlab/VehDyn/Core/util/Translator/private/project.pj
%
% AUTHOR:  Reid Steiger
% CREATED: 20081216
%
% HISTORY:
%
% 20081216 RJS -- Initial Release
%
% 20090923 RJS -- Converted code to use the mulit select option with the
%                 open dialog box
%              -- added function to move ascii files to a sub folder after
%                 conversion
%              -- Removed Spinner and added wait bar
%              -- Added Message List Filter to make extraction faster
%
% 20090924 RJS -- Added Clear statment
%
% 20090929 RJS -- Removed the mulit select option with the open dialog box
%
% 20100324 RJS -- Added in local read call for flexability
%
% 20100506 RJS -- V 2.00.00
%              -- Updated CAN Message Filter to work with both types of RT
%                 Range data (standard and R&A version)
%              -- Removed code that moves ascii files to seperate directory
%              -- Still trying to remove call to load_dv_fmc which relies
%                 on Delphi tools.  Would like to switch to load_dv_binary
%                 but need more time to work out all of the issues.
%              -- Updated auto detection of GPS Data
%              -- ADDED GPSMatch flag for ASSET Project
%
% 20100827 RJS -- V 3.00.00
%              -- Initial release for CADS3P
%
% 20100916 RJS -- V 4.00.00
%              -- Added support for reading Vector blf file type
%                 NOTE: this new type uses a dll and a mex funciton to read
%                 data.  blf_matlab.mexw32 and binlog.dll are required to
%                 be in your computer path for this type of file to work
%
% 20100923 RJS -- V 5.00.00
%              -- Removed GPSMatch flag
%              -- Made the message list a function and placed it at the
%                 bottom of the file
%
% 20101004 RJS -- V 6.00.00
%              -- Changed can module extender function name
%
% 20101015 RJS -- V 7.00.00
%              -- Added CAN Time Unrolling
%
% 20101018 TB   -- V 7.00.01
%               -- Fixed code so that file extentions with ALL CAPS also
%                  work
%
% 20101015 RJS -- V 7.01.01
%              -- Updated to use load_dv_binary
%
% 20101213 RJS -- V 8.01.01
%              -- Moved function GetAsciiMessageFilterList to external
%                 function.  This is to accomidate new dbc2module_batch
%                 which now creates this function based on the dbc files
%                 that are used.
%
% 20101213 RJS -- V 9.01.01
%              -- Added CAN Time Unrolling for asc files
%
% 20101213 RJS -- V 10.01.01
%              -- No change to this file. Updated to dbc2module.m
%                 to add units to the can signal data sturuture.  This
%                 change was needed to be compatable with the vehicle
%                 dynamics toolbox
%
% 20110203 RJS -- V 10.02.02
%              -- removed _ from function name to be compatable with the
%                 vehicle dynamics toolbox
%              -- Changed Mex function name from blf_matlab to BlfMatlab
%                 to be compatable with the vehicle dynamics toolbox
%                 NOTE: Vector blf file type uses a dll and a mex funciton 
%                 to read data.  BlfMatlab.mexw32 and binlog.dll are 
%                 required to be in your computer path for this type of 
%                 file to work
%              -- Moved unroll_ctime inside each of the different case
%                 statements since mat type files do not need to be
%                 unrolled
%              -- Added Software version number to output to track changes
%              -- Files inlcuded with this version
%                 dbc2ModuleBatch.m  Version 01.00.01
%                 dbc2module.m       Version 06.03.06
%                 binlog.dll@@\main\CADS3P\1
%                 BlfMatlab.mexw32@@\main\CADS3P\4
%              
% 20110203 RJS -- V 10.02.03
%              -- Added input file checking to make sure file exists before
%                 trying to load it
%              
% 20110207 RJS -- V 10.03.03
%              -- Added logic to create for can_modlule files if they do
%                 not exist
%              
% 20110209 RJS -- V 10.04.04
%              -- Moved code around to make more functional
%              -- Add "CurrentDirectory"  Now if the user changes
%                 directories to find files with the dialog box, the matlab
%                 directory will come back to the current directory.  The
%                 old versions of CanLoad changed directoies and left
%                 matlab at the changed directory location.
%              -- Fixed bug with ascii files that can_modules were not 
%                 created if they did not exist.  Previous version added
%                 the ability to automatilcy detect if can_modules existed
%                 and if they did not then can load would try to create
%                 them based on a dbc file located in the directory with
%                 the data.  This now works for asc, blf, and dvl files.
%                 NOTE: This funciton will not work with MAT files since
%                 they must have already been created with module files so
%                 it would be redundant
%              -- Merged in code for load_dv_binary.  This eliminates the
%                 need for the load_dv_binary.m file 
%              
%              
% 20110209 RJS -- V 11.04.04
%              -- Added method to check version number from command line
%                 See Examples Above
%
% 20110224 RJS -- V 12.04.04
%              -- Added Vehicle Spy Binary format Decoding
%                 http://intrepidcs.com/VehicleSpy/
%
%
% **************************************************************************
%
% CONFIDENTIAL FORD MOTOR COMPANY
% This is an unpublished work of authorship, which contains trade secrets,
% created in 2009. Ford Motor Company owns all rights to this work and
% intends to maintain it in confidence to preserve its trade secret status.
% Ford Motor Company reserves the right, under the copyright laws of the
% United States or those of any other country that may have jurisdiction, to
% protect this work as an unpublished work, in the event of an inadvertent or
% deliberate unauthorized publication. Ford Motor Company also reserves its
% rights under all copyright laws to protect this work as a published work,
% when appropriate. Those having access to this work may not copy it, use it,
% or disclose the information contained in it without the written author-
% ization of Ford Motor Company.
%
% **************************************************************************
