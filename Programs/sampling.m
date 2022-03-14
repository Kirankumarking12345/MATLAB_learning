f0=1;t0=1/f0;
fs=10;ts=1/fs;
t=[0:ts:t0];
x=sin(2*pi*f0*t);
subplot(2,1,1);
stem(t,x,'r');
hold on;grid on;
subplot(2,1,2)
plot(t,x,'b');  
