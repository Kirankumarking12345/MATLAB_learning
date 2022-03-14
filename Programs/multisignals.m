k=-30:0.1:30;
t1=0.1;
t=4*t1;
x=(2./(k*2*pi*t)).*sin(2*pi*k*t1/t);
subplot(3,2,1);
stem(k,x,'g');
subplot(3,2,2);
plot(k,x,'g');

t=8*t1;
x=(2./(k*2*pi*t)).*sin(2*pi*k*t1/t);
subplot(3,2,3);
stem(k,x,'r');
subplot(3,2,4);
plot(k,x,'r');

t=16*t1;
x=(2./(k*2*pi*t)).*sin(2*pi*k*t1/t);
subplot(3,2,5);
stem(k,x,'b');
subplot(3,2,6);
plot(k,x,'b');