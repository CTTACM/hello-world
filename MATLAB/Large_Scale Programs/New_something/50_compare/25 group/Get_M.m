function [ out ] = Get_M( m,F )
%UNTITLED7 此处显示有关此函数的摘要
%   输出的是完整的机器串，这里采用最优法进行组合。
M = Trans_fit(m,F);
out = M;
end

