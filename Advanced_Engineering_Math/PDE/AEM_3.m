clc;
clear;
close all;
% By Hamidreza Sanati Ghazani
% Stu_id : 140051411058
% Tel_id : @hamid_sg
% Email  : hamidrezaghazani1382@gmail.com

%%
%By Hamidreza Sanati Ghazani
figure(2)
%x = linspace(-5,5,100);
y = [-5:0.05:5];
z = [-3:0.05:3];
[Y,Z]=meshgrid(y,z);
%Z = ones(size(X));
R = (Y.^2+Z.^2).^0.5;
V = -(R+(-1/4)*1./(R.^2)).*(Z./R);
contourf(Y,Z,V,[-5:0.1:5])
xlabel('y');ylabel('z');
title('Potential Distribution');
%axis equal;
pos = [-1,-1,2,2];
rectangle('position',pos,'curvature',[1,1],'facecolor',[1,1,1]);
hold on;
%x = linspace(-5,5,100);
r = linspace(0,1,10);
t = linspace(0,2*pi,100);
[r,t]=meshgrid(r,t);
%Z = ones(size(X));
V = -(3/4)*r.*cos(t);
contourf(r.*sin(t),r.*cos(t),V,[-5:0.1:5])
%axis equal;
%%
figure(3)
%x = linspace(-5,5,100);
y = [-2.5:0.05:2.5];
z = [-1.5:0.05:1.5];
[Y,Z]=meshgrid(y,z);
%Z = ones(size(X));
R = (Y.^2+Z.^2).^0.5;
V = (((R.^3-2*(-1/4))./(R)).^0.5).*(Y./R);
contourf(Y,Z,V,-5:0.1:5)
xlabel('y');ylabel('z');
title('Electric Field Lines');
%axis equal;

pos = [-1,-1,2,2];
rectangle('position',pos,'curvature',[1,1],'facecolor',[1,1,1]);
hold on;

%x = linspace(-5,5,100);
r = linspace(0,1,10);
t = linspace(0,2*pi,100);
[r,t]=meshgrid(r,t);
%Z = ones(size(X));
V = -r.*sin(t);
contourf(r.*sin(t),r.*cos(t),V,[-5:0.1:5])
%axis equal;

