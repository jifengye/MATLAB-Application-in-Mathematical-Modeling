% 多项式拟合
% P = polyfit(X,Y,N): 多项式拟合，返回降幕排列的多项式系数。N表示最大拟合幂次
% polyval(P. xi): 带入多项式系数来计算拟合后对应xi的值yi

x = [1 2 3 4 5 6 7 8 9];
y = [9 7 6 3 -1 2 5 7 20];
P = polyfit(x,y,3); % 拟合得到函数

xi = 0:.2:10;
yi = polyval(P,xi);
plot(xi,yi, x,y,'r*');
