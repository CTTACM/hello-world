function [a] = test( )
%UNTITLED8 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��``

for i = 1:5
    chrom(i) = init();
    chrom(i).fit = Fitness(chrom(i)); 
    a = chrom(i)
end
chrom = s_sort(chrom);       
for j = 1:5
    c = chrom(j)
    chrom(j) = Cross(chrom(1),chrom(j));
    chrom(j).fit = Fitness(chrom(j));
    b = chrom(j)
end
end

