function [ out ] = Get_better( S,C )
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   ����Ż����ֵ���Դ�������ÿһ��F����������һ����������������

[the1,M1,F1] = TaoFei(C,S(1));
[the2,M2,F2] = TaoFei(C,S(2));
if the1 <= the2
    B.F = F1;
    B.M = M1;
    B.fit = the1;
else
    B.F = F2;
    B.M = M2;
    B.fit = the2;
end
out = B;
end

