function [ out ] = Get_F1( a )
%UNTITLED2 此处显示有关此函数的摘要
%   得到F串，输入a为一串小数,这个里面的寻找位置是可以作为参考的。while部分。
% a
b = sort(a);
% b
lo = length(a);
i = 1;
while i <= lo
    c = find(abs(a - b(i)) < 0.00001);
    l = length(c);
    j = 1;
    while j <= l
        F(i) = c(j);
        i = i + 1;
        j = j + 1;
    end   
end
% F
% F
% tt = sort(F);
% tt
% F = Legalization(F);
% clear a;
% F
out = F;
end

