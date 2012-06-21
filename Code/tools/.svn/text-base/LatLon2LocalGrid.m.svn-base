function [metersEast,metersNorth] =LatLon2LocalGrid(lat,lon)
% Convert points in lat and lon to metres east and north
% on a local metric grid centered on the orgin specified below
% - uses the equivalent to the MOOS Geodesy class (C++)
% - pairs with LatLon2LocalGrid
%
% NB: THIS DOES NOT PRODUCE A REVERESABLE RESULT. THE ANSWER IS CLOSE
%     I.E. WITHIN A FEW CENTIMETERS BUT:
%     [LAT_OUT,LON_OUT = LatLon2LocalGrid(LocalGrid2LatLon (LAT,LON))
%     ... WILL NOT PRODUCED LAT_OUT = LAT
%
% MFALLON MAR 2012

% origin set at batter's plate in fenway park
m_OriginLat   =  42.346244;
m_OriginLong  = -71.097778;

m_Deg2Rad = pi / 180;
m_MinorAxis=6356752;
m_MinorMajorRatioSq=(m_MinorAxis/6378137.0)^2;


temp = (tan(lat * m_Deg2Rad)).^2;
r = m_MinorAxis * sqrt(1 + temp) ./       sqrt( m_MinorMajorRatioSq + temp);
rads = (lon - m_OriginLong) .* m_Deg2Rad;
metersEast = r .* sin(rads) .* cos(lat .* m_Deg2Rad);
rads = (lat - m_OriginLat) .* m_Deg2Rad;
metersNorth = r .* sin(rads);

