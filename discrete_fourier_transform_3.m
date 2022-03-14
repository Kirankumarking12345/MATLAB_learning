clc
clear
close all
%% Creating signal
srate =1000;
time=0:1/srate:2;
pnts=length(time);
signal=2.5*sin(2*pi*4*time)+1.5*sin(2*pi*6.5*time);
%Fourier Transeformtic;
fourTime=(0:pnts-1)/pnts;
fCoefs=zeros(size(signal));
for fi=1:pnts
%create complex sine wave
csw=exp(-1i*2*pi*(fi-1)*fourTime);
%compute dot product between sine wave and signal
fCoefs(fi)=sum(signal.*csw)/pnts;
end
t(1)=toc
%amplitudes
ampls=2*abs(fCoefs);
%compute frequencie vector
hz=linspace(0,srate/2,floor(pnts/2)+1);
figure
subplot(311)
plot(time,signal,'k')
xlabel('Time(s)'),ylabel('Amplitude')
title('Time domain')
subplot(312)
stem(hz,ampls(1:length(hz)),'ks-')
set(gca,'xlim',[0 8],'ylim',[-.01 3])
xlabel('Frequency(Hz)'),ylabel('Amplitude(a.u.)')
title('Frequency domain')
%% Fourier Tranceform using fft command
tic;
fcoefsF=fft(signal)/pnts;
t(2)=toc;
amplsF=2*abs(fcoefsF);
subplot(313)
stem(hz,amplsF(1:length(hz)),'or')
set(gca,'xlim',[0 8],'ylim',[-.01 3])
xlabel('Frequency Transform using FFT')
title('Fourier Trance form using FFT')
%% the inverse fourier transform
% initialize time-domain reconstuction
reconSignal=zeros(size(signal));
tic;
for fi=1:pnts
%create coefficient-modulated complex sine wave
csw1=fCoefs(fi)*exp(1i*2*pi*(fi-1)*fourTime);
%sum them together
reconSignal=reconSignal+csw1;
end
%divide by NreconSignal=reconSignal/pnts;
t(3)=toc;
%figure(2),clf
%subplot(2,1,1)
%plot(time,signal)
%legend({'original'})
%subplot(2,1,2)
%plot(time,real(reconSignal),'r-')
%legend
%hold on
%% Inverse legend({'Original';'Reconstructed'})fourier
tic;
reconTS=real(ifft(fCoefs))*pnts;
t(4)=toc;
subplot(3,1,1),hold on
plot(time(1:3:end),reconTS(1:3:end),'ro');
legend({'Original';'Reconstructed'})
zoom on
%% time computations plot
figure,bar(t);
title('Computing time values')
%plot(time,signal)