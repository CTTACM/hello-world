function [ chrom ] = init()%这个函数主要实现初始化一个个体:已验证：
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
%------初始化一个个体的F串
FF = 1:100; %用来记录feature是否被用过，被用过的要调到后面去，end_num要改变。
end_num = 100;
for i = 1:100
    k = int32(randi(end_num,1));
    chrom.F(i) = FF(k);
    [FF(k),FF(end_num)] = Swap(FF(k),FF(end_num));
    end_num = end_num - 1;
end
%------

%------初始化机器串:有10台机器可供选择。
MM = repelem(10,100);
for j = 1:100;
    chrom.M(j) = int32(randi(10,1));
end
%------
chrom.fit = 0.0;
%打印个体
%chrom.F
%chrom.M
end

