function gratd2(x,escalamiento,n)
new=escalamiento*n;
c=0:1:new(end);
h=linspace(0,0,new(end)+1);
ev=x(new);
ev(1)=h(1);
for i=2:length(new);
    if h((escalamiento-1)*i+i-(escalamiento-1))~=ev(i)
    h((escalamiento-1)*i+i-(escalamiento-1))=ev(i);  
    else 
    end
end
b=abs(n(end))+.5;
d=abs(max(x(n)))+.5;
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
axis([0 b, 0 d]) 
stem(c,h,'LineWidth',2,'Color',[1 0 1])
grid on
title('Ejemplo 2')
xlabel('$n$','interpreter','latex')
legend('(n/4-2)^2')
saveas(gcf,'Ej2P3_1_2.jpg')

