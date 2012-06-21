Fs=[1,2,3]; 
range=3;
while(Fs(end)~=Fs(end-1)&& Fs(end-2)~=Fs(end-1))
len_Bdd=length(unique(part));


%a)new cluster
K=length(unique(part));

Best=min(Fs)


pick=ceil(200*rand(1,range));
Fs=[];
for w=unique(part)
    for ww=unique(part)
        for www=unique(part)
tmp_part=part;
tmp_part(pick(1))=w;
tmp_part(pick(2))=ww;
tmp_part(pick(3))=www;
for i=unique(tmp_part)
classes(i) = bkm_mkclass(data(:,find(tmp_part==i)),xi,p1,p2,p3,p4);
F(i)=[bkm_Fc_stats(classes(i).sum_x,{classes(i).sum_xx},classes(i).Nc,p1,p2,p3,p4,p5)];
end
Fs(w,ww,www)=sum(F)+bkm_term_K(N,length(unique(tmp_part)),mode,p6);
        end
    end
end

if(min(Fs)<Best)
Best=min(min(min(Fs)));
    part(0
    Best=
end

end
