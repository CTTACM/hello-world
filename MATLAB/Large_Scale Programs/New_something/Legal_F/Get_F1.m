function [ out ] = Get_F1( a )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �õ�F��������aΪһ��С��,��������Ѱ��λ���ǿ�����Ϊ�ο��ġ�while���֡�
% a
b = sort(a);
% b
lo = length(a);
i = 1;
while i <= lo
    c = find(abs(a - b(i)) < 0.00001);
    l = length(c);
    j = 1;
    while j <= l
        F(i) = c(j);
        i = i + 1;
        j = j + 1;
    end   
end
% F
% F
% tt = sort(F);
% tt
% F = Legalization(F);
% clear a;
% F
out = F;
end

