function [ M ] = Trans_fit( f ,FF)
%UNTITLED 此处显示有关此函数的摘要
%   f是小数数组，函数是将一个小数数组f转换成一个5个整数数组。这里的F是指工序。
lo = length(f);
MM = [3,3,3,4,3,3,3,4,3,4,3,4,3,4,4,3,3,3,3,4];%每个特征加工可以用的机器数量

for i = 1:lo
    M(i) = ceil( MM(FF(i))*f(i) );
end
end

