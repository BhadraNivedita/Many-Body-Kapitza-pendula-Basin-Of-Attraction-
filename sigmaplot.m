%code to show sigma plot


data=load('dissipation.dat');
sig=data(:,2);
lam=data(:,1);
fsize=20;
figure()

plot(lam,sig,'-square','Linewidth',2)
ylabel('$\sigma$','Interpreter','latex','Fontsize',fsize,'FontName','Times New Roman');
xlabel('$\Lambda$','Interpreter','latex','Fontsize',fsize,'FontName','Times New Roman');
set(gca,'Linewidth',2,'fontsize',15,'FontName','Times-New-Roman')
print -depsc -painters sigma.eps