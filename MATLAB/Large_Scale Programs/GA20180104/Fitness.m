function [fit] = Fitness( chrom)
%UNTITLED4 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
% chrom.F = legalization(chrom.F);
fit = 0.0;
for i = 1:50
    fit = fit + gettime(chrom.F(i),chrom.M( chrom.F(i) ) );
end
 
end