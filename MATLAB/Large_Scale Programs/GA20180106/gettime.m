function [ time_cost ] = gettime( f,m )
%UNTITLED7 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
global s;
rng(s);
time = randi(40,[100,50]);
time_cost = time(f,m);
end

