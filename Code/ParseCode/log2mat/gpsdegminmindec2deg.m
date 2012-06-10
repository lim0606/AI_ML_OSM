function A = gpsdegminmindec2deg(Degrees, Minutes, MinutesDecimal)
% gpsdegminmindec2deg(Degrees, Minutes, MinutesDecimal) converts Latitude 
% and Longitude in Degrees Minutes Decimal Minutes to Latitude and 
% Longitude Degrees accounts for sign of coordinates
%
% Example: -87 deg 17 min 0.6815 min(decimal)
%   A = gpsdegminmindec2deg(-87,17, 0.6815)
%   A = 
%       -87.2947


%% Determine the sign of the degrees
DegreesSign = ( ((Degrees > 0) .* 1)...      % If + then 1, else 0
              + ((Degrees < 0) .* (-1)) );    % If - then -1, else 0

% Convert signed integer degrees/minutes and decimal minutes to absolute
% decimal degrees
DegreesAbs = abs(Degrees) + ((Minutes + MinutesDecimal)./60);

% Calculate the signed decimal degress
A = DegreesSign.*DegreesAbs;