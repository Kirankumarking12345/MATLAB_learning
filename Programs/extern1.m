sharehold=[1,2,3;4,5,6;6,1,1;0,1,3];
filterr=[0,0,0;0,0,0;2,3,7;0,0,0];
ga=sharehold.*filterr;
ga=ga(:)';
disp("total gain of the 3rd person on day 1 :")
sum(ga)