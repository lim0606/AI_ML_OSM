function [lat,lon] =LocalGrid2LatLon(dfEast,dfNorth)
% Convert points in metres east and north to lat and lon
% - uses the equivalent to the MOOS Geodesy class (C++)
% - pairs with LatLon2LocalGrid
%
% NB: THIS DOES NOT PRODUCE A REVERESABLE RESULT. THE ANSWER IS CLOSE
%     I.E. WITHIN A FEW CENTIMETERS BUT:
%     [LAT_OUT,LON_OUT = LatLon2LocalGrid(LocalGrid2LatLon (LAT,LON))
%     ... WILL NOT PRODUCED LAT_OUT = LAT
%
% MFALLON MAR 2012

% origin set at batters plate in fenway park
m_OriginLat   =  42.346244;
m_OriginLong  = -71.097778;

m_Deg2Rad = pi / 180;
m_MinorAxis=6356752;
m_MinorMajorRatioSq=(m_MinorAxis/6378137.0)^2;
% (semimajor axis)
dfa  = 6378137;
% (semiminor axis)
dfb = 6356752;

dftanlat2 = tan( m_OriginLat*pi/180 )^2;
dfRadius = dfb*sqrt( 1+dftanlat2 ) / sqrt( ( dfb^2/(dfa^2) )+dftanlat2 );

%//first calculate lat arc
dfYArcRad = asin( dfNorth/dfRadius ); %returns result in rad
dfYArcDeg = dfYArcRad * 180/pi;

dfXArcRad = asin( dfEast/( dfRadius*cos( m_OriginLat*pi/180 ) ) );
dfXArcDeg = dfXArcRad * 180/pi;

%//add the origin to these arc lengths
lat = dfYArcDeg + m_OriginLat;
lon = dfXArcDeg + m_OriginLong;