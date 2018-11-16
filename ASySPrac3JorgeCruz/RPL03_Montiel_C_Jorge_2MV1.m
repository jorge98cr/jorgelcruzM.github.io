%% Práctica 3: Señales en tiempo discreto
%  Cruz Montejo Jorge Luis
%  Montiel Cruz Jorge de Jesús
%  2MV1
%  Análisis de Señales y Sistemas
%% Objetivos 
% * Manipulación básica de MATLAB
% * Gráficas de señales reales y complejas discretas
% * Transfomración de señales discretas (escalamientos y traslaciones)
% * Cálculo de energía y potencia de señales discretas
%% Antecedentes 
% Escalamiento horizontal de señales discretas
%
% El escalamiento de señales en tiempo discreto, tanto horizontal como vertical, tiene un símil con su contraparte del tiempo continuo, sin embargo, existen ciertas consideraciones a tomar en cuenta a la hora de aplicarlo a las señales del tiempo discreto, esto es, como a continuación se detalla.
%
% Un esclamiento vertical de señales, tanto en tiempo discreto como en tiempo continuo, funciona de la misma manera, las señales correspondientes se mueven hacia arriba o abajo, según corresponda, sin incoveniente alguno. Pero cuando se realiza un escalamiento horizontal,  ya sea de compresión o expansión, la señal en tiempo discreto sufre algunos cambios, esto es, pues, debido a la forma en la que está definida (en los números enteros), de esta manera, cuando escalamos horizontalmente con efecto de compresión existe una perdida de datos. Esto es fácil de ver, puesto que al efectuar la división esta resultará en ciertos puntos un número decimal, para los cuales nuestra función de tiempo discreto no está definida. Decimos que existe pérdida de datos.
% Mientras que para los escalamientos horizontales con efecto de expansión habrá que realizar una consideración útil, y es que se indefine en ciertos puntos. 
% En los siguientes ejemplos se detalla lo anteriormente expuesto.
%
% *Ejemplo 1: Compresión*
%
% Sea la señal $x[n]$ una señal del tiempo discreto, con la siguiente
% expresión $x[n]=(n-2) u[n]$, su gráfica correspondiente
%
% <<EjP3_1.jpg>>
% 
% Si hacemos ahora $x[5n]=(5n-2) u[n]$ tendremos como resultado una pérdida
% de datos.
%
% <<EjP3_1_1.jpg>>
%
% de la primera figura vemos que para $n=2$ el valor de la señal es $0$,
% mientras que en la segunda figura, puesto que se comprimió por un factor
% de $5$ y al ser 2 un número cuya división por $5$ no es un entero,
% entonces, este dato se pierde.
%
% *Ejemplo 2: Expansión*
%
% Sea la señal $x[n]$ una señal del tiempo discreto, con la siguiente
% expresión $x[n]=(n-2)^2 u[n]$, su gráfica correspondiente
%
% <<Ej2P3_1.jpg>>
% 
% Si hacemos ahora $x[5n]=5n-2 u[n]$ tendremos como resultado puntos sin
% definir.
%
% <<Ej2P3_1_2.jpg>>
%
% Vemos de la primera figura que para $n=1$ el valor de la señal es $1$,
% así pues, al expandir por un factor de 4, este valor corresponderá a
% $n=4$ de la segunda figura, mientras que de de $(4,12)$ no existen los
% valores, puesto que, de existir, significa que en la función original
% existían puntos cuya multiplicación por 4 nos arroja un número en este
% intervalo, lo cual quiere decir, en otras palabras, estaba definida para
% números no enteros, lo cual no va acorde a nuestra definición de señal en
% tiempo discreto.
%
% Convenientemente, se pueden asignar valores de cero o bien realizar
% interpolación para asignar un valor a los valores de $n$ para los cuales
% no esté definida la señal escalada.
%
%% Desarrollo 
%
%
%
%
%
%
%% 1.
% Crea una función que se llame _fun1_ y reciba tres parámetros
% $r$, $\omega$ y $n$ la función debe regresar la evaluación
% $f[n]=r^n\cos{[\omega n]}+ r^nj\sin{[\omega n]}$, esta función debe
% trabajar con $r \in R^{+}$, $\omega \in R$ y $n \in N^{n}$
%
%   function y=fun1(r,omega,n)
%   n2=n/floor(n);
%   n3=uint8(n2);
%   if r>0 && imag(omega)==0 && n3==1
%   f=r.^n.*cos(omega*n)+r.^n*1i.*sin(omega*n)
%   else
%   disp('La funcion solo es valida si r es un real positivo, omega es un real y n pertenece a los enteros')
%   f=('funcion no definida');
%   end 
%   y=f;
%   end
%
%% 2. 
% Construya una función que grafique funciones de $f:N\rightarrow R$ en el
% formato de su elección y pruebe su código mostrando la gráfica de
% $x[n]=na^nu[n]$ vs $n$ para $n \in -2,...,10$ para $a=0.9$
%
% <<P3_2_2_2.jpg>>
%% 3. 
% Construya una función que grafique funciones $f:N \rightarrow R^2$ en el
% formato de su elección y pruebe su código mostrando la gráfica de la
% función exponencial del primer problema, muestre la gráfica de $f[n]$
% para $r=1.1$, $\omega=0.5$ y $n \in -2,...,20$ , además, muestre la
% gráfica de $|f[n]|$ vs $n$ y $\angle f[n]$ vs $n$.
%
% <<P3_3.jpg>>
%
% <<P3_3_2.jpg>>
%
% <<P3_3_3.jpg>>
%
%% 4. 
% Programe una función que calcule la energía de una señal en tiempo discreto la función se debe llamar energiadis. La función recibe dos parámetros de entrada: el vector de tiempo y las alturas asignadas. La función regresa la energía de la señal y despliega la gráfica de la señal.
%
%   function y=energiadis(t,x)
%   %x son las alturas de la señal discreta
%   %t es el vector de tiempo 
%   x2=x.^2;
%   E=sum(x2)
%   y=E;
%   fprintf('La energia de la señal es: %4.4f',y);
%   stem(t,x);
%   a=abs(t(1))+.5;
%   b=abs(t(end))+.5;
%   c=abs(min(x))+.5;
%   d=abs(max(x))+.5;
%   if min(x)>=0;
%   axis([-a b, 0 d])    
%   else
%   axis([-a b, -c d]) 
%   end 
%   grid on
%   ax = gca;
%   ax.XAxisLocation = 'origin';
%   ax.YAxisLocation = 'origin';
%   end 
%% 5. 
% Resuelva el problema 3.1.1 de Lathi, aplicando su función anterior
t=-3:3; x=-9:3:9;
energia(t,x)
%% 6. 
% Resuelva el problema 3.2.3 de Lathi
%
% La señal original se muestra a continuación 
%
%   gratd(@(n)n.*((n>=0)&(n<=3))+(-n+6).*((n>3)&(n<=6)),0:6)
%
% <<P3_6.jpg>>
%
% Para $x[-n]$
%
%   gratd(@(n)-n.*((-n>=0)&(-n<=3))+(n+6).*((-n>3)&(-n<=6)),0:6)
%
% <<P3_6_a.jpg>>
%
% Para $x[n+6]$   
%
%   gratd(@(n)(n+6).*(((n+6)>=0)&((n+6)<=3))+(-(n+6)+6).*(((n+6)>3)&((n+6)<=6)),-6:0)
%
% <<P3_6_b.jpg>>
%
% Para $x[n-6]$
%
%    gratd(@(n)(n-6).*(((n-6)>=0)&((n-6)<=3))+(-(n-6)+6).*(((n-6)>3)&((n-6)<=6)),0:12) 
%
% <<P3_6_c.jpg>>
% 
% Para $x[3n]$
% 
%   gratd(@(n)(3*n).*(((3*n)>=0)&((3*n)<=3))+(-(3*n)+6).*(((3*n)>3)&((3*n)<=6)),0:6)
%
% <<P3_6_d.jpg>>
%
% Para $x[\frac{n}{3}]$ se realizó una modificación la función _gratd_, dicha
% modificación, así como la función original, se muestran en el apéndice.
% 
%   gratd2(@(n)(n/3).*((n/3>=0)&(n/3<=3))+(-(n/3)+6).*(((n/3)>3)&((n/3)<=6)),3,0:6)
%
% <<P3_6_e.jpg>>
%
% Para $x[-n+3]$
%
%   gratd(@(n)(-n+3).*((-n+3>=0)&(-n+3<=3))+(-(-n+3)+6).*(((-n+3)>3)&((-n+3)<=6)),-6:6)
%
% <<P3_6_f.jpg>>
%
%% Apéndices
% Funcion _gratd_
%
%   function y=gratd(x,n)
%   ax = gca;
%   ax.XAxisLocation = 'origin';
%   ax.YAxisLocation = 'origin';
%   stem(n,x(n),'LineWidth',2,'Color',[1 0 1]);
%   a=abs(n(1))+.5;
%   b=abs(n(end))+.5;
%   c=abs(min(x(n)))+.5;
%   d=abs(max(x(n)))+.5;
%   if min(x(n))>=0 && n(1)>=0;
%   axis([0 b, 0 d])    
%   else
%   axis([-a b, -c d]) 
%   end 
%   grid on
%   title('titulo')
%   xlabel('$t$','interpreter','latex')
%   legend('funcion')
%   saveas(gcf,'nombre.jpg')
%   end
%
% Funcion _gratd_ modificacada a _gratd2_
%
%   function gratd2(x,escalamiento,n)
%   new=escalamiento*n;
%   c=0:1:new(end);
%   h=linspace(0,0,new(end)+1);
%   ev=x(new);
%   ev(1)=h(1);
%   for i=2:length(new);
%   if h((escalamiento-1)*i+i-(escalamiento-1))~=ev(i)
%   h((escalamiento-1)*i+i-(escalamiento-1))=ev(i);  
%   else 
%   end
%   end
%   b=abs(n(end))+.5;
%   d=abs(max(x(n)))+.5;
%   ax = gca;
%   ax.XAxisLocation = 'origin';
%   ax.YAxisLocation = 'origin';
%   axis([0 b, 0 d]) 
%   stem(c,h,'LineWidth',2,'Color',[1 0 1])
%   grid on
%   title('Problema 3.2.3 e)')
%   xlabel('$t$','interpreter','latex')
%   legend('x[n/3]')
%   saveas(gcf,'P3_6_e.jpg')
%
%% Referencias 
% Alan V. Oppenheim & Ronald W. Schafer. (2011). Tratamiento de señales en tiempo discreto. Madrid: Prentice Hall.
%
%
%