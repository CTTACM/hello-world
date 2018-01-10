function [fit] = Fitness( chrom)
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
% chrom.F = legalization(chrom.F);
fit = 0.0;
for i = 1:50
    fit = fit + gettime(chrom.F(i),chrom.M( chrom.F(i) ) );
end
 
end