function [ a ] = main()
%UNTITLED9 此处显示有关此函数的摘要
%   此处显示详细说
x=1;
y=0;
% bian liang yao tong  yi 
 

size = 100;%zhong qun da xiao 

iiter = 3000;%die dai ci shu
iter = 1;
tic
for i = 1:size
    chrom(i) = init();
end
while(1)
    for i = 1:size  % 计算适应度
       chrom(i).fit = Fitness(chrom(i));
    end
    chrom = s_sort(chrom);%排序
    
    a = chrom(1)
    x(iter) = iter;
    y(iter) = chrom(1).fit;
    
    for j = 2:size%交叉操作:
        chrom(j) = Cross1(chrom(j));
%         chrom(j) = Cross(chrom(1),chrom(j));
    end
    
    for k = 2:size %变异操作: 
        chrom(k) = Mutation(chrom(k));
    end
    
    iter = iter + 1;
    
    if iter == iiter
        break;
    end
   
end
toc
plot(x,y);
a = chrom(1);
end

