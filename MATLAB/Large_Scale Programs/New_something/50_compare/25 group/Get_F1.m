function [ out ] = Get_F1( a )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �õ�F��������aΪһ��С��,��������Ѱ��λ���ǿ�����Ϊ�ο��ġ�while���֡�
b = sort(a);
lo = length(a);
for i = 1:lo
    c = find(abs(a - b(i)) < 0.00001);
    c = c(1);
    F(i) = c;
    a(c) = nan;
end
F = Legalization(F);
clear a;
out = F;
end

