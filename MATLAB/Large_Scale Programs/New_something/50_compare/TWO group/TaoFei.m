function [the_best,MM_M,F ] = TaoFei( C,S )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%  ���������������F������Ѱ�������Ž�
%�����ṹ�壬��2�飬ÿ��5�����壬����b�����壬f��fitness��v���ٶ�
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

  