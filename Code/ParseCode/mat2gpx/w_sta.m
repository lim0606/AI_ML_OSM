cd /afs/csail.mit.edu/proj/drivehistory/data/gpx
a=dir('./');
for i=3:length(a)
    if(a(i).isdir)
        eval(['cd ' a(i).name]);
        if(exist('sta.txt')>0)
            delete sta.txt
        end
        if(exist('stat.txt')>0)
            delete stat.txt
        end
        
        b=dir('./');
        for j=3:length(b)
            if(b(j).name(end)=='x'&&b(j).name(end-1)=='p')
                rrr=textread(b(j).name,'%s');
                %time
                tmp1=rrr{10};
                tmp1=tmp1(find(tmp1=='T',1,'first')+1:find(tmp1=='Z',1,'last')-1);
                tmp2=rrr{end-4};
                tmp2=tmp2(find(tmp2=='T',1,'first')+1:find(tmp2=='Z',1,'last')-1);
                dlmwrite('sta.txt',[tmp1 '--' tmp2],'delimiter','','-append');
                %loc
                tmp1=rrr{8};
                tmp1=tmp1(find(tmp1=='"',1,'first')+1:find(tmp1=='"',1,'last')-1);
                dlmwrite('sta.txt',tmp1,'delimiter','','-append');
                tmp2=rrr{9};
                tmp2=tmp2(find(tmp2=='"',1,'first')+1:find(tmp2=='"',1,'last')-1);
                dlmwrite('sta.txt',tmp2,'delimiter','','-append');
                
                tmp1=rrr{end-6};
                tmp1=tmp1(find(tmp1=='"',1,'first')+1:find(tmp1=='"',1,'last')-1);
                dlmwrite('sta.txt',tmp1,'delimiter','','-append');
                tmp2=rrr{end-5};
                tmp2=tmp2(find(tmp2=='"',1,'first')+1:find(tmp2=='"',1,'last')-1);
                dlmwrite('sta.txt',tmp2,'delimiter','','-append');
            end
        end
        cd ..
    end
end
