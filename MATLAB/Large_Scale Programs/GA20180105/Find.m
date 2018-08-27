function [ is_have ] = Find( chrom, a )
%UNTITLED3 此处显示有关此函数的摘要
%查找串中是否有相同的个体
%   此处显示详细说明
size = 100;
is_have = 0;
for i = 1:size
    if Compare(chrom(i),a)
        is_have  = 1;
        break;
    end
end
end

