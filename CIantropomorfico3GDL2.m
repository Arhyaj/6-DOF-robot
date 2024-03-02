function q=CIantropomorfico3GDL2(pos)
L1=5;L2=5;L3=5;
px =pos(1);
py=pos(2);
pz=pos(3);
D=(px^2+py^2+(pz-L1)^2-L2^2-L3^2)/(2*L2*L3);
theta1=atan2(py,px);
theta3=atan2(sqrt(1-D^2),D);
theta2=atan2(pz-L1,sqrt(px^2+py^2))-atan2(L3*sin(theta3),L2+L3*cos(theta3));
fprintf('Las variables articulares son:');
q=[theta1;theta2;theta3];
end