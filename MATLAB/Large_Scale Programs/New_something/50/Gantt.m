function [ ] = Gantt( M,F )
%UNTITLED 此处显示有关此函数的摘要
%   根据最优解的数据画出甘特图
%图形定义
axis([0,800,0,8]);%x轴 y轴的范围
set(gca,'xtick',0:100:800) ;%x轴的增长幅度
set(gca,'ytick',0:1:5) ;%y轴的增长幅度
xlabel('Processing time'),ylabel('Machine ID');%x轴 y轴的名称
title('best solution');%图形的标题
a = [1 0.5 0];
b = [0 1 0];
c = [1 0 1];
color  = a;
% chr = Legalization(chr);
load('data_TM.mat');
% F = chro.F;%用数组对个体进行操作比较简洁
% M = chro.M;
lo = length(F);
%定义最后时间
J1 = 0;%每个工件最后加工完成时间点
J2 = 0;
J3 = 0;
M1 = 0;%每台机器最后加工时间点
M2 = 0;
M3 = 0;
M4 = 0;
M5 = 0;
J = 1;%当前特征属于哪个工件
%中转时间包括装夹时间（set）和运输时间，即时间转换表（TM）
Set_time = 1;%装夹时间都为1。
end_M = 0;
end_J = 0;
%个体长度
for i = 1:lo
    m = m_M(F(i),M(i));%m是指后一个机器的编号
    %找到所使用机器的最后时间，为end_M;
    if i > 1
        mm = m_M(F(i-1),M(i-1));%mm前一个机器的编号
        T_M = TM(mm,m);%这个机器转换时间应该加到下一到开始加工的工序开使加工之前。
    elseif i == 1
        T_M = 0;
    end
    %找到该工序是属于第几个工件，不同工件使用不同颜色
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
    %计算时间
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
    %找到该工件的前一个工序的加工结束时间end_J;
    if J == 1
        end_J = J1;
    elseif J == 2
        end_J = J2;
    elseif J == 3
        end_J = J3;
    end
    Begin_time = T_M+max(end_M,end_J)+Set_time;%加工开始的时间：机器能开工的最早时间和这个工序前一个工序结束的最早时间
    %更新在n号机器上面加工n号工件的最后时间
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

