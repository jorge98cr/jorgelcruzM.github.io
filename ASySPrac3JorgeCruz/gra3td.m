function y=gra3td(r,omega,n)
z=r.*cos(omega*n)+r.*1i*sin(omega*n);
stem3(n,r.^n.*cos(omega*n),r.^n.*sin(omega*n));
n2=min(n):0.01:max(n);
hold on
plot3(n2,r.^n2.*cos(omega*n2),r.^n2.*sin(omega*n2));
title('Grafica de $r^n\cos{\omega n}+\mathrm{j}r^n\sin{\omega n}$','interpreter','latex')
saveas(gcf,'P2_3.jpg')
grid on
end