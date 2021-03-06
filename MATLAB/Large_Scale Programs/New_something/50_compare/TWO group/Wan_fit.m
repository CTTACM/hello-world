function [ S] = Wan_fit(j,k, C)
%UNTITLED 此处显示有关此函数的摘要
%   求一条完整串的fit，输入只是一串小数，输出是是否超过best和完整串fit的值。
r = randi(5,[1,2]);
c = k+1;
if k == 5
    c = 1;
end
if j == 1
    a = [C(1).qun(k).Ben,C(2).qun(r(2)).Ben];
    b = [C(1).qun(c).Ben,C(2).qun(r(2)).Ben];
elseif j == 2
    a = [C(1).qun(r(1)).Ben,C(2).qun(k).Ben];
    b = [C(1).qun(r(1)).Ben,C(2).qun(c).Ben];
end
[S(1).F,S(2).F] = Get_F34(a,b);
S(1).M = Get_M(a,S(1).F);
S(2).M = Get_M(a,S(2).F);
S(1).fit = Fitness(S(1).M,S(1).F);
S(2).fit = Fitness(S(2).M,S(2).F);
end

