syms s;
clear all;
close all;
num=[0 1 2];
den=[1 4 3];
[r p k]=residue(num,den);
zeros=roots(num);
disp('zeroes');
poles=roots(den);
disp('poles');
pzmap(num,den);
grid 0n;