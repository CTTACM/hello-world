function [the_best,MM_M,F ] = TaoFei( C,S )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%  ���������������F������Ѱ�������Ž�
%�����ṹ�壬��25�飬ÿ��5�����壬����b�����壬f��fitness��v���ٶ�
F = S.F;
for i = 1:25
    a = (i-1)*2+1;
    Fa = F(a:a+1);
    for j = 1:5
        M = Trans_fit( C(i).qun(j).Ben ,Fa);
        C(i).qun(j).fit = Fitness(M,Fa);
    end
    C(i).qun = S_sort(C(i).qun);
end
MM = [C(1).qun(1).Ben,C(2).qun(1).Ben,C(3).qun(1).Ben,C(4).qun(1).Ben,C(5).qun(1).Ben,C(6).qun(1).Ben,C(7).qun(1).Ben,C(8).qun(1).Ben,C(9).qun(1).Ben,C(10).qun(1).Ben,C(11).qun(1).Ben,C(12).qun(1).Ben,C(13).qun(1).Ben,C(14).qun(1).Ben,C(15).qun(1).Ben,C(16).qun(1).Ben,C(17).qun(1).Ben,C(18).qun(1).Ben,C(19).qun(1).Ben,C(20).qun(1).Ben,C(21).qun(1).Ben,C(22).qun(1).Ben,C(23).qun(1).Ben,C(24).qun(1).Ben,C(25).qun(1).Ben];
MM_M  = Trans_fit(MM,F);
the_best = Fitness(MM_M,F);
end

  