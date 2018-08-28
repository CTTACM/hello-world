function [ out ] = Get_F2( a )
%UNTITLED3 此处显示有关此函数的摘要
%   得到F串，输入a是一组小数数组，与F1的不同是这个是小数从大到小排序后得到的。
b = sort(a,'descend');
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
F = Legalization(F);
out = F;

end

