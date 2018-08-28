function [ ] = main(  )
%UNTITLED6 此处显示有关此函数的摘要 Y,time,Best_fit,Best_F,Best_M
%   主函数
Maxgen = 600;
c1 = 2.05;
w = 0.8;
Best_fit = inf;
tic


%主体
C = Found(); 
for i = 1:Maxgen
    i
    for j = 1:25            %对每个分组
        for k = 1:5         %对每个个体更新其速度，历史最优；对每组个体更新其全局最优。并保证更新完个体合法。
            %计算完整的fitness并找出最优值best
            S = Wan_fit(j,k,C);
            B = Get_better(S,C);
            if  B.fit < Best_fit
                Best_F = B.F;
                Best_M = B.M;
                Best_fit = B.fit;
            end
            X(i) = i;
            Y(i) = Best_fit;
            %更新个体
            [C(j).qun(k).Ben ,C(j).qun(k).V] = Updating(w,c1,C(j).qun(k).V,C(j).qun(k).Ben);
        end
    end
    
end
% time  = toc;

% Best_F
% Best_M

%画图
 toc 
%  figure(1)
 plot(X,Y,'-');
%  figure(1);
%  Gantt(Best_M,Best_F);
 hold on  


end

