function smooth_batch_in_matlab()
% An attempt at doing NLS smoothing in matlab - without using iSAM
% Doesnt work properly. Kept in case we want to try again
% mfallon march 2012
close all

% initial state
%X=[0,0;
% 1,1
% 2,2;
% 3,3];

X_s = [0,0.4];
X_e = [6,6];

s_X=[0.01;
     0.01];

%dX =[1,1;
%    1,1];

dX =[1,1;
    1,2;
    2,2;
    1,1];

s_dX = [00.1;
        00.1;
        00.1;
        00.1];
     


    
h=figure
subplot(5,5,1)
hold on



global i
i=0
options = optimset('Display','off','TolFun',1e-13);
%options = optimset('GradObj','off');%,'TolFun',1e-13);


X = [0.0,0;cumsum(dX)];
X0 =X;

h2=figure
plot(X0(:,1),X0(:,2),'ok')


X =X(1:end-1,:);

figure(h)
[X]= fminunc(@(X) cnnls_cost(X,X_s,X_e,s_X,dX,s_dX),X0,options);    
    
%C=cnnls_cost(X,X_s,X_e,s_X,dX,s_dX)    
   
figure(h2);hold on
    plot(X_s(1),X_s(2),'og')
    plot(X_e(1),X_e(2),'or')
    plot(X(:,1),X(:,2),'.')
    title(i)
keyboard


function [C]=cnnls_cost(X,X_s,X_e,s_X,dX,s_dX)
global i
% Cost Function for NLS Cooperative Navigation
%
% G Pap 24 Sept 2009

% 
%   Input.p=a_dummy.nls.p(Geo_k,1)
%   Input.s=a_dummy.nls.p(Geo_k,2)
%   Input.r=a_dummy.nls.r(Geo_k)
%  Input.sigmaDR=0.5*(diff([0; 0.25*a_dummy.nls.Update_Iter']));  
%  Input.dx=diff([-337;a_log.state_dr(a_dummy.nls.Update_Iter-1,1)])
%  Input.dy=diff([-70;a_log.state_dr(a_dummy.nls.Update_Iter-1,2)])

% X  2xN current state vector
%   - top & last correspond to global positions
%
% sigmaDR - variance on DR - first and last being same, else, about same
% 300, 4, 4, 4, 300 ??
% 
% dX 2xN diff state vector
%    
% X_s = prior on start x,y position
% X_e = prior on end   x,y position

c_var_s = 0.5*(1/s_X(1)^2);
c_dvar_d =0.5.*(1./s_dX.^2);
c_var_e = 0.5*(1/s_X(2)^2);

C_s = sqrt(sum((X(1,:)   - X_s).^2));
C_diff = sqrt(sum((diff(X) - dX).^2,2));
C_e = sqrt(sum((X(end,:) - X_e).^2));
X
if 1==0
   % no weighting
else
    C_s= c_var_s*C_s;
    C_diff= c_dvar_d.*C_diff
    C_e= c_var_e*C_e;
end
    C = C_s + sum(C_diff) + C_e;

disp([num2str(C_s) ' ' num2str(sum(C_diff))  ' ' num2str(C_e) ' ' num2str(C)])
i=i+1;
if (i <25)
    subplot(5,5,i)
    hold on
    plot(X(:,1),X(:,1),'.')
    plot(X_s(1),X_s(2),'.g')
    plot(X_e(1),X_e(2),'.r')
    title([num2str(i) ' - ' num2str(C)])
end
%keyboard

% 
% 
% 
% 
% 
% temp=size( (Input.r),1);
% x=X(1:temp);
% y=X(temp+1:end);
% z=Input.r;
% p=Input.p;
% s=Input.s;
% sigmaDR=Input.sigmaDR;
% dy=Input.dy;
% dx=Input.dx;
% 
% 
% xo=init(1) ;
% yo= init(2);
% 
% 
% for ii=1:temp 
%     if ii==1
%    cost(ii)=(1/meas_sigma^2)*0.5*(((x(ii)-p(ii))^2 + (y(ii)-s(ii))^2)^0.5 -z(ii) )^2 + 0.5*(1/sigmaDR(ii)^2)*( (x(ii)-xo-dx(ii))^2 + (y(ii)-yo-dy(ii))^2);
%     %cost(i)=(1/5)*0.5*(((x(i)-p(i))^2 + (y(i)-s(i))^2) +z(i)^2 ) + 0.5*(1/sigmaDR(i))*( (x(i)-xo-dx(i))^2 + (y(i)-yo-dy(i))^2);    
%     elseif 
%     if ii>1
%     cost(ii)=(1/meas_sigma^2)*0.5*(((x(ii)-p(ii))^2 + (y(ii)-s(ii))^2)^0.5 -z(ii) )^2  + 0.5*( (1/sigmaDR(ii)^2)*(x(ii)-x(ii-1)-dx(ii))^2+ (1/sigmaDR(ii)^2)*(y(ii)-y(ii-1)-dy(ii))^2);
%     %cost(i)=(1/5)*05*(((x(i)-p(i))^2 + (y(i)-s(i))^2) +z(i)^2 )   + 0.5*( (1/sigmaDR(i))*(x(i)-x(i-1)-dx(i))^2+ 5*(1/sigmaDR(i))*(y(i)-y(i-1)-dy(i))^2);
%     
%     if ii>5
%     keyboard
%     end
%     end
% end
% C=sum(cost);