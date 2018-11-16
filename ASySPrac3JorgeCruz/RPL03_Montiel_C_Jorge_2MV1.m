%% Pr�ctica 3: Se�ales en tiempo discreto
%  Cruz Montejo Jorge Luis
%  Montiel Cruz Jorge de Jes�s
%  2MV1
%  An�lisis de Se�ales y Sistemas
%% Objetivos 
% * Manipulaci�n b�sica de MATLAB
% * Gr�ficas de se�ales reales y complejas discretas
% * Transfomraci�n de se�ales discretas (escalamientos y traslaciones)
% * C�lculo de energ�a y potencia de se�ales discretas
%% Antecedentes 
% Escalamiento horizontal de se�ales discretas
%
% El escalamiento de se�ales en tiempo discreto, tanto horizontal como vertical, tiene un s�mil con su contraparte del tiempo continuo, sin embargo, existen ciertas consideraciones a tomar en cuenta a la hora de aplicarlo a las se�ales del tiempo discreto, esto es, como a continuaci�n se detalla.
%
% Un esclamiento vertical de se�ales, tanto en tiempo discreto como en tiempo continuo, funciona de la misma manera, las se�ales correspondientes se mueven hacia arriba o abajo, seg�n corresponda, sin incoveniente alguno. Pero cuando se realiza un escalamiento horizontal,  ya sea de compresi�n o expansi�n, la se�al en tiempo discreto sufre algunos cambios, esto es, pues, debido a la forma en la que est� definida (en los n�meros enteros), de esta manera, cuando escalamos horizontalmente con efecto de compresi�n existe una perdida de datos. Esto es f�cil de ver, puesto que al efectuar la divisi�n esta resultar� en ciertos puntos un n�mero decimal, para los cuales nuestra funci�n de tiempo discreto no est� definida. Decimos que existe p�rdida de datos.
% Mientras que para los escalamientos horizontales con efecto de expansi�n habr� que realizar una consideraci�n �til, y es que se indefine en ciertos puntos. 
% En los siguientes ejemplos se detalla lo anteriormente expuesto.
%
% *Ejemplo 1: Compresi�n*
%
% Sea la se�al $x[n]$ una se�al del tiempo discreto, con la siguiente
% expresi�n $x[n]=(n-2) u[n]$, su gr�fica correspondiente
%
% <<EjP3_1.jpg>>
% 
% Si hacemos ahora $x[5n]=(5n-2) u[n]$ tendremos como resultado una p�rdida
% de datos.
%
% <<EjP3_1_1.jpg>>
%
% de la primera figura vemos que para $n=2$ el valor de la se�al es $0$,
% mientras que en la segunda figura, puesto que se comprimi� por un factor
% de $5$ y al ser 2 un n�mero cuya divisi�n por $5$ no es un entero,
% entonces, este dato se pierde.
%
% *Ejemplo 2: Expansi�n*
%
% Sea la se�al $x[n]$ una se�al del tiempo discreto, con la siguiente
% expresi�n $x[n]=(n-2)^2 u[n]$, su gr�fica correspondiente
%
% <<Ej2P3_1.jpg>>
% 
% Si hacemos ahora $x[5n]=5n-2 u[n]$ tendremos como resultado puntos sin
% definir.
%
% <<Ej2P3_1_2.jpg>>
%
% Vemos de la primera figura que para $n=1$ el valor de la se�al es $1$,
% as� pues, al expandir por un factor de 4, este valor corresponder� a
% $n=4$ de la segunda figura, mientras que de de $(4,12)$ no existen los
% valores, puesto que, de existir, significa que en la funci�n original
% exist�an puntos cuya multiplicaci�n por 4 nos arroja un n�mero en este
% intervalo, lo cual quiere decir, en otras palabras, estaba definida para
% n�meros no enteros, lo cual no va acorde a nuestra definici�n de se�al en
% tiempo discreto.
%
% Convenientemente, se pueden asignar valores de cero o bien realizar
% interpolaci�n para asignar un valor a los valores de $n$ para los cuales
% no est� definida la se�al escalada.
%
%% Desarrollo 
%
%
%
%
%
%
%% 1.
% Crea una funci�n que se llame _fun1_ y reciba tres par�metros
% $r$, $\omega$ y $n$ la funci�n debe regresar la evaluaci�n
% $f[n]=r^n\cos{[\omega n]}+ r^nj\sin{[\omega n]}$, esta funci�n debe
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
% Construya una funci�n que grafique funciones de $f:N\rightarrow R$ en el
% formato de su elecci�n y pruebe su c�digo mostrando la gr�fica de
% $x[n]=na^nu[n]$ vs $n$ para $n \in -2,...,10$ para $a=0.9$
%
% <<P3_2_2_2.jpg>>
%% 3. 
% Construya una funci�n que grafique funciones $f:N \rightarrow R^2$ en el
% formato de su elecci�n y pruebe su c�digo mostrando la gr�fica de la
% funci�n exponencial del primer problema, muestre la gr�fica de $f[n]$
% para $r=1.1$, $\omega=0.5$ y $n \in -2,...,20$ , adem�s, muestre la
% gr�fica de $|f[n]|$ vs $n$ y $\angle f[n]$ vs $n$.
%
% <<P3_3.jpg>>
%
% <<P3_3_2.jpg>>
%
% <<P3_3_3.jpg>>
%
%% 4. 
% Programe una funci�n que calcule la energ�a de una se�al en tiempo discreto la funci�n se debe llamar energiadis. La funci�n recibe dos par�metros de entrada: el vector de tiempo y las alturas asignadas. La funci�n regresa la energ�a de la se�al y despliega la gr�fica de la se�al.
%
%   function y=energiadis(t,x)
%   %x son las alturas de la se�al discreta
%   %t es el vector de tiempo 
%   x2=x.^2;
%   E=sum(x2)
%   y=E;
%   fprintf('La energia de la se�al es: %4.4f',y);
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
% Resuelva el problema 3.1.1 de Lathi, aplicando su funci�n anterior
t=-3:3; x=-9:3:9;
energia(t,x)
%% 6. 
% Resuelva el problema 3.2.3 de Lathi
%
% La se�al original se muestra a continuaci�n 
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
% Para $x[\frac{n}{3}]$ se realiz� una modificaci�n la funci�n _gratd_, dicha
% modificaci�n, as� como la funci�n original, se muestran en el ap�ndice.
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
%% Ap�ndices
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
% Alan V. Oppenheim & Ronald W. Schafer. (2011). Tratamiento de se�ales en tiempo discreto. Madrid: Prentice Hall.
%
%
%