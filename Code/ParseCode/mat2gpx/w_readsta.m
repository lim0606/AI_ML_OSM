%filename='data/0819/sta.txt';
function y=readsta(filename)

a= textread(filename,'%s');
y=zeros(length(a)/5,4);
for i=1:size(y,1)
y(i,:)=[str2num(a{i*5-3}),str2num(a{i*5-2}),str2num(a{i*5-1}),str2num(a{i*5})];
end
end
