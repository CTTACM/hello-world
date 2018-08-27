function [ is_same ] = Compare( a,b )
%UNTITLED2 此处显示有关此函数的摘要
%匹配两个个体是否相同
%   此处显示详细说明
if isequal(a.F, b.F) && isequal(a.M, b.M) && isequal(a.fit, b.fit)
    is_same = 1;
else
    is_same = 0;
end
end

