function [a] = test( )
%UNTITLED8 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��``
for i = 1:5
    chrom(i) = init();
%     chrom(i).fit = Fitness(chrom(i))
%     chrom(i).F = legalization( chrom(i).F );
%     a = chrom(i);

      chrom(i).F = legalization( chrom(i).F );
      chrom(i).fit = Fitness(chrom(i));
      chrom(i)
%     chrom(i).fit = Fitness(chrom(i))

end
chrom = s_sort(chrom);       
for j = 1:5
    chrom(j)
end
end

