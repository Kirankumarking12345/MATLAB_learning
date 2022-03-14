fs=100;
t=-10:1/fs:10;
%
x1=rectpuls(t,3);
subplot(3,1,1);
plot(t,x1);
axis([-10 10 0 1.2]);
%
x2=rectpuls(t,5);
subplot(3,1,2);
plot(t,x2);
axis([-10 10 0 1.2]);
%
ty=-20:1/fs:20;
y=conv(x1,x2);
subplot(3,1,3);
plot(ty,y);
axis([-10 10 0 400]);
