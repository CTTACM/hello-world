function [i] = Loc(F,a)
%UNTITLED5 此处显示有关此函数的摘要：已验证：
%   此处显示详细说明
i = 0;
for i = 1:20
    if F(i) == a
        break;
    end
end
end

