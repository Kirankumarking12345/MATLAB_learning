% AIM: TO GENERATE AM SIGNAL WITH ENVELOPE
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
plot(t,c_t);
title('carrier signal c_t');
%To plot modulated signal
ka=0.5,u=ka*Am;
AM_SIGNAL=Ac*(1+u*cos(2*pi*fm*t)).*cos(2*pi*fc*t);
subplot(6,2,5:6);
plot(t, AM_SIGNAL);
title('AM modulated signal for u=0.5');
% ENVELOPE=abs(hilbert(AM_SIGNAL));
ENVELOPE= Ac*(1+u*cos(2*pi*fm*t));
subplot(6,2,7:8);
plot(t, ENVELOPE, 'r');
title('envelope of AM wave form');