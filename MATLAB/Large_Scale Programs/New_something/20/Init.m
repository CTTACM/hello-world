function [ out ] = Init(  )
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   ���һ���ṹ�壬����һ��qun���飬һ��G_best���顣

K = 5;
for i = 1:K
    CI.qun(i) = init_m();
end
CI.G_best = CI.qun(1).Ben;
CI.G_V = CI.qun(1).V;
CI.G_fit = CI.qun(1).fit;
out = CI;

end

