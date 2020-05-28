%code for coupled Kapitza pendulum for basin of attraction// full basin of
%attraction
clc;clear;tic;
k=1;e=0.3;r=11;q=5;p=0.025;lam=0.1;kk=1;

Pendulum=@(t,x) [x(2);-x(2)/(q*r)-sin(x(1))/(r*r)+e*cos(t)*sin(x(1))-lam*cos(x(1)-x(3));x(4);-x(4)/(q*r)-sin(x(3))/(r*r)+...
    e*cos(t)*sin(x(3))-lam*cos(x(1)-x(3))];
options = odeset('RelTol',1e-6,'AbsTol',1e-6);
s=pi;tt=0;
for i= 0.0:p*0.5:2*pi
     for j=-1:p*0.05:1
        [~,xx]=ode45(Pendulum,(0:(1000)*pi),[i,j,s,tt],options);
        M=mean(xx(end-500:end,1));
        n=round(M/pi);        a=abs(M-n*pi);
        [t,yy]=ode45(Pendulum,[0 2.5*pi],[xx(end,1),xx(end,2),xx(end,3),xx(end,4)],options);
        
        pfinal=(yy(end,1)-xx(end,1));
                if((mod(n,2)==1)&&(abs(pfinal)<=2*pi))
            ang(k)=i;vel(k)=j;dev(k)=a;finang(k)=pfinal;
           
            k=k+1;i,j
           %p=0.0125;
        %else
         %       p=0.05;
        end
     end
end
str=sprintf('lam%f.dat',lam);
A=[ang;vel];
fileID=fopen(str,'w');
fprintf(fileID,'%6.2f %12.8f\n',A);
fclose(fileID);
toc;
