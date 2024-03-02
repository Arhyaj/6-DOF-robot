function [Q] = forwardKinematicsDQ(DH)
    [m, n] = size(DH);
    Q = transpose([1 0 0 0 0 0 0 0]);
    for i = 1 : m
        Q = leftDualOperator(Q) * (rightDualOperator(dqRx(DH(i, 4))) * leftDualOperator(dqRz(DH(i, 1))) * rightDualOperator(dqTx(DH(i, 3))) * dqTz(DH(i, 2)));
    end
end