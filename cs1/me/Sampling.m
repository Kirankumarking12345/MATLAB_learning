clc;
clear all;
close all;
t=-10:0.01:10;
T=4;fm=1/T;
x=cos(2*pi*fm*t);
subplot(2,2,1);
plot(t,x);
xlabel('---> time scale');
ylabel('--->signal x(t)');
title('continuous time signal');
grid
n1=-10:1:10;
fs1=1.6*fm;
x1=cos(2*pi*fm/fs1*n1);
subplot(2,2,2);
stem(n1,x1);
xlabel('-->time');
ylabel('--->x1(n)');
title('discrete time signal with fs<2fm');
hold on
subplot(2,2,2);
plot(n1,x1);
grid
n2=-10:1:10;

fs2=2*fm;
x2=cos(2*pi*fm/fs2*n2);
subplot(2,2,3);
stem(n2,x2);
xlabel('--->time');
ylabel('--->x2(n)');
title('discrete time signal with fs=2fm');
hold on
subplot(2,2,3);
plot(n2,x2);
grid
n3=-10:1:10;
fs3=15*fm;
x3=cos(2*pi*fm/fs3*n3);
subplot(2,2,4);
stem(n3,x3)
xlabel('--->time ');
ylabel('-->x3(n)');
title('--->discrete time signal with fs>2fm');
hold on
subplot(2,2,4)
plot(n3,x3);
grid