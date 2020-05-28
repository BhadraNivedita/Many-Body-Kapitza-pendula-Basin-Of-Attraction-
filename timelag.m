clear;close;clc;
data1=load('1.dat');
data2=load('2.dat');
data3=load('3.dat');
data4=load('4.dat');
fsize=15;
figure()

subplot(2,2,1)
plot(data1(:,2),data1(:,3),'.b')
title('$\Lambda=0.001$','Interpreter','latex','Fontsize',fsize,'FontName','Times New Roman')
xlabel('$\phi_1$','Interpreter','latex','Fontsize',fsize,'FontName','Times New Roman');
ylabel('$\phi_2$','Interpreter','latex','Fontsize',fsize,'FontName','Times New Roman');
set(gca,'Linewidth',2,'fontsize',15,'FontName','Times-New-Roman')

subplot(2,2,2)
plot(data2(:,2),data2(:,3),'.b')
title('$\Lambda=0.01$','Interpreter','latex','Fontsize',fsize,'FontName','Times New Roman')
xlabel('$\phi_1$','Interpreter','latex','Fontsize',fsize,'FontName','Times New Roman');
ylabel('$\phi_2$','Interpreter','latex','Fontsize',fsize,'FontName','Times New Roman');
set(gca,'Linewidth',2,'fontsize',15,'FontName','Times-New-Roman')


subplot(2,2,3)
plot(data3(:,2),data3(:,3),'.b')
title('$\Lambda=0.1$','Interpreter','latex','Fontsize',fsize,'FontName','Times New Roman')
xlabel('$\phi_1$','Interpreter','latex','Fontsize',fsize,'FontName','Times New Roman');
ylabel('$\phi_2$','Interpreter','latex','Fontsize',fsize,'FontName','Times New Roman');
set(gca,'Linewidth',2,'fontsize',15,'FontName','Times-New-Roman')


subplot(2,2,4)
plot(data4(:,2),data4(:,3),'.b')
title('$\Lambda=1$','Interpreter','latex','Fontsize',fsize,'FontName','Times New Roman')
xlabel('$\phi_1$','Interpreter','latex','Fontsize',fsize,'FontName','Times New Roman');
ylabel('$\phi_2$','Interpreter','latex','Fontsize',fsize,'FontName','Times New Roman');
set(gca,'Linewidth',2,'fontsize',15,'FontName','Times-New-Roman')

print -depsc -painters timelag.eps