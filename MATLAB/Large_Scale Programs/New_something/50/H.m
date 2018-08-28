function [ out ] = H(C,F)
%UNTITLED 此处显示有关此函数的摘要
%   输出的是每个组最优值组合成的整数机器串。

m = [C(1).qun(1).Ben,C(2).qun(1).Ben,C(3).qun(1).Ben,C(4).qun(1).Ben];
M = Trans_fit(m,F);
out = M;
end

