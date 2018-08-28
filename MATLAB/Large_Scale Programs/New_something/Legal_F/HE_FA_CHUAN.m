function [ out ] = HE_FA_CHUAN(  )
%UNTITLED 此处显示有关此函数的摘要
%   输出一个合法的小数数组
T = [1 2 6 11 18 5 19 3 12 17 4 7 20 13 8 14 9 15 10 16];
% lo = length(T)
fa = zeros(1,20);
fa(2) = fa(1) + rand(1)*(1 - fa(1));
fa(6) = fa(1) + rand(1)*(1 - fa(1));
fa(11) = fa(1) + rand(1)*(1 - fa(1));
fa(18) = fa(1) + rand(1)*(1 - fa(1));
fa(5) = fa(1) + rand(1)*(1 - fa(1));
fa(19) = fa(1) + rand(1)*(1 - fa(1));
fa(3) = fa(1) + rand(1)*(1 - fa(1));
A = [fa(2),fa(6),fa(11)];
fa(12) = max(A) + rand(1)*(1 - max(A));
fa(17) = fa(18) + rand(1)*(1 - fa(18));
B = [fa(18),fa(5)];
fa(4) = max(B) + rand(1)*(1 - max(B));
fa(7) = fa(5) + rand(1)*(1 - fa(5));
fa(20) = fa(19) + rand(1)*(1 - fa(19));
fa(13) = fa(12) + rand(1)*(1 - fa(12));
fa(8) = fa(7) + rand(1)*(1 - fa(7));
fa(14) = fa(13) + rand(1)*(1 - fa(13));
fa(9) = fa(8) + rand(1)*(1 - fa(8));
fa(15) = fa(14) + rand(1)*(1 - fa(14));
fa(10) = fa(9) + rand(1)*(1 - fa(9));
fa(16) = fa(15) + rand(1)*(1 - fa(15));
out = Get_F1(fa);
end

