clear; clc;
l1=220;
l2=380;
l3=420;
l4=155;
%'offset',-pi/2
L1=Link('d',l1,'a',0,'alpha',pi/2);
L2=Link('d',0,'a',l2,'alpha',0,'offset',pi/2);
L3=Link('d',0,'a',0,'alpha',-pi/2,'offset',-pi/2); 
L4=Link('d',l3,'a',0,'alpha',pi/2);
L5=Link('d',0,'a',0,'alpha',-pi/2);
L6=Link('d',l4,'a',0,'alpha',0);  
uRobot=SerialLink([L1,L2,L3,L4,L5,L6],'name','robot')
%pos=[0,0,1175,0,0,0];
pos=[250,250,300];   
plot_sphere(pos,50,'b');
r=[0,0,0];
r1=r(1);
r2=r(2);
r3=r(3);
rx=rotx(r1);
ry=roty(r2);
rz=rotz(r3);
rxyz=rx*ry*-rz
q=CIantropomorfico6GDL(pos,rxyz);
q2=CIantropomorfico6GDL2(q,rxyz)
uRobot.plot([q(1),q(2),q(3),q2(1),q2(2),q2(3)])
input("presione una tecla para iniciar")
%-----------------------------%
t=0:0.1:2*pi;
x=350+sin(t)*250;
y=350+cos(t)*250;
 for i=1:63
     pos=[x(i),y(i),300];   
     plot_sphere(pos,50,'b');
     r=[0,pi,0];
     r1=r(1);
     r2=r(2);
     r3=r(3);
     rx=rotx(r1);
     ry=roty(r2);
     rz=rotz(r3);
     rxyz=rx*ry*rz
     q=CIantropomorfico6GDL(pos,rxyz);
     q2=CIantropomorfico6GDL2(q,rxyz)
     uRobot.plot([q(1),q(2),q(3),q2(1),q2(2),q2(3)])
 end
%------------------------------------%
% home = [0,0,1175,0,0,0];
% ws = ([-1300 1300 -1300 1300 -1300 1300]);
% uRobot.teach(home,'workspace',ws,'noname')
% while true
%     pos = input("introduzca un vector de posicion deseada [x,Y,z]");
%     r=input("introduzca una rotacion[r,p,y]");
%     r1=r(1);
%     r2=r(2);
%     r3=r(3);
%     rx=rotx(r1);
%     ry=roty(r2);
%     rz=rotz(r3);
%     rxyz=rx*ry*rz
%     plot_sphere(pos,50,'y');
%     q=CIantropomorfico6GDL(pos,rxyz)
%     q2=CIantropomorfico6GDL2(q,rxyz)
%     input('presione una tecla para mover el robot');
%     uRobot.teach([q(1),q(2),q(3),q2(1),q2(2),q2(3)])
% end