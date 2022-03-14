[g,f1] = audioread("guitar.wav");
gg = size(g,1);
[b,f2] = audioread("bass.wav");
[d,f3] = audioread("drums.wav");
b = b(1:gg);
d = d(1:gg);
%signal addtion
compound = g+d+b;
compound2 = g-d-b;
%playing sound
%sound(g,f1);
%sound(d,f1);
%sound(b,f1);
%ploting
subplot(3,2,1)
plot(g)
title('Guitar')
subplot(3,2,2)
plot(b)
title('Bass')
subplot(3,2,3)
plot(d)
title('Drums')
%combined sound
sound(compound,f1);
subplot(3,2,4)
plot(compound)
title('Signal Addtion')
%signal appending
sig = [g;b;d];
subplot(3,2,5)
plot(sig)
title('Appended signal')
d = compound;
ramp=0:(1/size(d,1)):1;
ramp=ramp(1:size(d,1));
ramp=(ramp)';
d_ramp= d.*ramp;
subplot(3,2,6);
plot(d_ramp);