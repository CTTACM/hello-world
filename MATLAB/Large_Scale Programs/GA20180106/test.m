function [a] = test( )
%UNTITLED8 此处显示有关此函数的摘要
%   此处显示详细说明``
for i = 1:100
    chrom(i) = init();
end

size = 100;
iter = 1;
iiter = 30;
global s;
s = rng;
tic
%--------------
while(1)
    for i = 1:size
        chrom(i).fit = Fitness( chrom(i) ); 
    end
    chrom = s_sort(chrom);
    a = chrom(1);
    a
    for j = 2:size%交叉操作:
        chrom(j) = Cross(chrom(j));       
    end
    for k = 2:size %变异操作: 
         chrom(k) = Mutation(chrom(k));
    end
    iter = iter + 1;%迭代次数加1
    if iter == iiter
        break;
    end
end



toc

%------------------
end

