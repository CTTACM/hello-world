function [  ] = Ten_mean(  )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%  ��������ʮ����ƽ���������ߣ�����ֵ�����ֵ��ƽ��ֵ��
Z_Y = inf;
Z_C = 0;
for i =  1:10
    i
    [y,t] = main();
    %����ֵ
    if Z_Y > Best_fit
        Z_Y = Best_fit;
        Best_F = BestF;
        Best_M = BestM;
    end
    %���ֵ
    if Z_C < Best_fit
        Z_C  = Best_fit;
    end
    if i == 1
        sum_y = y;
        sum_t = t;
    else
        sum_y = sum_y + y;
        sum_t = sum_t + t;
    end
end
mean_y = sum_y / 10;
mean_t = sum_t / 10;
% PJ = mean_y(end);
% Z_Y
% Z_C
% PJ
mean_t
figure(1);
% Gantt(Best_M,Best_F);
x = 1:2000;
plot(x,mean_y,'-');
hold on;
end

