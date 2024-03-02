function [S] = symmetricMatrix(q)
   S = [0 -q(4) q(3)
        q(4) 0 -q(2)
        -q(3) q(2) 0]; 
end