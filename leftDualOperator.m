function [L] = leftDualOperator(q)
    L = [leftOperator(q(1 : 4)) zeros(4, 4)
         leftOperator(q(5 : 8)) leftOperator(q(1 : 4))];
end
