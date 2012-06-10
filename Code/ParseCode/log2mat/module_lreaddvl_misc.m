function dvl = module_lreaddvl_misc(uniquemsgid, cantime, msg, b, canchannel, bfname) %#ok<INUSL>
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Miscellaneous Message Decoding
% Created By: RJS
% Date: 20100831
%
%
% HISTORY:
% 20100831 RJS -- 04.00.00 
%              -- Initial Release for CADS3P
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Software Version Number
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Miscellaneous version number
% Version decoding scheem
% Interface Change. Algorithm Change . Documentation or bug fix
MiscVersion = '04.00.00';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Setup can message definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MSG_8A0 = hex2dec('8A0');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Search for can messages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ix_8A0 = find(msg == MSG_8A0);
ix_ALL = find(msg == msg);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  See if any Miscellaneous messages exist
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if ~isempty(ix_8A0)

    %initialize output variable (structure)
    dvl = [];

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Frame name and description:
    % Last edited by:  Jessica Bigas
    % Date:  21-Aug-2008

    if ~isempty(ix_8A0)                    % If there are any ...
        dvl.event = struct('type','Change Name', 'version', '0.2', 'bfname', bfname, 'idx', 'H', 'nsamples', 0, 'ctime', [] );

        dvl.event.nsamples      = length(ix_8A0);
        dvl.event.ctime         = cantime(ix_8A0);
    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
else
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %  No Miscellaneous messages exist so return nothing
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    dvl=[];
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  put All can message id's in dvl structure
%
if ~isempty(ix_ALL)
    dvl.can = struct('type','DVL-All', 'version', '1', 'bfname', bfname,'idx', 'z', 'nsamples', 0, 'ctime', []);
    dvl.can.bfname = bfname;  

    dvl.can.nsamples        = length(ix_ALL);
    dvl.can.ctime           = cantime(ix_ALL);
    dvl.can.ids             = msg;
    dvl.can.unique_ids      = unique(dvl.can.ids); 
end
dvl.sw.MiscLocalReadVersion = MiscVersion;
