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
    if Find(chrom,chrom(i))
        i = i-1;
    end
end
while(1)
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
    for i = 1:size
        chrom(i).F = legalization(chrom(i).F);
        if Find(chrom,chrom(i))
            chrom(i) = Cross(chrom(i));
            i = i-1;
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
a = chrom(1);
end

