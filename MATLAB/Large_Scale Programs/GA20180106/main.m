function [ a ] = main()
%UNTITLED9 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵
x=1;
y=0;
 
size = 100;%zhong qun da xiao 

iiter = 1000;%die dai ci shu
iter = 1;
global s;
s = rng;
tic
for i = 1:size
    chrom(i) = init();
end
while(1)
    for i = 1:size  % ������Ӧ��
       chrom(i).fit = Fitness(chrom(i));
    end
    chrom = s_sort(chrom);%����
   
    x(iter) = iter;%x�������ֵ
    y(iter) = chrom(1).fit;%y�������ֵ
    a = chrom(1);
    a
    for j = 2:size%�������:
        chrom(j) = Cross(chrom(j));       
    end
    for k = 2:size %�������: 
         chrom(k) = Mutation(chrom(k));
    end
    iter = iter + 1;%����������1
    if iter == iiter
        break;
    end
end
toc
plot(x,y);
hold on;
a = chrom(1);
end

