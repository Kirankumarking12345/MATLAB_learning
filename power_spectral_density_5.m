clc
clear
close all
% Generating a signal
fs=1000;
t=0:1/fs:0.6;
x=sin(2*pi*50*t)+sin(2*pi*55*t);
figure,
plot(fs*t(1:50),x(1:50))
title('Given signal')
xlabel('time(milliseconds)');
ylabel('Amplitude(Volts)');
%% Pwelch method(default window is Hamming window)
for len=50:50:600
figure;pwelch(x,len,[],len,fs);
end