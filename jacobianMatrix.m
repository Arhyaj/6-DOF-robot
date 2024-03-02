function [J] = jacobianMatrix(DH, q)
    [n, ~] = size(q);
    F = forwardKinematicsDH(DH, n + 1);
    for j = 1 : n
        H = forwardKinematicsDH(DH, j);
        z = H(1 : 3, 3);
        r = F(1 : 3, 4) - H(1 : 3, 4);
        J(1 : 3, j) = cross(z, r);
        J(4 : 6, j) = z;
    end 
end