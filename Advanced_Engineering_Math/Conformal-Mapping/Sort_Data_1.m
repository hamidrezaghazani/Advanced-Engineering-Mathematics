function [ X1 , X2 ] = Sort_Data_1( a , b )

if abs(b(1)-a(end))>10^(-1)
    b = b(end:-1:1);
end
X1 = a;
X2 = b;

end

