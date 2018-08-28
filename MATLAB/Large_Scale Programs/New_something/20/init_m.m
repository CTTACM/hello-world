function [ out ] = init_m(  )
%UNTITLED4 此处显示有关此函数的摘要
%   输出一个结构体（机器数组,虽然只有一个值，适应度，历史最优）
M.Ben = rand([1,5]);%因为每组都拥有5个特征。
M.V = rand([1,5]);
M.fit = inf;
M.h_best = M.Ben;
M.h_V = M.V;
M.h_fit = M.fit;
out = M;


end

