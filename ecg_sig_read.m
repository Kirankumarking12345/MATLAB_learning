clc;
clear;
close all;
rate=1000; 
time=0:1/rate:6;
pnts=length(time);
Input_Directory=input('Enter the Input Path : '); 
A = dir(Input_Directory);   
for i=1:size(A,1)-3         
   inpSig = xlsread([Input_Directory '\' A(i+3,1).name '\rec_1.xlsx']);
   inpSig=inpSig(:,1);  
   disp(strcat(num2str(A(i+3,1).name)))
   perfect_beat=(inpSig(1:6001))';
   plot(time,perfect_beat,'k','linew',2) 
   xlabel('Time(s)'),ylabel('Amplitude')
   title('Time domine')
   sound(perfect_beat,1050);
 end