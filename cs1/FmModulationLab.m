clear all;
close all;
clc;
B =5;
fs = 10000;
t=(0:.1*fs)/fs;
fc = 200;
fm = 20;
Ac = 1;
m_t = 5*sin(2*pi*fm*t);
c_t = sin(2*pi*fc*t);
s_t = Ac*cos((2*pi*fc*t)+ B*sin(2*pi*fm*t));
subplot(3,1,1);
%ploting of message signal
plot(t,m_t);
title('Message Signal');
subplot(3,1,2);
%ploting of Carrier signal
plot(t,c_t);
title('Carrier Signal');
subplot(3,1,3);
%ploting of Modulated signal
plot(t,s_t);
title('Modulated Signal');
%Demodulation of FM
x_t = demod(s_t,fc,fs,'fm');
figure(2)
%ploting of demodulation of FM
plot(t,x_t)
