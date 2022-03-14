t = [0:0.01:6];
x = 0;
y=0;
N=input("Enter the number of harmonics:");
for k=0:N
    m=2*k+1;
    x = x+[(-1)^k]*[4/(pi*m)]*cos(pi*m*t);
    
end
plot(t,x)
