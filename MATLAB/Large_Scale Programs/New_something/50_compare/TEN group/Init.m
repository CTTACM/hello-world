function [ out ] = Init(  )
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   ���һ���ṹ�壬����һ��qun���飬һ��G_best���顣

K = 5;
for i = 1:K
    CI.qun(i) = init_m();
end
out = CI;
end

