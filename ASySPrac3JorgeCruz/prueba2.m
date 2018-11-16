function y=gratd2(x,escalamiento,n)
new=escalamiento*n;
c=0:1:new(end);
h=linspace(0,0,new(end)+1);
ev=y(n);
ev(1)=h(1);
for i=2:length(new);
    if h(2*i+i-2)~=ev(i)
    h(2*i+i-2)=ev(i);  
    else 
    end
end 
stem(c,h)
