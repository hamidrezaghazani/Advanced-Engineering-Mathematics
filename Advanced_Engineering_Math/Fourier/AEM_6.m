clc;
clear;
close all;
% By Hamidreza Sanati Ghazani
% Stu_id : 140051411058
% Tel_id : @hamid_sg
% Email  : hamidrezaghazani1382@gmail.com

%%
tic;
x = -2:0.005:2;
k =4;
f = @(w) 2/pi*(sin(w)/w)*cos(w.*x);
x1 = [-2,-1,-1,1,1,2]; 
y1 = [0,0,1,1,0,0];

figure(1)
subplot(2,3,1)
plot(x1,y1,'r','linewidth',1.5);
axis([-2,2,-0.5,1.5])
ylabel('F(x)');xlabel('x');
title('Main function')

subplot(2,3,2)
hold on;
f2 = integral(f ,0, 6 ,'arrayvalued',true);
plot(x,f2,'k','linewidth',1.4)
axis([-2,2,-0.5,1.5])
ylabel('F(x)');xlabel('x');
title('integral bound: 0 to 6')

subplot(2,3,3)
hold on;
f2 = integral(f ,0, 10 ,'arrayvalued',true);
plot(x,f2,'k','linewidth',1.4)
axis([-2,2,-0.5,1.5])
ylabel('F(x)');xlabel('x');
title('integral bound: 0 to 10')

subplot(2,3,4)
hold on;
f2 = integral(f ,0, 18 ,'arrayvalued',true);
plot(x,f2,'k','linewidth',1.4)
axis([-2,2,-0.5,1.5])
ylabel('F(x)');xlabel('x');
title('integral bound: 0 to 18')

subplot(2,3,5)
hold on;
f2 = integral(f ,0, 40 ,'arrayvalued',true);
plot(x,f2,'k','linewidth',1.4)
axis([-2,2,-0.5,1.5])
ylabel('F(x)');xlabel('x');
title('integral bound: 0 to 40')

subplot(2,3,6)
hold on;
f2 = integral(f ,0, 500 ,'arrayvalued',true);
plot(x,f2,'k','linewidth',1.4)
axis([-2,2,-0.5,1.5])
ylabel('F(x)');xlabel('x');
title('integral bound: 0 to 500')

figure(2)
plot(x1,y1,'k','linewidth',1.2);
hold on;
f2 = integral(f ,0, 5000 ,'arrayvalued',true);
plot(x,f2,'b','linewidth',1.5)
axis([-2,2,-0.5,1.5])
ylabel('F(x)');xlabel('x');
legend('main func','integral bound: 0 to 5000');
toc;
