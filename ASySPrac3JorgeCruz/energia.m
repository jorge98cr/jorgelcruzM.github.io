function y=energia(t,x)
%x son las alturas de la señal discreta
%t es el vector de tiempo 
E=x(1)^2;
for a=2:length(x);
    E=E+x(a)^2;
end
y=E;
fprintf('La energia de la señal es: %4.4f',y);
stem(t,x);
a=abs(t(1))+.5;
b=abs(t(end))+.5;
c=abs(min(x))+.5;
d=abs(max(x))+.5;
if min(x)>=0;
    axis([-a b, 0 d])    
else
    axis([-a b, -c d]) 
end 
grid on
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
