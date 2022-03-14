syms a b
x=tf([0,2,3;],[1,4,8]);
r=-2+2*i;
[a,b] =residue(x,r)