function [ chrom ] = s_sort(chrom)
%UNTITLED12 此处显示有关此函数的摘要
%   此处显示详细说明

size = 100;

for i = 1:(size - 1)
    min = i;
    for j = (i + 1):size
        if chrom(j).fit < chrom(min).fit
            min = j;
        end
    end
    if i ~= min
        [chrom(i),chrom(min)] = Swap(chrom(i),chrom(min));
    end
end

end

