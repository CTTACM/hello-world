function [ chrom ] = init()%���������Ҫʵ�ֳ�ʼ��һ������:����֤��
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
%------��ʼ��һ�������F��
FF = 1:50; %������¼feature�Ƿ��ù������ù���Ҫ��������ȥ��end_numҪ�ı䡣
end_num = 50;
for i = 1:50
    k = int32(randi(end_num,1));
    chrom.F(i) = FF(k);
    [FF(k),FF(end_num)] = Swap(FF(k),FF(end_num));
    end_num = end_num - 1;
end
%------

%------��ʼ��������
MM = [3,3,3,4,3,3,3,4,3,4,3,4,3,4,4,3,3,3,3,4,4,3,3,3,3,4,3,4,3,4,3,3,4,3,4,4,3,3,3,4,3,3,3,3,4,3,4,4,3,4];
for j = 1:50
    chrom.M(j) = int32(randi(MM(j),1));
end
%------
chrom.fit = 0.0;
%��ӡ����
%chrom.F
%chrom.M
end

