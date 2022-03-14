%MATLAB PROGRAM TO SIMULATE PPM
clc;
close all;
clear all;
fc=1000;
fs=25000;
fm=200;
t=0:1/fs:((2/fm)-(1/fs));
x1=0.4*cos(2*pi*fm*t)+0.5;
y1=modulate(x1,fc,fs,'ppm');
subplot(2,2,1);
plot(x1);
title('single tone message signal');
subplot(2,2,2)
plot(y1);
title('PPM modulated signal');
x1_recover=demod(y1,fc,fs,'ppm');
subplot(2,2,3)
plot(x1_recover);
title('time domain recovered signal');