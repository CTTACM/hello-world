function [ time_cost ] = gettime( f,m )
%UNTITLED7 此处显示有关此函数的摘要
%   此处显示详细说明
global s;
rng(s);
time = randi(40,[100,50]);
time_cost = time(f,m);
end

