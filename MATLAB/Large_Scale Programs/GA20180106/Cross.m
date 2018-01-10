function [chrom] = Cross(chrom)
%UNTITLED11 此处显示有关此函数的摘要
%   此处显示详细说明
k1 = int32(randi(100,1));
k2 = int32(randi(100,1));
[chrom.F(k1),chrom.F(k2)] = Swap(chrom.F(k1),chrom.F(k2));
[chrom.M(k1),chrom.M(k2)] = Swap(chrom.M(k1),chrom.M(k2));
end

