function y=gra2td(r,omega,n)
f=r.^n.*cos(omega*n)+1i*r.^n.*sin(omega*n);
z2=angle(f);
stem(n,z2,'LineWidth',2,'Color',[1 0 1]);
ax2 = gca;
ax2.XAxisLocation = 'origin';
ax2.YAxisLocation = 'origin';
axis([-3 23, -4 4])
grid on
title('Grafica de $\angle f[n]$ vs $n$','interpreter','latex')
saveas(gcf,'P3_3_3.jpg')
figure 
z=abs(f);
stem(n,z,'LineWidth',2,'Color',[1 0 1])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
axis([-3 23, -1 8])
grid on
title('Grafica de $|f[n]|$ vs $n$','interpreter','latex')
saveas(gcf,'P3_3_2.jpg')
end