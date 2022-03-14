clear
close all
clc
%% Convolution using conv
x = input('Enter the signal x:');
h = input('Enter the signal h:');
disp(x);
disp(h);

figure
subplot(311)
plot(x,'ks-');
title('Signal x')
subplot(312)
plot(h,'ks-');
title('Signal h')

y = conv(x,h);
disp(y);
subplot(313)
plot(y,'rs-');
title('Convoluted signal y');
%% Convolution using fft
x = input('Enter the signal x:');
h = input('Enter the signal h:');
disp(x);
disp(h);
figure
subplot(311)
plot(x,'ks-');
title('Signal x')
subplot(312)
plot(h,'ks-');
title('Signal h')

l1 = length(x);
l2 = length(h);

m = l1+l2-1;
xn = fft(x,m);
hn = fft(h,m);
converse = ifft(xn.*hn);

subplot(313)
plot(converse,'rs-')
disp(converse)
title('Convoluted signal y');
%% Linear Convolution
x = input('Enter the sequence of x:');
h = input('Enter the sequence of h:');
l1 = length(x);
l2 = length(h);
figure
subplot(311)
plot(x,'ks-');
title('Signal x')
subplot(312)
plot(h,'ks-');
title('Signal h')
m = l1+l2-1;
z = zeros(1,m);
xn = [x,zeros(1,m-l1)];
hn = [h,zeros(1,m-l2)];
for i=1:m
    for j=1:i
        z(i) = z(i)+xn(j)*hn(i-j+1);
    end
end
disp(z);
subplot(313)
plot(z,'rs-');
title('Convoluted signal y');
%% Circular convolution
x = [1 1 2 3];
h = [0 1 2 3];
l1 = length(x);
l2 = length(h);
N = max(l1,l2);
z = cconv(x,h,N);
%% Circular convolution using graphical method
x = [1 1 2 3];
h = [0 1 2 3];
l1 = length(x);
l2 = length(h);
N = max(l1,l2);
xn = [x zeros(1,N-l1)];
hn = [h zeros(1,N-l2)];
y = zeros(1,N);
for n=1:N
    for m=1:N
        j=mod(n-m,N);
        j=j+1;
        y(n)=y(n)+x(m)*h(j);
    end
end
