function [ out ] = Get_F2( a )
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �õ�F��������a��һ��С�����飬��F1�Ĳ�ͬ�������С���Ӵ�С�����õ��ġ�
b = sort(a,'descend');
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
F = Legalization(F);
out = F;

end

