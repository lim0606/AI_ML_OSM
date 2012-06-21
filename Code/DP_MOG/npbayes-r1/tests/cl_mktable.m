%% -*- matlab -*-

function table = cl_mktable(suff,Nc,k,mode)
table.njc = Nc;
table.k = k;

table.suff=suff;
if (mode==1)
table.sum_x = suff{1};
table.sum_xx = suff{2};
elseif(mode==2)
%Multi-Dirichlet
table.multi=suff;
end

end
