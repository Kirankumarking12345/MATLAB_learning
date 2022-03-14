k=1:0.1:30;
T=0.1;
t=1;
x=((2/pi)./k).*sin(pi*k*T/t);
stem(k,x,'g');
