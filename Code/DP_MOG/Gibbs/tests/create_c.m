function y=create_c(datas,datacc,num_c,N,prior)

y=0;
classes=cell(1,num_c);
tmp=zeros(2,num_c);
tmp_s=zeros(2,2,num_c);
count=zeros(1,num_c);

for j=1:length(N)
for n=1:N(j)
tmp(:,datacc{j}(n))=tmp(:,datacc{j}(n))+datas{j}(:,n);
tmp_s(:,:,datacc{j}(n))=tmp_s(:,:,datacc{j}(n))+datas{j}(:,n)*datas{j}(:,n)';
count(datacc{j}(n))=count(datacc{j}(n))+1;
end
end

for j=1:num_c
j
classes{j} = cl_mkclass(tmp(:,j),tmp_s(:,:,j),count(j),prior,[],1,1);
y=y+classes{j}.F;
end

end