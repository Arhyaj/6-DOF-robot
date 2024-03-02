clear all;clc;
syms a b c

rx=rotx(a)
ry=roty(b)
rz=rotz(c)


rza=rotz(a);
ryb=roty(b);
rzc=rotz(c);
rt=rza*ryb*rzc