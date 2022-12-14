clc;
clear;
close all;
% By Hamidreza Sanati Ghazani
% Stu_id : 140051411058
% Tel_id : @hamid_sg
% Email  : hamidrezaghazani1382@gmail.com

%%
x_x = -6:0.01:6;
%k = 1;
L = pi;
n = 1:100;
%% Main Func points
M_x = [-6,-pi,-pi,pi,pi,6];
M_y = [pi-(-6+2*pi),0,2*pi,0,2*pi,pi-(6-2*pi)];



%%
figure(1)
subplot(2,3,1)
plot(M_x,M_y,'r','linewidth',1.5);
axis([-6,6,-0.5,7])
ylabel('F(x)');xlabel('x');
title('Main function')



%%
subplot(2,3,2)
plot(M_x,M_y,'r','linewidth',1.5);
axis([-6,6,-0.5,7])
hold on;
n = 1:3;
%% Generate A0
f1 = @(x) pi-x;
A01 = 1/(2*L)*integral(f1,-L,L,'arrayvalued',true);
A0n = A01;
%% Generate An
f1 = @(x) (pi-x)*cos(n*pi/L*x);
A1 = 1/L*integral(f1,-L,L,'arrayvalued',true);
An = A1;
%% Generate Bn
f1 = @(x) (pi-x)*sin(n*pi/L*x);
B1 = 1/L*integral(f1,-L,L,'arrayvalued',true);
Bn = B1;
%% Generate Foureir Serie of F
for i = 1:numel(x_x)
    B(i,:) = An.*cos(n*pi/L*x_x(i))+Bn.*sin(n*pi/L*x_x(i));
end
F = sum(B,2)+A0n;

plot(x_x,F,'b','linewidth',1.5)
ylabel('F(x)');xlabel('x');
title('3rd')
clear B F;



%%
subplot(2,3,3)
plot(M_x,M_y,'r','linewidth',1.5);
axis([-6,6,-0.5,7])
hold on;
n = 1:8;
%% Generate A0
f1 = @(x) pi-x;
A01 = 1/(2*L)*integral(f1,-L,L,'arrayvalued',true);
A0n = A01;
%% Generate An
f1 = @(x) (pi-x)*cos(n*pi/L*x);
A1 = 1/L*integral(f1,-L,L,'arrayvalued',true);
An = A1;
%% Generate Bn
f1 = @(x) (pi-x)*sin(n*pi/L*x);
B1 = 1/L*integral(f1,-L,L,'arrayvalued',true);
Bn = B1;
%% Generate Foureir Serie of F
for i = 1:numel(x_x)
    B(i,:) = An.*cos(n*pi/L*x_x(i))+Bn.*sin(n*pi/L*x_x(i));
end
F = sum(B,2)+A0n;

plot(x_x,F,'b','linewidth',1.5)
ylabel('F(x)');xlabel('x');
title('8th')
clear B F;




%%
subplot(2,3,4)
plot(M_x,M_y,'r','linewidth',1.5);
axis([-6,6,-0.5,7])
hold on;
n = 1:20;
%% Generate A0
f1 = @(x) pi-x;
A01 = 1/(2*L)*integral(f1,-L,L,'arrayvalued',true);
A0n = A01;
%% Generate An
f1 = @(x) (pi-x)*cos(n*pi/L*x);
A1 = 1/L*integral(f1,-L,L,'arrayvalued',true);
An = A1;
%% Generate Bn
f1 = @(x) (pi-x)*sin(n*pi/L*x);
B1 = 1/L*integral(f1,-L,L,'arrayvalued',true);
Bn = B1;
%% Generate Foureir Serie of F
for i = 1:numel(x_x)
    B(i,:) = An.*cos(n*pi/L*x_x(i))+Bn.*sin(n*pi/L*x_x(i));
end
F = sum(B,2)+A0n;

plot(x_x,F,'b','linewidth',1.5)
ylabel('F(x)');xlabel('x');
title('20th')
clear B F;



%%
subplot(2,3,5)
plot(M_x,M_y,'r','linewidth',1.5);
axis([-6,6,-0.5,7])
hold on;
n = 1:50;
%% Generate A0
f1 = @(x) pi-x;
A01 = 1/(2*L)*integral(f1,-L,L,'arrayvalued',true);
A0n = A01;
%% Generate An
f1 = @(x) (pi-x)*cos(n*pi/L*x);
A1 = 1/L*integral(f1,-L,L,'arrayvalued',true);
An = A1;
%% Generate Bn
f1 = @(x) (pi-x)*sin(n*pi/L*x);
B1 = 1/L*integral(f1,-L,L,'arrayvalued',true);
Bn = B1;
%% Generate Foureir Serie of F
for i = 1:numel(x_x)
    B(i,:) = An.*cos(n*pi/L*x_x(i))+Bn.*sin(n*pi/L*x_x(i));
end
F = sum(B,2)+A0n;

plot(x_x,F,'b','linewidth',1.5)
ylabel('F(x)');xlabel('x');
title('50th')
clear B F;



%%
subplot(2,3,6)
plot(M_x,M_y,'r','linewidth',1.5);
axis([-6,6,-0.5,7])
hold on;
n = 1:100;
%% Generate A0
f1 = @(x) pi-x;
A01 = 1/(2*L)*integral(f1,-L,L,'arrayvalued',true);
A0n = A01;
%% Generate An
f1 = @(x) (pi-x)*cos(n*pi/L*x);
A1 = 1/L*integral(f1,-L,L,'arrayvalued',true);
An = A1;
%% Generate Bn
f1 = @(x) (pi-x)*sin(n*pi/L*x);
B1 = 1/L*integral(f1,-L,L,'arrayvalued',true);
Bn = B1;
%% Generate Foureir Serie of F
for i = 1:numel(x_x)
    B(i,:) = An.*cos(n*pi/L*x_x(i))+Bn.*sin(n*pi/L*x_x(i));
end
F = sum(B,2)+A0n;

plot(x_x,F,'b','linewidth',1.5)
ylabel('F(x)');xlabel('x');
title('100th')
clear B F;


%%
figure(2)
plot(M_x,M_y,'r','linewidth',1.5);
axis([-6,6,-0.5,7])
hold on;
n = 1:500;
%% Generate A0
f1 = @(x) pi-x;
A01 = 1/(2*L)*integral(f1,-L,L,'arrayvalued',true);
A0n = A01;
%% Generate An
f1 = @(x) (pi-x)*cos(n*pi/L*x);
A1 = 1/L*integral(f1,-L,L,'arrayvalued',true);
An = A1;
%% Generate Bn
f1 = @(x) (pi-x)*sin(n*pi/L*x);
B1 = 1/L*integral(f1,-L,L,'arrayvalued',true);
Bn = B1;
%% Generate Foureir Serie of F
for i = 1:numel(x_x)
    B(i,:) = An.*cos(n*pi/L*x_x(i))+Bn.*sin(n*pi/L*x_x(i));
end
F = sum(B,2)+A0n;

plot(x_x,F,'b','linewidth',1.5)
ylabel('F(x)');xlabel('x');
title('500th')
clear B F;
ylabel('F(x)');xlabel('x');
legend('main func','1st to 500th fourier serie');
