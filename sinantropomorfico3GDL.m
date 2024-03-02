clear all; clc;
l1=5;l2=5;l3=5;

L1=Link('d',l1,'a',0,'alpha',pi/2);
L2=Link('d',0,'a',l2,'alpha',0);
L3=Link('d',0,'a',l3,'alpha',pi/2);
uRobot=SerialLink([L1,L2,L3],'name','robot');
p=[5,5,10];
% plot_sphere(p,0.9,'b');
q=CIantropomorfico3GDL2(p)
uRobot.plot([q(1),q(2),q(3)])

% t=0:0.1:2*pi;
% x=4+sin(t)*3;
% y=4+cos(t)*3;
% 
%  for i=1:63
%      p=[x(i),y(i),0];
%      plot_sphere(p,0.5,'b');
%      q=CIantropomorfico3GDL2(p);
%      uRobot.plot([q(1),q(2),q(3)])
%  end

