fs=800;
for k=1:4

        fs=fs/2;ts=1/fs;
        t=[0:ts:0.06];
        x=3*cos(100*pi*t-2*pi/3);
        subplot(2,2,k);
        stem(t,x);
        
end
  



