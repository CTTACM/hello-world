function [ out ] = Get_F2( a )
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �õ�F��������a��һ��С�����飬��F1�Ĳ�ͬ�������С���Ӵ�С�����õ��ġ�
b = sort(a,'descend');
lo = length(a);

for i = 1:lo
    c = find(abs(a - b(i)) < 0.00001);
    c = c(1);
    F(i) = c;
    a(c) = nan;
end
F = Legalization(F);
out = F;

end

