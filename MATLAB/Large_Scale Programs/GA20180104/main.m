function [ a ] = main()
%UNTITLED9 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵
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
    for i = 1:size
        chrom(i).F = legalization(chrom(i).F);
    end
    for i = 1:size  % ������Ӧ��
       chrom(i).fit = Fitness(chrom(i));
    end
    chrom = s_sort(chrom);%����
    x(iter) = iter;
    y(iter) = chrom(1).fit;
    for j = 2:size%�������:
        chrom(j) = Cross(chrom(j));
    end
    for k = 2:size %�������: 
         chrom(k) = Mutation(chrom(k));
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

