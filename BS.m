% basin stability for coupled kapitza

d1=load('lam0.001000.dat');
d2=load('lam0.010000.dat');
d3=load('lam0.050000.dat');
%d4=load('lam0.100000.dat');
d5=load('lam0.500000.dat');
d6=load('lam0.750000.dat');
d7=load('lam1.000000.dat');
l1=0.001;l2=0.01;l3=0.05;l4=0.1;l5=0.5;l6=0.75;l7=1.0;
s1=length(d1(:,1));s2=length(d2(:,1));s3=length(d3(:,1));
%s4=length(d4(:,1));
s5=length(d5(:,1));s6=length(d6(:,1));
s7=length(d7(:,1));
L=[l1 l2 l3  l5 l6 l7 ]';
S=[s1 s2 s3  s5 s6 s7 ]';
S=S/400000;
fsize=18;
plot(L,S,'-*r','Linewidth',2)

xt = get(gca, 'XTick');
set(gca, 'FontSize', 20)

set(gca,'Linewidth',2,'fontsize',15,'FontName','Times-New-Roman')
%set(gca,'FontName','Times New Roman','Fontsize',20,'XColor','k','YColor','r')

xlabel('$\lambda$','Interpreter','latex','Fontsize',fsize,'FontName','Times-New-Roman');
ylabel('Basin stability','Interpreter','latex','Fontsize',fsize,'FontName','Times-New-Roman');


print -painters -depsc bs-lam.eps