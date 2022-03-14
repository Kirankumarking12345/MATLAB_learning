clc;
close all;
fs=1000;fm=0.5;
t=0:1/fs:10;
d=0:1/5:10;
x=5+sin(2*pi*fm*t); % message signal is shifted upwards from origin by the
% addition of DC component
subplot(3,1,1)
plot(t,x);
xlabel('time');
ylabel('amplitude');
title('message signal');
y=pulstran(t,d,'rectpuls',0.1); %generation of pulse train carrier input
subplot(3,1,2);
plot(y);    
xlabel('time');
ylabel('amplitude');
title('pulse train');
z=x.*y; %PAM output
subplot(3,1,3);
plot(z);
xlabel('time');
ylabel('amplitude');
title('PAM signal');