% AIM: MODULATION AND DEMODULATION OF AM SIGNAL USING BUILT-IN FUNCTIONS
clc;
clear all;
close all;
t=0:0.001:2;
Am=1,fm=5;
Ac=1,fc=50;
% To plot modulating signal
m_t=Am*cos(2*pi*fm*t);
subplot(6,2,1:2)
plot(t,m_t);
title('modulating signal m_t');
% To plot carrier signal
c_t=Ac*cos(2*pi*fc*t);
subplot(6,2,3:4)
plot(t, c_t);
title('carrier signal c_t');
fs=2*(fc+(2*fm))*10;
AM_SIGNAL=ammod(m_t,fc,fs);
subplot(6,2,5:6)
plot(t, AM_SIGNAL);
title('AM modulated signal');
%To plot modulated signal
RECOVERED_SIGNAL=amdemod(AM_SIGNAL, fc,fs);
subplot(6,2,7:8);
plot(t, RECOVERED_SIGNAL);
title('AM demodulated signal');