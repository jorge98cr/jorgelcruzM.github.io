function y=fun1(r,omega,n)
n2=n/floor(n);
n3=uint8(n2);

if r>0 && imag(omega)==0 && n3==1
    f=r.^n.*cos(omega*n)+r.^n*1i.*sin(omega*n)
else
    disp('La funcion solo es valida si r es un real positivo, omega es un real y n pertenece a los enteros')
    f=('funcion no definida');
end 
y=f;

end