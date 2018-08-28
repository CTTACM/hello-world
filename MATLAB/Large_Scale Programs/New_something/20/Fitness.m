function [ out ] = Fitness( M,F )
%UNTITLED6 此处显示有关此函数的摘要
%   这里要计算出个体的fitness
load('data_TM.mat');
load('data_CT.mat');
lo = length(F);
Pro_time = 0;
Tran_time = 0;
for i = 1:lo
    Pro_time = Pro_time + Gettime(F(i),M(i));
end
for i = 1:(lo-1)
    m1 = m_M(F(i),M(i));
    m2 = m_M(F(i+1),M(i+1));
    C_M = TM(m1,m2);
    Tran_time = Tran_time + C_M;
end
Total_time = Pro_time + Tran_time;
out = Total_time;
end

