function [a] = test( )
%UNTITLED8 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��``
size = 100;
for i = 1:size
    chrom(i) = init();
    chrom(i).F = legalization(chrom(i).F);
    a = chrom(i);
    a
    if Find(chrom,chrom(i))
        i = i-1;
    end
end
b = Find(chrom,chrom(1))
end

