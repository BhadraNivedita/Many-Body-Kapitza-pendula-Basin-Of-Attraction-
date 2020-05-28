%code to simulate two coupled Kapitza pendulum
tic 
clear; close all;clc;
nn=4;mm=nn/2;a=-0.1;b=0.1; p1=unifrnd(a,b);p2=unifrnd(a,b);
fileID=fopen('datadissipation.dat','w');fileID1=fopen('dissipation.dat','w');
%fileID2=fopen('datadamped.dat','w');
for jj=1:10
fprintf(fileID,'\n');
A=[0.001 0.005 0.01 0.05 0.1 0.2  0.3 0.5 0.8 1]';
Lam=A(jj);
%Lam=0.02*jj;
pos=zeros(mm,1);    mom=zeros(mm,1);phi=zeros(mm,1);
pos(1)=pi+0.04;pos(2)=pi+0.01;mom(1)=0.0;mom(2)=0.0;
tin=0.0;options = odeset('RelTol',1e-6,'AbsTol',1e-6);
[t,x]=ode45(@(t,x)MBKalltoall(t,x,Lam,mm),[0 1000],[pos,mom],options);
pos=x(:,1:mm); mom=x(:,mm+1:nn);
%for ii=1:l
 %   if mod(ii,1)==0
  %      fprintf(fileID2,'%d\t%f\t%f\t%f\t%f\n',ii,pos(ii,1),pos(ii,2),mom(ii,1),mom(ii,2));
   % end
%end
x1=pos(:,1);x2=pos(:,2);l=length(x1);x1sq=x1.*x1;meanx1sq=mean(x1sq);
x2sq=x2.*x2;meanx2sq=mean(x2sq);
M=sqrt(meanx1sq*meanx2sq);

for tau=1:l-1
for ii=1:l-tau
    S(ii)=(x2(ii+tau)-x1(ii)).^2;
end
MS(tau)=sqrt(mean(S)/M);
end
for kk=1:l-1
    fprintf(fileID,'%d\t%f\n',kk,MS(kk));
end
sigma(jj)=min(MS);
fprintf(fileID1,'%d\t%f\n',Lam,sigma(jj));
end
fclose(fileID);fclose(fileID1);%fclose(fileID2);
toc