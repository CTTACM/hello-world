function [ F ] = Legalization( F )
%UNTITLED6 此处显示有关此函数的摘要
%   把不合法的序列改为合法序列
%特征约束。
ST = zeros(20,20);
ST(2:20,1) = 1;
ST(4,5) = 1;ST(7,5) = 1;
ST(12,6) = 1;ST(13,6) = 1;ST(14,6) = 1;
ST(8,7) = 1;ST(9,7) = 1;ST(10,7) = 1;
ST(12,11) = 1;ST(13,11) = 1;ST(14,11) = 1;
ST(15,12) = 1;ST(16,12) = 1;ST(19,12) = 1;ST(20,12) = 1;
ST(15,13) = 1;ST(16,13) = 1;ST(19,13) = 1;ST(20,13) = 1;
ST(15,14) = 1;ST(16,14) = 1;ST(19,14) = 1;ST(20,14) = 1;
ST(12,2) = 1;ST(13,2) = 1;ST(14,2) = 1;ST(15,2) = 1;ST(16,2) = 1;
ST(4,18) = 1;ST(17,18) = 1;
ST(9,8) = 1;ST(10,8) = 1;ST(10,9) = 1;
ST(13,12) = 1;ST(14,12) = 1;ST(14,13) = 1;
ST(16,15) = 1;
ST(20,19) = 1;

for i = 1:20
    flag = 1;
    num = F(i);%获取当前的值
    while(1)
        St = ST(num,:);%
        S1 = find(St == 1);%获取当前特征的约束数组 
        long = length(S1);%当前约束数组的长度。
        if long ~= 0 %如果有约束   
            num = S1(1);
        else%如果没有约束了：交换两者，然后把约束列变为0。
            a = find(F == num);
            [F(i),F(a)] = Swap(F(i),F(a));
%             [M(i),M(a)] = Swap(M(i),M(a));因为小数编码方式与之前不同，所以不用交换机器
            ST(:,num) = 0;
            flag = 0;
        end
        if(flag == 0) % 从while中跳出来
            break;
        end
    end %end_while
end

end


