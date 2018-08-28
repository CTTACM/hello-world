function [ F] = Grouping(  )
%UNTITLED 此处显示有关此函数的摘要
%  产生合法串
F = randperm(20);

F = Legalization(F);

% len = length(Ff);
% d = sort(Ff);
% for i = 1:len
%     en = find(abs(Ff - d(i)) < 0.00001);%l里面存放的是F的顺序的索引
%     F(i) = en(1);
% end
end

