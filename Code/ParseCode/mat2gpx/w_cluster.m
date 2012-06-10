function label=w_cluster(y,thres)
label=ones(size(y,1),1);
cc=2;
center=[y(1,:)];
for i=2:size(y,1)
if(min(max(abs(bsxfun(@minus, center,y(i,:))')))>thres)
center=[center;y(i,:)];
label(i)=cc;
cc=cc+1;
else
[tmp,label(i)]=min(sum(abs(bsxfun(@minus, center,y(i,:))),2));
end
end

end
