n=-10:10;
x=[zeros(1,10),ones(1,11)];
    subplot(2,2,1);
    stem(n,x);title('X[n]');
    axis([-10 10 -1.5 1.5])


x1=fliplr(x);
    subplot(2,2,2);
    stem(n,x1);title('flip(x) x1[n]');
xe= 0.5*(x+x1);
subplot(2,2,3);
stem(n,xe);title('xe[n]');
axis([-10 10 -1.5 1.5])

subplot(2,2,4);
xo= 0.5*(x-x1);

stem(n,xo);title('xo[n]');
axis([-10 10 -1.5 1.5])
