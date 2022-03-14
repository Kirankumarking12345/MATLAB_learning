f0=1;
t=1:0.002:5;
y=0;
for k=1:200
    x=sin(2*k*pi*f0*t);
    x=x/k;
    y=y+x;
end
plot(t,y);
