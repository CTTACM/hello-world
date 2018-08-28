function [ out ] = Init(  )
%UNTITLED3 此处显示有关此函数的摘要
%   输出一个结构体，包括一个qun数组，一个G_best数组。

K = 5;
for i = 1:K
    CI.qun(i) = init_m();
end
out = CI;
end

