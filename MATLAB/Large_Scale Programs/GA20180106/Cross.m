function [chrom] = Cross(chrom)
%UNTITLED11 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
k1 = int32(randi(100,1));
k2 = int32(randi(100,1));
[chrom.F(k1),chrom.F(k2)] = Swap(chrom.F(k1),chrom.F(k2));
[chrom.M(k1),chrom.M(k2)] = Swap(chrom.M(k1),chrom.M(k2));
end

