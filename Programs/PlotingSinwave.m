x=0:5:360;
y=sind(x);
g=cosd(x);
plot(x,y,x,g,'. -');legend('sin(x)','cos(x)')
title('Continues sinusoids');
xlabel("Degrees"),ylabel('Amplitude')
grid on ;hold on 

    