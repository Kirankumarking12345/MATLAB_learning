clear;
%%
[g,f3]=audioread('guitar.wav');
%sound(g,f3);
%%clear sound
gg=size(g,1);
%figure(1);
%plot(g);
%%
[b,f1]=audioread('bass.wav');
%sound(b,f1);
%%clear sound
bb=size(b,1);
b=b(1:gg);
%figure(2);
%plot(b);
%%
[d,f2]=audioread('drums.wav');
%sound(d,f2);
%%clear sound
dd=size(d,1);
d=d(1:gg);
%figure(3);
%plot(d);
%%
compound=b+d+g;
compound2=g-b-d;
%sound(compound,44100);
%figure(4);
%plot(compound);
ramp=0:(1/size(d,1)):1;
ramp=ramp(1:size(d,1));
ramp=(ramp)';
d_ramp= d.*ramp;
%plot(d_ramp)
%%
  subplot(3,2,1);plot(g);title('Guitar signal');
  subplot(3,2,2);plot(d);title('bass signal');
  subplot(3,2,3);plot(b);title('drums signal');
  subplot(3,2,4);plot(compound);title('add signal');
  subplot(3,2,5);plot(compound2);title('sub signal');
  subplot(3,2,6);plot(d_ramp);title('Ramp sig signal');
%%
dnew=d(1:100000);
gnew=g(1:100000);
bnew=b(1:100000);
reapt=[dnew;gnew;bnew];
%sound(reapt,f1);
%%
dnew=d(1:100000);
gnew=g(1:100000);
reapt=[dnew,gnew];
sound(b,f1);
%%














