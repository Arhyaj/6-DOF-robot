function [Q] = dqTx(a)
    Q = transpose([1 0 0 0 0 a/2 0 0]);
end