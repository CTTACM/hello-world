function [ out ] = Get_F1( a )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �õ�F��������aΪһ��С��,��������Ѱ��λ���ǿ�����Ϊ�ο��ġ�while���֡�
b = sort(a);
lo = length(a);
i = 1;
while i <= lo
    c = find(abs(a - b(i)) < 0.00001);
    ll = length(c);
    j = 1;
    while j <= ll
        F(i) = c(j);
        i = i + 1;
        j = j + 1;
    end   
end
F = Legalization(F);
out = F;
end

