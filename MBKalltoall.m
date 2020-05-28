% Writing down th equation for many body Kapitza pendula

function dy = MBKalltoall(t,y,Lam,mm)
%% Setting the parameters
dy=zeros(2*mm,1);
g0=1.0; a=0.2; w=10.0;beta=0.05;

%% equations for the many body Kapitzapendula with all to all interaction
for i=1:mm
    dy(i)=y(mm+i);
end

for jj=1:mm
    for ii=1:mm
        dy(mm+ii)=-beta*y(mm+ii)-(g0+a*w*w*cos(w*t))*sin(y(ii))-Lam*(cos(y(ii)-y(jj)));
    end
end
end
