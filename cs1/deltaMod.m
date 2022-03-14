clc;
clear all;
close all;
t=0:2*pi/100:2*pi;%Total samples=101
x=5*sin(2*pi*t/5); %message signal with peak voltage 5v & frequency 5Hz
plot(x,'--red');
hold on %To show multiple graphs in same window
y=[0]; %output of DM signal initially 0, which have bit pattern Ex:1 1 1 0 0 1...
xr=[0]; % stair case approximation having initial value=0
del=0.4; %del=stepsize
for i=1:length(x)-1
    if x(i) >=xr(i) %if present sample of a message signal > previous sample of staircase signal
        d=1; %set d to 1
      xr(i+1)=xr(i)+del; %increment staircase signal by step size
    else
        d=0;
    xr(i+1)=xr(i)-del; %decrement staircase signal by step size
    end
    y=[y d] ;% display the bit pattern
end
stairs(xr) % shows stair case approximated signal
hold off
y;
del1=0.1; %chose stepsize as 0.1 instead of 0.4
del2=2; % chose stepsize as 2 instead of 0.4