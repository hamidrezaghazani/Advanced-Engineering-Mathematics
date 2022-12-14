clc;
clear;
close all;
% By Hamidreza Sanati Ghazani
% Stu_id : 140051411058
% Tel_id : @hamid_sg
% Email  : hamidrezaghazani1382@gmail.com

%%


figure(1)
x = linspace(-5,5,100);
y = linspace(-3,3,100);
[X,Y]=meshgrid(x,y);
p = (X.^2+Y.^2).^0.5;
Z = (X.*(1+p.^2))./(p.^2);
contourf(X,Y,Z,100)
hold on;
xx = linspace(-1,1,200);
plot(xx,(1-xx.^2).^0.5,'linewidth',2);
plot(xx,-(1-xx.^2).^0.5,'linewidth',2);
xlabel('x');ylabel('y');
title('Electric Field Lines');

%%

figure(2)
x = linspace(-5,5,100);
y = linspace(-3,3,100);
[X,Y]=meshgrid(x,y);
p = (X.^2+Y.^2).^0.5;
Z = (Y).*(-1+1./(p.^2));
contourf(X,Y,Z,200)
xlabel('x');ylabel('y');
title('Potential Distribution');
%axis equal;

%%

figure(3)
x = linspace(-5,5,22);
y = linspace(-5,5,22);
[X,Y]=meshgrid(x,y);
p = (X.^2+Y.^2).^0.5;
Z = (-Y).*(-1+1./(p.^2));
[DX,DY] = gradient(Z);
hold on;
contour(X,Y,(X.*(1+p.^2))./(p.^2),10)
quiver(X,Y,DX,DY,'linewidth',2)
xx = linspace(-1,1,200);
plot(xx,(1-xx.^2).^0.5,'linewidth',2);
plot(xx,-(1-xx.^2).^0.5,'linewidth',2);
xlabel('x');ylabel('y');
title('Electric Field Lines and Vectors');
%surf(X,Y,Z)

%%

figure(4)
x = linspace(-1,1,16);
y = linspace(-1,1,16);
[X,Y]=meshgrid(x,y);
p = (X.^2+Y.^2).^0.5;
Z = (-Y).*(-1+1./(p.^2));
[DX,DY] = gradient(Z,0.2,0.2);
hold on;
contour(X,Y,(X.*(1+p.^2))./(p.^2),10)
quiver(X,Y,DX,DY,'linewidth',2)
xx = linspace(-1,1,200);
plot(xx,(1-xx.^2).^0.5,'linewidth',2);
plot(xx,-(1-xx.^2).^0.5,'linewidth',2);
xlabel('x');ylabel('y');
title('Electric Field Lines and Vectors');
%surf(X,Y,Z)
