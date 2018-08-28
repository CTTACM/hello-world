function [ F3,F4 ] = Get_F34( a,b )
%UNTITLED4 此处显示有关此函数的摘要
%   由两个小数组产生F串
a = (a + b)/2;
F3 = Get_F1(a);
F4 = Get_F2(a);

end

