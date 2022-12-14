clc;
clear;
close all;
% By Hamidreza Sanati Ghazani
% Stu_id : 140051411058
% Tel_id : @hamid_sg
% Email  : hamidrezaghazani1382@gmail.com

%%
x_x = 0:0.001:1;
L = 1;

%% Main Func points
M_x = 0:0.001:1;
M_y = M_x.^2;



%%
figure(1)
subplot(2,3,1)
plot(M_x,M_y,'r','linewidth',1.5);
axis([0,1,-0.5,1.5])
ylabel('F(x)');xlabel('x');
title('Main function')



%%
subplot(2,3,2)
plot(M_x,M_y,'r','linewidth',1.5);
axis([0,1,-0.5,1.5])
hold on;
n = 1:3;
%% Generate Bn
f1 = @(x) x.^2*sin(n*pi/L*x);
B1 = 2/L*integral(f1,0,L,'arrayvalued',true);
Bn = B1;
%% Generate Foureir Serie of F
for i = 1:numel(x_x)
    B(i,:) = Bn.*sin(n*pi/L*x_x(i));
end
F = sum(B,2);

plot(x_x,F,'b','linewidth',1.5)
ylabel('F(x)');xlabel('x');
title('3rd')
clear B F;



%%
subplot(2,3,3)
plot(M_x,M_y,'r','linewidth',1.5);
axis([0,1,-0.5,1.5])
hold on;
n = 1:8;
%% Generate Bn
f1 = @(x) x.^2*sin(n*pi/L*x);
B1 = 2/L*integral(f1,0,L,'arrayvalued',true);
Bn = B1;
%% Generate Foureir Serie of F
for i = 1:numel(x_x)
    B(i,:) = Bn.*sin(n*pi/L*x_x(i));
end
F = sum(B,2);

plot(x_x,F,'b','linewidth',1.5)
ylabel('F(x)');xlabel('x');
title('8th')
clear B F;




%%
subplot(2,3,4)
plot(M_x,M_y,'r','linewidth',1.5);
axis([0,1,-0.5,1.5])
hold on;
n = 1:20;
%% Generate Bn
f1 = @(x) x.^2*sin(n*pi/L*x);
B1 = 2/L*integral(f1,0,L,'arrayvalued',true);
Bn = B1;
%% Generate Foureir Serie of F
for i = 1:numel(x_x)
    B(i,:) = Bn.*sin(n*pi/L*x_x(i));
end
F = sum(B,2);


plot(x_x,F,'b','linewidth',1.5)
ylabel('F(x)');xlabel('x');
title('20th')
clear B F;



%%
subplot(2,3,5)
plot(M_x,M_y,'r','linewidth',1.5);
axis([0,1,-0.5,1.5])
hold on;
n = 1:50;
%% Generate Bn
f1 = @(x) x.^2*sin(n*pi/L*x);
B1 = 2/L*integral(f1,0,L,'arrayvalued',true);
Bn = B1;
%% Generate Foureir Serie of F
for i = 1:numel(x_x)
    B(i,:) = Bn.*sin(n*pi/L*x_x(i));
end
F = sum(B,2);

plot(x_x,F,'b','linewidth',1.5)
ylabel('F(x)');xlabel('x');
title('50th')
clear B F;



%%
subplot(2,3,6)
plot(M_x,M_y,'r','linewidth',1.5);
axis([0,1,-0.5,1.5])
hold on;
n = 1:100;
%% Generate Bn
f1 = @(x) x.^2*sin(n*pi/L*x);
B1 = 2/L*integral(f1,0,L,'arrayvalued',true);
Bn = B1;
%% Generate Foureir Serie of F
for i = 1:numel(x_x)
    B(i,:) = Bn.*sin(n*pi/L*x_x(i));
end
F = sum(B,2);

plot(x_x,F,'b','linewidth',1.5)
ylabel('F(x)');xlabel('x');
title('100th')
clear B F;


%%
figure(2)
plot(M_x,M_y,'r','linewidth',1.5);
axis([0,1,-0.5,1.5])
hold on;
n = 1:500;
%% Generate Bn
f1 = @(x) x.^2*sin(n*pi/L*x);
B1 = 2/L*integral(f1,0,L,'arrayvalued',true);
Bn = B1;
%% Generate Foureir Serie of F
for i = 1:numel(x_x)
    B(i,:) = Bn.*sin(n*pi/L*x_x(i));
end
F = sum(B,2);

plot(x_x,F,'b','linewidth',1.5)
ylabel('F(x)');xlabel('x');
title('500th')
clear B F;
ylabel('F(x)');xlabel('x');
legend('main func','1st to 500th fourier serie');

