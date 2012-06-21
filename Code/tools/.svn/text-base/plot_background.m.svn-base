function plot_background(varargin)
% 0 = lat lon
% 1 = m east and north

if (~isempty(varargin))
    sz = size(varargin,1)
    if sz > 0
        mode = varargin{1}
    end
end


% charles river only:
%back_bl = [42.351804757280824,-71.09486818313599];
%back_tr = [42.361485,-71.063282];

% boston scale:
back_bl = [42.287596,-71.262989];
back_tr = [42.40457286256256,-70.98987579345703];

if mode==1 % convert bounding box to a local scale meter
    [back_bl(2),back_bl(1)]=LatLon2LocalGrid(back_bl(1),back_bl(2));
    [back_tr(2),back_tr(1)]=LatLon2LocalGrid(back_tr(1),back_tr(2));
end



bw=1;
if bw==0 % color
    back = imread('../../data/maps/background.png');
else % black and white
    back1 = imread('../../data/maps/background_bw.png');
    back(:,:,1) =back1;
    back(:,:,2) =back1;
    back(:,:,3) =back1;
end
back(:,:,1)= flipud(back(:,:,1));
back(:,:,2)= flipud(back(:,:,2));
back(:,:,3)= flipud(back(:,:,3));


image([back_bl(2) back_tr(2)],[back_bl(1) back_tr(1)], back);
