function [ chrom ] = init()%���������Ҫʵ�ֳ�ʼ��һ������:����֤��
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
%------��ʼ��һ�������F��
FF = 1:100; %������¼feature�Ƿ��ù������ù���Ҫ��������ȥ��end_numҪ�ı䡣
end_num = 100;
for i = 1:100
    k = int32(randi(end_num,1));
    chrom.F(i) = FF(k);
    [FF(k),FF(end_num)] = Swap(FF(k),FF(end_num));
    end_num = end_num - 1;
end
%------

%------��ʼ��������:��10̨�����ɹ�ѡ��
MM = repelem(10,100);
for j = 1:100;
    chrom.M(j) = int32(randi(10,1));
end
%------
chrom.fit = 0.0;
%��ӡ����
%chrom.F
%chrom.M
end

