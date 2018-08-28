function [ out ] = Get_F1( a )
%UNTITLED2 此处显示有关此函数的摘要
%   得到F串，输入a为一串小数,这个里面的寻找位置是可以作为参考的。while部分。
b = sort(a);
lo = length(a);
for i = 1:lo
    c = find(abs(a - b(i)) < 0.00001);
    c = c(1);
    F(i) = c;
    a(c) = nan;
end
F = Legalization(F);
clear a;
out = F;
end

