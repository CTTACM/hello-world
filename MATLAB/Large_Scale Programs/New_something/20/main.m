function [ ] = main(  )
%UNTITLED6 �˴���ʾ�йش˺�����ժҪ
%   ������
Maxgen = 2000;
c1 = 2.05;
c2 = 2.05;
w = 0.8;
wf1 = 0.9;
wf2 = 0.1;
Best_fit = inf;
WZ_fit = inf;
tic


%����
C = Found(); 
for i = 1:Maxgen
    %��ʼ��C���е�Ⱥ���trail��fit�ͳ�������ı�����
    for j = 1:4             %��ÿ������
        for k = 1:5         %��ÿ������������ٶȣ���ʷ���ţ���ÿ����������ȫ�����š�����֤���������Ϸ���
            %����������fitness���ҳ�����ֵbest
            S = Wan_fit(j,k,C);
%             A = [S(3).fit,S(4).fit];
            A = [S(1).fit,S(2).fit,S(3).fit,S(4).fit];
            [B_fit,I] = min(A);
            C(j).qun(k).fit = B_fit;
            if B_fit < Best_fit
                Best_F = S(I).F;
                Best_M = S(I).M;
                Best_fit = B_fit;
                for h = 1:10
                    s = rand(1,20);
                    M = Get_M(s,Best_F);
                    the = Fitness(M,Best_F);
                    if the < Best_fit
                        Best_F = S(I).F;
                        Best_M = S(I).M;
                        Best_fit = B_fit;
                    end
                end
            end
            Best_fit
            X(i) = i;
            Y(i) = Best_fit;
            %���¸���
            [C(j).qun(k).Ben ,C(j).qun(k).V] = Updating(w,c1,c2,C(j).qun(k).V,C(j).qun(k).h_best,C(j).qun(k).Ben,C(j).G_best);
            %������ʷ����
            if C(j).qun(k).fit < C(j).qun(k).h_best
                C(j).qun(k).h_best = C(j).qun(k).Ben;
                C(j).qun(k).h_V = C(j).qun(k).V;
                C(j).qun(k).h_fit = C(j).qun(k).fit;
            end
            %����ȫ������
            if C(j).qun(k).fit < C(j).G_fit
                C(j).G_best = C(j).qun(k).Ben;
                C(j).G_fit = C(j).qun(k).fit;
                C(j).G_V = C(j).qun(k).V;
            end
        end
%         if j == 4
%             %����
%             for t = 1:4
%                 C(t).qun = S_sort(C(t).qun);
%             end
%             
%        end
    end
    
end
% time  = toc;

Best_F
Best_M

%��ͼ
 toc
 plot(X,Y,'-');
 hold on  
end

