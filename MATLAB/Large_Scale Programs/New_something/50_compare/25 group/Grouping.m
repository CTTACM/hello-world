function [ F] = Grouping(  )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%  �����Ϸ���
F = randperm(20);

F = Legalization(F);

% len = length(Ff);
% d = sort(Ff);
% for i = 1:len
%     en = find(abs(Ff - d(i)) < 0.00001);%l�����ŵ���F��˳�������
%     F(i) = en(1);
% end
end

