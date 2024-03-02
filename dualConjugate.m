function [q] = dualConjugate(q)
    q = [conjugate(q(1 : 4));
         conjugate(q(5 : 8))];
end
