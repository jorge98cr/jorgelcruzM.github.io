function y=gratd(x,n)
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
stem(n,x(n),'LineWidth',2,'Color',[1 0 1]);
a=abs(n(1))+.5;
b=abs(n(end))+.5;
c=abs(min(x(n)))+.5;
d=abs(max(x(n)))+.5;
if min(x(n))>=0 && n(1)>=0;
    axis([0 b, 0 d])    
else
    axis([-a b, -c d]) 
end 
grid on
title('n0.9^nu[n]')
xlabel('$n$','interpreter','latex')
%legend('')
saveas(gcf,'P3_2_2_2.jpg')

end