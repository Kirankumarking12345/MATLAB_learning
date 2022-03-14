% PCM SIMULATION USING MU LAW COMPANDER
clc;
close all;
t=0:0.01:3;
m_t=sinc(2*pi*t);
c=compand(m_t,255,1,'mu/compressor');
e=uencode(c,3);
d=udecode(e,3);
o=compand(d,255,1,'mu/expander');
%PCM with companding
figure(1)
hold on
plot(m_t,'--red');
plot(o, 'black');
legend('original signal','received signal using companding')
hold off
%PCM without companding
e1=uencode(m_t,3);
d1=udecode(e,3);
figure(2)
hold on
plot(m_t,'-.red');
plot(d1,'green');
legend('original signal','received signal without signal companding');
hold off