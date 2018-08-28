function [  ] = Ten_mean(  )
%UNTITLED 此处显示有关此函数的摘要
%  函数运行十次求平均收敛曲线。

for i =  1:10
    i
    [y,t] = main();
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
mean_t
x = 1:2000;
plot(x,mean_y,'-');
hold on;
end

