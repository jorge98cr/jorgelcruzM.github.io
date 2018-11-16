a=[-8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 ];
b=3*a;
b2=a(1):a(end);
c=floor(b);
b3=zeros(1,length(a));
num=length(a);
global cc;
 for i=1:length(a)
    if c(i)==b(i)
     b2(i)=c(i);
    else
     b2(i)=0;
    end
 end
num2=length(find(b2<0));
num3=length(find(b2>0));
for i2=1:length(a)
    if a(i2)==0
        cc=i2;
        b3(i2)=0;
        vi=[linspace(i2,i2,abs(i2-1-num2)) find(b2<0)]; 
        vd=[find(b2>0) linspace(i2,i2, num-i2-num3)];
    else 
    end 
end 
for i3=cc+1:num
    w=i3-cc;
         b3(i3)=b2(vd(w));
        
          
end 
for i4=1:cc-1
    b3(i4)=b2(vi(i4));
end
y=@(t) 3*t.*((3*t>=0)&(3*t<=3))+(-3*t+6).*((3*t>3)&(3*t<=6));
y(a);
stem(a,y(a));