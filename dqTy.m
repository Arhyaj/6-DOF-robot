function [Q] = dqTy(a)
    Q = transpose([1 0 0 0 0 0 a/2 0]);
end