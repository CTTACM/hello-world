function [Ben,V  ] = Updating( w,c1,V,Ben )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   ������ºõĸ���
V = w * V + c1 * rand(1) * Ben;
lo = length(V);
for i = 1:lo
    if V(i) == 0
        V(i) = 0.5;
    end
    if V(i) < 0
        V(i) = -V(i);
    end
    if V(i) > 1
        V(i) = rand(1);
    end
end
Ben = Ben + V;
for i = 1:lo
    if Ben(i) == 0
        Ben(i) = 0.5;
    end
    if Ben(i) < 0
        Ben(i) = -V(i);
    end
    if Ben(i) > 1
        Ben(i) = rand(1);
    end
end

end

