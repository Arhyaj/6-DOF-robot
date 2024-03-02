function [Q] = dqRz(a)
    Q = transpose([cos(a/2) 0 0 sin(a/2) 0 0 0 0]);
end