function [] = test(  )
%UNTITLED5 此处显示有关此函数的摘要
%  测试函数，写一个函数，测试一个函数
Best_fit = inf;
C = Found();
 S = Wan_fit(1,2, C);
 A = [S(1).fit,S(2).fit,S(3).fit,S(4).fit];
[B_fit,I] = min(A);
if B_fit < Best_fit
Best_F = S(I).F;
Best_M = S(I).M;
Best_fit = B_fit;
end
end

