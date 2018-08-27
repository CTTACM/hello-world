function [chrom] = Cross(chrom1, chrom)
%UNTITLED11 此处显示有关此函数的摘要
%   此处显示详细说明
x = chrom1.F - chrom.F;
x
if any(x)
    k1 = find(max(x) ==x );
    k1 = k1(1);%只需要第一个最大值的位置
    k2 = find(min(x) ==x ); 
    k2 = k2(1);%
    [chrom.F(k1),chrom.F(k2)] = Swap(chrom.F(k1),chrom.F(k2));
    [chrom.M(k1),chrom.M(k2)] = Swap(chrom.M(k1),chrom.M(k2));
end
end

