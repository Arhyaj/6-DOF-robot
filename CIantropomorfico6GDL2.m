function q2 = CIantropomorfico6GDL2(q,r)

% r03=[cos(q(2) + q(3))*cos(q(1)), -sin(q(1)), -sin(q(2) + q(3))*cos(q(1));
%     cos(q(2) + q(3))*sin(q(1)),  cos(q(1)), -sin(q(2) + q(3))*sin(q(1));
%          sin(q(2) + q(3)),        0,          cos(q(2) + q(3))];
%                              
% r36=r03'*rpy2r(Rrpy,'zyz');
% k=tr2eul(r36)
% theta4=k(1);
% theta5=k(2);
% theta6=k(3);
% ---------------------%
r11=r(1,1);
r12=r(1,2);
r13=r(1,3);
r21=r(2,1);
r22=r(2,2);
r23=r(2,3);
r31=r(3,1);
r32=r(3,2);
r33=r(3,3);



%----- esto es con rotacion agregando los negativos a los r-------%
% R13=r33*sin(q(2) + q(3)) + r13*cos(q(2) + q(3))*cos(q(1)) - r23*cos(q(2) + q(3))*sin(q(1));
% R23=-r23*cos(q(1)) - r13*sin(q(1));
% R33=r33*cos(q(2) + q(3)) - r13*sin(q(2) + q(3))*cos(q(1)) + r23*sin(q(2) + q(3))*sin(q(1));
% 
% R32=-r23*cos(q(2) + q(3)) - r12*sin(q(2) + q(3))*cos(q(1)) - r22*sin(q(2) + q(3))*sin(q(1));
% R31=r13*cos(q(2) + q(3)) + r11*sin(q(2) + q(3))*cos(q(1)) - r21*sin(q(2) + q(3))*sin(q(1));

%--esto es sin los negativos

R13=r33*sin(q(2) + q(3)) + r13*cos(q(2) + q(3))*cos(q(1)) + r23*cos(q(2) + q(3))*sin(q(1));
R23=r23*cos(q(1)) - r13*sin(q(1));
R33=r33*cos(q(2) + q(3)) - r13*sin(q(2) + q(3))*cos(q(1)) - r23*sin(q(2) + q(3))*sin(q(1));

R32=r23*cos(q(2) + q(3)) - r12*sin(q(2) + q(3))*cos(q(1)) - r22*sin(q(2) + q(3))*sin(q(1));
R31=r13*cos(q(2) + q(3)) - r11*sin(q(2) + q(3))*cos(q(1)) - r21*sin(q(2) + q(3))*sin(q(1));



theta4=atan2(-R23,-R13);
theta5=atan2(sqrt(1-R33^2),R33);
theta6=atan2(-R32,-R31);
q2=[theta4;theta5;theta6;];
end