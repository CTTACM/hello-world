function [ S] = Wan_fit(j,k, C)
%UNTITLED 此处显示有关此函数的摘要
%   求一条完整串的fit，输入只是一串小数，输出是是否超过best和完整串fit的值。
r = randi(5,[1,4]);
c = k+1;
if k == 5
    c = 1;
end
if j == 1
    a = [C(1).qun(k).Ben,C(2).qun(r(2)).Ben,C(3).qun(r(3)).Ben,C(4).qun(r(4)).Ben];
    b = [C(1).qun(c).Ben,C(2).qun(r(2)).Ben,C(3).qun(r(3)).Ben,C(4).qun(r(4)).Ben];
elseif j == 2
    a = [C(1).qun(r(1)).Ben,C(2).qun(k).Ben,C(3).qun(r(3)).Ben,C(4).qun(r(4)).Ben];
    b = [C(1).qun(r(1)).Ben,C(2).qun(c).Ben,C(3).qun(r(3)).Ben,C(4).qun(r(4)).Ben];
elseif j == 3
    a = [C(1).qun(r(1)).Ben,C(2).qun(r(2)).Ben,C(3).qun(k).Ben,C(4).qun(r(4)).Ben];
    b = [C(1).qun(r(1)).Ben,C(2).qun(r(2)).Ben,C(3).qun(c).Ben,C(4).qun(r(4)).Ben];
elseif j == 4
    a = [C(1).qun(r(1)).Ben,C(2).qun(r(2)).Ben,C(3).qun(r(3)).Ben,C(4).qun(k).Ben];
    b = [C(1).qun(r(1)).Ben,C(2).qun(r(2)).Ben,C(3).qun(r(3)).Ben,C(4).qun(c).Ben];
end
S(1).F = Get_F1(a);
S(2).F = Get_F2(a);
[S(3).F,S(4).F] = Get_F34(a,b);
S(1).M = Get_M(a,S(1).F);
S(2).M = Get_M(a,S(2).F);
S(3).M = Get_M(a,S(3).F);
S(4).M = Get_M(a,S(4).F);
S(1).fit = Fitness(S(1).M,S(1).F);
S(2).fit = Fitness(S(2).M,S(2).F);
S(3).fit = Fitness(S(3).M,S(3).F);
S(4).fit = Fitness(S(4).M,S(4).F);

end

