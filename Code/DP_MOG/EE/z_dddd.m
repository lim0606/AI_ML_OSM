%initialize q_of_z  each column for one data
[D,N] = size(given_data);
a=ceil(N*rand(1,N));
q_of_z=zeros(N);
q_of_z(a+(0:N-1)*N)=1;




bkm_Fc_stats()