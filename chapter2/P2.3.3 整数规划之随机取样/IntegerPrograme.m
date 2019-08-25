function IntegerPrograme
rng(sum(clock)); % 随机化初始种子
y=0;
for i=1:10^5
    x0 = 99*rand(5,1); % 产生5行1列在0~1范围内的随机数
    x1 = floor(x0); % 向下取整
    x2 = ceil(x0); % 向上取整
    [f,g] = mengte(x1);
    if sum(g<=0)==4
        if y<=f
            x=x1;
            y=f;
        end
    end
    
    [f,g] = mengte(x2);
    if sum(g<=0)==4
        if y<=f
            x=x2;
            y=f;
        end
    end
end

disp('随机数产生的整数最优解 x =：'), disp(x);
disp('最优值 y =：'), disp(y);


function [f,g] = mengte(x)
f = x(1)^2 + x(2)^2 + 3*x(3)^2 + 4*x(4)^2 + 2*x(5)^2 - 8*x(1) - 2*x(2) - 3*x(3) - x(4) - 2*x(5);
g(1) = sum(x)-400;
g(2) = x(1)+2*x(2)+2*x(3)+x(4)+6*x(5)-800;
g(3) = 2*x(1)+x(2)+6*x(3)-200;
g(4) = x(3)+x(4)+5*x(5)-200;
