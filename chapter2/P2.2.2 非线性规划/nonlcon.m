% 非线性约束
function [g,h]=nonlcon(x);
g = -x(1)^2+x(2);
h = -x(1)-x(2)^2+2;
