function [ out ] = Init(  )
%UNTITLED3 此处显示有关此函数的摘要
%   输出一个结构体，包括一个qun数组，一个G_best数组。

K = 5;
for i = 1:K
    CI.qun(i) = init_m();
end
CI.G_best = CI.qun(1).Ben;
CI.G_V = CI.qun(1).V;
CI.G_fit = CI.qun(1).fit;
out = CI;

end

