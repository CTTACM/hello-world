function [ ] = main(  )
%UNTITLED6 �˴���ʾ�йش˺�����ժҪ Y,time,Best_fit,Best_F,Best_M
%   ������
Maxgen = 600;
c1 = 2.05;
w = 0.8;
Best_fit = inf;
tic


%����
C = Found(); 
for i = 1:Maxgen
    i
    for j = 1:25            %��ÿ������
        for k = 1:5         %��ÿ������������ٶȣ���ʷ���ţ���ÿ����������ȫ�����š�����֤���������Ϸ���
            %����������fitness���ҳ�����ֵbest
            S = Wan_fit(j,k,C);
            B = Get_better(S,C);
            if  B.fit < Best_fit
                Best_F = B.F;
                Best_M = B.M;
                Best_fit = B.fit;
            end
            X(i) = i;
            Y(i) = Best_fit;
            %���¸���
            [C(j).qun(k).Ben ,C(j).qun(k).V] = Updating(w,c1,C(j).qun(k).V,C(j).qun(k).Ben);
        end
    end
    
end
% time  = toc;

% Best_F
% Best_M

%��ͼ
 toc 
%  figure(1)
 plot(X,Y,'-');
%  figure(1);
%  Gantt(Best_M,Best_F);
 hold on  


end

