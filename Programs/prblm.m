t=[0:0.001:6];
x=0;
N=input("Enter the number of harmonics :");
for k=0:N
    
    x=x+(4/pi)*((-1)^k)/(2*k+1)*cos(pi*(2*k+1)*t);
    
end
plot(t,x)
  