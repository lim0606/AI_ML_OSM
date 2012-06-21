function [rgb]=jet_lookup(value)
fourValue = value*4;
rgb(1)   = min(fourValue - 1.5, -fourValue + 4.5);
rgb(2) = min(fourValue - 0.5, -fourValue + 3.5);
rgb(3)  = min(fourValue + 0.5, -fourValue + 2.5);

for i=1:3
    if (rgb(i) <0)
        rgb(i) =0;
    elseif (rgb(i) >1)
        rgb(i) =1;
    end
end