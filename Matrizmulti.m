clear,close, clc;

syms q1 q2 q3 q4 q5 q6 ...
     d1 d2 d3 d4 d5 d6...
     a1 a2 a3 a4 a5 a6 ...
     alp1 alp2 alp3 alp4 alp5 alp6...
     L1 L2 L3 L4 L5 L6 pi;
 
 T1=q1;     T2=q2;    T3=q3;    T4=q4;     T5=q5;     T6=q6;
 d1=L1;     d2=0;      d3=0;    d4=L3;      d5=0;    d6=L4;
 a1=0;      a2=L2;     a3=0;    a4=0;      a5=0;      a6=0;
 alp1=90;   alp2=0;  alp3=-90;  alp4=90;   alp5=-90;   alp6=0;

H1=[cos(T1)     -cosd(alp1)*sin(T1)    sind(alp1)*sin(T1) a1*cos(T1);...
    sin(T1)      cosd(alp1)*cos(T1)   -sind(alp1)*cos(T1) a1*sin(T1);...
      0              sind(alp1)          cosd(alp1)               d1;...
      0                0                     0                  1];
  
  

H2=[cos(T2)     -cosd(alp2)*sin(T2)    sind(alp2)*sin(T2) a2*cos(T2);...
    sin(T2)      cosd(alp2)*cos(T2)   -sind(alp2)*cos(T2) a2*sin(T2);...
      0              sind(alp2)          cosd(alp2)               d2;...
      0                0                     0                  1];
 
  
H3=[cos(T3)     -cosd(alp3)*sin(T3)    sind(alp3)*sin(T3) a3*cos(T3);...
    sin(T3)      cosd(alp3)*cos(T3)   -sind(alp3)*cos(T3) a3*sin(T3);...
      0              sind(alp3)          cosd(alp3)               d3;...
      0                0                     0                  1];
  
  
H4=[cos(T4)     -cosd(alp4)*sin(T4)    sind(alp4)*sin(T4) a4*cos(T4);...
    sin(T4)      cosd(alp4)*cos(T4)   -sind(alp4)*cos(T4) a4*sin(T4);...
      0              sind(alp4)          cosd(alp4)               d4;...
      0                0                     0                  1];

H5=[cos(T5)     -cosd(alp5)*sin(T5)    sind(alp5)*sin(T5) a5*cos(T5);...
    sin(T5)      cosd(alp5)*cos(T5)   -sind(alp5)*cos(T5) a5*sin(T5);...
      0              sind(alp5)          cosd(alp5)               d5;...
      0                0                     0                  1];
  
H6=[cos(T6)     -cosd(alp6)*sin(T6)    sind(alp6)*sin(T6) a6*cos(T6);...
    sin(T6)      cosd(alp6)*cos(T6)   -sind(alp6)*cos(T6) a6*sin(T6);...
      0              sind(alp6)          cosd(alp6)               d6;...
      0                0                     0                  1];
  
%simplify(H1);
%simplify(H2); 
%simplify(H3);
%   
% H30=H1*H2*H3
% H30=simplify(H30)
H63=H4*H5*H6;
H63=simplify(H63)
% H60=H30*H63;
% H60=simplify(H60)
% H60t=H1*H2*H3*H4*H5*H6;
% H60t=simplify(H60t);