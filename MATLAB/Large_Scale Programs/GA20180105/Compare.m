function [ is_same ] = Compare( a,b )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%ƥ�����������Ƿ���ͬ
%   �˴���ʾ��ϸ˵��
if isequal(a.F, b.F) && isequal(a.M, b.M) && isequal(a.fit, b.fit)
    is_same = 1;
else
    is_same = 0;
end
end

