function [the_best,MM_M,F ] = TaoFei( C,S )
%UNTITLED2 此处显示有关此函数的摘要
%  输出基于输入特征F的能搜寻到的最优解
%创建结构体，分2组，每组5个个体，包括b：本体，f：fitness，v：速度
F = S.F;
for i = 1:2
    a = (i-1)*25+1;
    Fa = F(a:a+24);
    for j = 1:5
        M = Trans_fit( C(i).qun(j).Ben ,Fa);
        C(i).qun(j).fit = Fitness(M,Fa);
    end
    C(i).qun = S_sort(C(i).qun);
end
MM = [C(1).qun(1).Ben,C(2).qun(1).Ben];
MM_M  = Trans_fit(MM,F);
the_best = Fitness(MM_M,F);
end

  