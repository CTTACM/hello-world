function [ is_have ] = Find( chrom, a )
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%���Ҵ����Ƿ�����ͬ�ĸ���
%   �˴���ʾ��ϸ˵��
size = 100;
is_have = 0;
for i = 1:size
    if Compare(chrom(i),a)
        is_have  = 1;
        break;
    end
end
end

