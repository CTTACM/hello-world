function [ out ] = H(C,F)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �������ÿ��������ֵ��ϳɵ�������������

m = [C(1).qun(1).Ben,C(2).qun(1).Ben,C(3).qun(1).Ben,C(4).qun(1).Ben];
M = Trans_fit(m,F);
out = M;
end

