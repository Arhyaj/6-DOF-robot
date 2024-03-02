function [Q] = dqRx(a)
    Q = transpose([cos(a/2) sin(a/2) 0 0 0 0 0 0]);
end