function [ a ] = main()
%UNTITLED9 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵
x=1;
y=0;
% bian liang yao tong  yi 
 

size = 100;%��Ⱥ��С

iiter = 3000;%��������
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
    
    %������һ�����壬�洢��chrom2��
    for j = 2:size%�������:
        chrom2(j) = Cross(chrom(j));
    end
%     for k = 2:size %�������: 
%          chrom2(k) = Mutation(chrom(k));
%     end
     %����һ������Ϸ�������
    for i = 2:size
        chrom2(i).F = legalization(chrom2(i).F);
    end
    %������һ���������Ӧ�ȣ������һ��������Ӧ�Ⱥã��ͽ���������ã�����metropolis������
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

