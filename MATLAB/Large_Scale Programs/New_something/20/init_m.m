function [ out ] = init_m(  )
%UNTITLED4 �˴���ʾ�йش˺�����ժҪ
%   ���һ���ṹ�壨��������,��Ȼֻ��һ��ֵ����Ӧ�ȣ���ʷ���ţ�
M.Ben = rand([1,5]);%��Ϊÿ�鶼ӵ��5��������
M.V = rand([1,5]);
M.fit = inf;
M.h_best = M.Ben;
M.h_V = M.V;
M.h_fit = M.fit;
out = M;


end

