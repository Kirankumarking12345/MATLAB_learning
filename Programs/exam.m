% 1.even, odd components
n=[-10:10];
x=[zeros(1,10),ones(1,10),0];
subplot(3,1,1);
stem(n,x);title('x[n]');
axis([-10 10 -1.5 1.5])
x1=fliplr(x);
xe=0.5*(x+x1);
subplot(3,1,2);
stem(n,xe);title('xe[n]');
axis([-10 10 -1.5 1.5])
xo=0.5*(x-x1);
subplot(3,1,3);
stem(n,xo);title('xo[n]');
axis([-10 10 -1.5 1.5])
% 2.Sampling
f0=50;T0=1/f0;
fs=400;Ts=1/fs;
t=[0:Ts:T0];
x=sin(2*pi*f0*t);
stem(t,x,'r');
%hold on;grid on;
%plot(t,x)

%3.Aliasing, and for loop
fs=800;
for k=1:4
fs=fs/2;Ts=1/fs;
t=[0:Ts:0.06];
x=3*cos(100*pi*t-2*pi/3);
subplot(4,1,k);
stem(t,x,'r');
end
% or
fs=[400 200 100 50];

for k=1:4
t=[0:1/fs(k):0.06];
x=3*cos(100*pi*t-2*pi/3);
subplot(4,1,k);
stem(t,x,'r');
end

% 4. T.F.S, & Gibbs-Phenomenon
t=[0:0.01:6];
x=zeros(1,length(t));
N=input('Ennter the number of harmonics: ')
for k=0:N
m=2*k+1;
x=x+[(-1)^k]*[4/(pi*m)]*cos(pi*m*t);
end
plot(t,x)
%generating two sinudoids on single plot
theta=[0:350];
x1=sind(theta);
plot(theta,x1,'b-','linewidth',2);

axis([0,400,-1,1]);
title('Continuous-Time Sinusoids');
xlabel('angle(degrees)','fontsize',12);ylabel('amplitude','fontsize',12);
grid on; hold on;
x2=cosd(theta);
plot(theta,x2,'r:','linewidth',3);
legend('sin(\theta)','cos(\theta)')

%Different ways of creating a row_vector
x1=[1 2 3 4];

x2=1:4; %using 'colon' operator we can create
%row vector of any length
x3=[1:4];
x4=(1:4);
x5=colon(1,4);
%all the above vectors are identical
%------------------------------------------
%accessing the entries of row_vector
e1=x1(1)
%a1=x3(0) %try this!
e2=x1(1:3) %try this with square brackets!
e3=x1(4:-1:1);
%------------------------------------------
%creating a vector as increasing or decreasing sequence
i=[-4:2:10] ; % or i==colon(-4,2,10)
d=[10:-2:-4] ; % or d=colon(10,-2,4)
%d=-4:-2:10 %try this!