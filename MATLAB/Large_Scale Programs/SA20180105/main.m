function [ a ] = main()
%UNTITLED9 此处显示有关此函数的摘要
%   此处显示详细说
x=1;
y=0;
% bian liang yao tong  yi 
 

size = 100;%种群大小

iiter = 3000;%迭代次数
iter = 1;
tic
for i = 1:size
    chrom(i) = init();
end
while(1)
    for i = 1:size
        chrom(i).F = legalization(chrom(i).F);
    end
    for i = 1:size  % 计算适应度
       chrom(i).fit = Fitness(chrom(i));
    end
    chrom = s_sort(chrom);%排序
    x(iter) = iter;
    y(iter) = chrom(1).fit;
    
    %产生新一代个体，存储到chrom2中
    for j = 2:size%交叉操作:
        chrom2(j) = Cross(chrom(j));
    end
%     for k = 2:size %变异操作: 
%          chrom2(k) = Mutation(chrom(k));
%     end
     %对新一代个体合法化操作
    for i = 2:size
        chrom2(i).F = legalization(chrom2(i).F);
    end
    %计算新一代个体的适应度，如果新一代个体适应度好，就接受如果不好，就用metropolis法则处理
    for i = 2:size  
       chrom2(i).fit = Fitness(chrom2(i));
       if chrom2(i).fit < chrom(i).fit
           chrom(i) = chrom2(i);
       else
           r= rand();
           tt = exp( (chrom2(i).fit-chrom(i).fit) / (iter/25) );
           if r < tt
               chrom(i) = chrom2(i);
           end
       end
           
    end
    iter = iter + 1;
    if iter == iiter
        break;
    end
    a = chrom(1)
end
toc
plot(x,y);
hold on;
a = chrom(1);
end

