function [ out ] = Fitness( M,F )
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   ����������Ӧ��:���ǵ����Լ�����ת��ʱ��
load('data_TM.mat');
% F = chro.F;%������Ը�����в����Ƚϼ��
% M = chro.M;
lo = length(F);
J = 0; % ���������ĸ�����
%�������ʱ��
J1 = 0;%ÿ���������ӹ����ʱ���
J2 = 0;
J3 = 0;
M1 = 0;%ÿ̨�������ӹ�ʱ���
M2 = 0;
M3 = 0;
M4 = 0;
M5 = 0;
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
    elseif 20 < F(i)&& F(i) <= 36
        J = 2;
    elseif 36 < F(i)&& F(i) <= 50
        J = 3;
    end
    if m == 1
        end_M = M1;
    elseif m == 2
        end_M = M2;
    elseif m == 3
        end_M = M3;
    elseif m == 4
        end_M = M4;
    elseif m == 5
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
%     Begin_time
    %������n�Ż�������ӹ�n�Ź��������ʱ��
    if m == 1
        M1 = Begin_time + Gettime(F(i),M(i));
    elseif m == 2
        M2 = Begin_time + Gettime(F(i),M(i));
    elseif m == 3
        M3 = Begin_time + Gettime(F(i),M(i));
    elseif m == 4
        M4 = Begin_time + Gettime(F(i),M(i));
    elseif m == 5
        M5 = Begin_time + Gettime(F(i),M(i));
    end
    if J == 1
        J1 = Begin_time + Gettime(F(i),M(i));
%         J1
    elseif J == 2
        J2 = Begin_time + Gettime(F(i),M(i));
%         J2
    elseif J == 3
        J3 = Begin_time + Gettime(F(i),M(i));
%         J3
    end
    
end
END_TIME = [M1,M2,M3,M4];
out = max(END_TIME);

end

