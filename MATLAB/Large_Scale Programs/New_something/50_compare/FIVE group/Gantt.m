function [ ] = Gantt( M,F )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �������Ž�����ݻ�������ͼ
%ͼ�ζ���
axis([0,800,0,8]);%x�� y��ķ�Χ
set(gca,'xtick',0:100:800) ;%x�����������
set(gca,'ytick',0:1:5) ;%y�����������
xlabel('Processing time'),ylabel('Machine ID');%x�� y�������
title('best solution');%ͼ�εı���
a = [1 0.5 0];
b = [0 1 0];
c = [1 0 1];
color  = a;
% chr = Legalization(chr);
load('data_TM.mat');
% F = chro.F;%������Ը�����в����Ƚϼ��
% M = chro.M;
lo = length(F);
%�������ʱ��
J1 = 0;%ÿ���������ӹ����ʱ���
J2 = 0;
J3 = 0;
M1 = 0;%ÿ̨�������ӹ�ʱ���
M2 = 0;
M3 = 0;
M4 = 0;
M5 = 0;
J = 1;%��ǰ���������ĸ�����
%��תʱ�����װ��ʱ�䣨set��������ʱ�䣬��ʱ��ת����TM��
Set_time = 1;%װ��ʱ�䶼Ϊ1��
end_M = 0;
end_J = 0;
%���峤��
for i = 1:lo
    m = m_M(F(i),M(i));%m��ָ��һ�������ı��
    %�ҵ���ʹ�û��������ʱ�䣬Ϊend_M;
    if i > 1
        mm = m_M(F(i-1),M(i-1));%mmǰһ�������ı��
        T_M = TM(mm,m);%�������ת��ʱ��Ӧ�üӵ���һ����ʼ�ӹ��Ĺ���ʹ�ӹ�֮ǰ��
    elseif i == 1
        T_M = 0;
    end
    %�ҵ��ù��������ڵڼ�����������ͬ����ʹ�ò�ͬ��ɫ
    if 1<= F(i)&& F(i) <= 20
        J = 1;
        color = a;
    elseif 20 < F(i)&& F(i) <= 36
        J = 2;
        color = b;
    elseif 36 < F(i)&& F(i) <= 50
        J = 3;
        color = c;
    end
    %����ʱ��
    if m == 1
        M_begin = 0.7;
        end_M = M1;
    elseif m == 2
        M_begin = 1.7;
        end_M = M2;
    elseif m == 3
        M_begin = 2.7;
        end_M = M3;
    elseif m == 4
        M_begin = 3.7;
        end_M = M4;
    elseif m == 5
        M_begin = 4.7;
        end_M = M5;
    end
    %�ҵ��ù�����ǰһ������ļӹ�����ʱ��end_J;
    if J == 1
        end_J = J1;
    elseif J == 2
        end_J = J2;
    elseif J == 3
        end_J = J3;
    end
    Begin_time = T_M+max(end_M,end_J)+Set_time;%�ӹ���ʼ��ʱ�䣺�����ܿ���������ʱ����������ǰһ���������������ʱ��
    %������n�Ż�������ӹ�n�Ź��������ʱ��
    PT = Gettime(F(i),M(i));
    rectangle('position',[Begin_time,M_begin,PT,0.6],'Curvature',0.1,'LineWidth',1,'EdgeColor',color,'FaceColor',color);
    if m == 1
        M1 = Begin_time + PT;
    elseif m == 2
        M2 = Begin_time + PT;
    elseif m == 3
        M3 = Begin_time + PT;
    elseif m == 4
        M4 = Begin_time + PT;
    elseif m == 5
        M5 = Begin_time + PT;
    end
    if J == 1
        J1 = Begin_time + PT;
    elseif J == 2
        J2 = Begin_time + PT;
    elseif J == 3
        J3 = Begin_time + PT;
    end
end

end

