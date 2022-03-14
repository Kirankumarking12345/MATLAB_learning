t=[-2:0.02:2];
N=length(t);
x=zeros(1,N);
for n = 1:N
    s_value =0;
    for k = 1:20
        s_value = s_value+(sin(2*pi*k*t(n)))/k;
    end
    x(n) = s_value;
end
plot(t,x);