function q= CIantropomorfico6GDL(pos,r)
L1=220;
L2=380;
L3=420;
d=155;
% pm=rpy2r(Rrpy,'zyz');
% px=pos(1)-d*pm(1);
% py=pos(2)-d*pm(2);
% pz=pos(3)-d*pm(3);
% px=pm(1);
% py=pm(2);
% pz=pm(3);

%-------------%
r13=r(1,3);
r23=r(2,3);
r33=r(3,3);

pmx = pos(1)-d*r13;
pmy = pos(2)-d*-r23;
pmz = pos(3)-d*r33;

px=pmx;
py=pmy;
pz=pmz;

D=(px^2+py^2+(pz-L1)^2-L2^2-L3^2)/(2*L2*L3);
theta1=atan2(py,px);
theta3=atan2(-sqrt(1-D^2),D);
theta2=atan2(pz-L1,sqrt(px^2+py^2))-atan2(L3*sin(theta3),L2+L3*cos(theta3));
q=[theta1;theta2-pi/2;theta3;];
end

