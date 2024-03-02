clear,close, clc;
l1=220;l2=380;l3=420;l4=185;

L1=Link('d',l1,'a',0,'alpha',-pi/2);
L2=Link('d',0,'a',l2,'alpha',0);
L3=Link('d',0,'a',0,'alpha',-pi/2);
L4=Link('d',l3,'a',0,'alpha',pi/2);
L5=Link('d',0,'a',0,'alpha',-pi/2);
L6=Link('d',l4,'a',0,'alpha',0);

uRobot=SerialLink([L1,L2,L3,L4,L5,L6],'name','robot')
 
uRobot.plot([0,0,0,0,0,0])