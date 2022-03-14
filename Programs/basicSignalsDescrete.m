% Unit impulse function
x=-10:10;
y=[zeros(1,10),1,zeros(1,10)];
subplot(3,1,1);
stem(x,y);
axis([-10 10 0 2]);

%Unit step function
l=-10:10;
m=[zeros(1,11),ones(1,10)];
subplot(3,1,2);
stem(l,m);
axis([-10 10 0 2]);

%unit ramp function
i=-10:10;
j=[zeros(1,11),1:10];
subplot(3,1,3);
stem(i,j);