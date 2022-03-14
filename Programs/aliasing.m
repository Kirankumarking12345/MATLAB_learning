%Aliasing 
fs =[400 200 100 50 800];
for k =1:5
    t=[0:1/fs(k):0.06];
    x = 3*cos(100*pi*t);
    subplot(5,1,k);
    stem(t,x,'b');
end