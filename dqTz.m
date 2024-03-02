function [Q] = dqTz(a)
    Q = transpose([1 0 0 0 0 0 0 a/2]);
end