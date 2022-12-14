clear 
clc
close all
% By Hamidreza Sanati Ghazani
% Stu_id : 140051411058
% Tel_id : @hamid_sg
% Email  : hamidrezaghazani1382@gmail.com

%%
x_x = 0:0.001:2;
k = 1;
L = 2;
n = 1:500;
f1 = @(x) 2*k*x/L*sin(n*pi/L*x);
f2 = @(x) 2*k/L*(L-x)*sin(n*pi/L*x);
A1 = 2/L*integral(f1,0,L/2,'arrayvalued',true);
A2 = 2/L*integral(f2,L/2,L,'arrayvalued',true);
A= A1+A2;
for i = 1:numel(x_x)
    B(i,:) = A.*sin(n*pi/L*x_x(i));
end
B2 = sum(B,2);

%tc = 3*L/4;
%%%
for tc = 0:0.03:6*L
        x_x2 = 0:0.01:L;
        for i = 1:numel(x_x2)
            B3(i,:) = A.*sin(n*pi/L*(x_x2(i)-tc));
        end
        B4 = sum(B3,2);
        for i = 1:numel(x_x2)
            B5(i,:) = A.*sin(n*pi/L*(x_x2(i)+tc));
        end
        B6 = sum(B5,2);
        hold on
        plot(x_x2,B4,'r','linewidth',1.3)
        
        plot(x_x2,B6,'b','linewidth',1.3)
        
        BB = (B4+B6)/2;
        plot(x_x2,BB,'k','linewidth',1.5)
        
        axis([0,L,-k-0.2,k+0.2])
        plot([0,L],[0,0],'*')
        pause(0.1)
        
        if tc ~= 6*L
            clf;
        end
        
end

