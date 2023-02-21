clc;
clear;
close all;
% By Hamidreza Sanati Ghazani
% Stu_id : 140051411058
% Tel_id : @hamid_sg
% Email  : hamidrezaghazani1382@gmail.com

%% Program Start
waitfor(helpdlg('Hi! This Is A Program For Conformal Mapping!'))
opts =struct('WindowStyle','modal','Interpreter','tex','Resize','on');
h1 = menu('Choose Type Of Describe Of Zone:','Enter Each Bound''s Function','Enter Bound''s Data');
if h1 == 1
    h2 = menu('Choose Type Of Zone:','Limited Area','Unlimited Area');
    if h2 == 1
        %% Receiving Bounds Function For Limited Area
        NOB = inputdlg('Enter Number Of Bounds:','Bounds Num',1,{'2'},opts);
        NOB = str2num(NOB{:});
        
        promt  = cell(NOB,5);
        defans = cell(NOB,5);
        for k = 1:NOB
                promt{k,1} = ['Function',num2str(k)];
                promt{k,2} = 'Variable';
                promt{k,3} = 'Var''s Start';
                promt{k,4} = 'Var''s End';
                promt{k,5} = 'Step';
                defans{k,1}= '@(x) ';
                defans{k,2}= 'x';
                defans{k,3}= '0';
                defans{k,4}= '1';
                defans{k,5}= '0.001';
        end
        answer_1 = inputdlgcol(promt,'Area Data',1,defans,opts,5);
        answer_1 = reshape(answer_1,NOB,5);
        for k = 1:NOB
            answer_1{k,1} = str2func(answer_1{k,1});
            answer_1{k,3} = str2num(answer_1{k,3});
            answer_1{k,4} = str2num(answer_1{k,4});
            answer_1{k,5} = str2num(answer_1{k,5});
        end
        
        for k = 1:NOB
            Funcs{k,1} = {answer_1{k,1:5}};
        end
        %% Creating Data Vectors
        W = {};
        for k = 1:NOB
            W{k} = [];
        end
        k0=1;
        for k = 1:NOB
            [W{k0:k0+1}] = Create_Data_1(Funcs{k}{:});
            k0 = k0 + 2;
        end

        %% Creating Unsorted Data For Observe
%         xd = [];
%         for k = 1:2:(2*NOB)
%             xd = [xd,W{k}];
%         end
%         yd = [];
%         for k = 2:2:(2*NOB)
%             yd = [yd,W{k}];
%         end
%         figure(1)
%         plot(xd,yd)

        %% Sorting Data Vectors
        k0=1;
        for k = 1:(NOB-1)
            [W{k0},W{k0+2}]= Sort_Data_1(W{k0},W{k0+2});
            k0 = k0 + 2;
        end

        k0=2;
        for k = 1:(NOB-1)
            [W{k0},W{k0+2}]= Sort_Data_1(W{k0},W{k0+2});
            k0 = k0 + 2;
        end 

        %% Creating xdata & ydata
        xd = [];
        for k = 1:2:(2*NOB)
            xd = [xd,W{k}];
        end
        yd = [];
        for k = 2:2:(2*NOB)
            yd = [yd,W{k}];
        end
        figure(2)
        plot(xd,yd)
        xlabel('X');ylabel('Y');
        figure(3)
        fill(xd,yd,'b');
        xlabel('X');ylabel('Y');
        
        %% Mapping
        while(1)
            promt = 'Enter Mapping Function';
            defans = {'@(z)  '};
            answer_2 = inputdlgcol(promt,'Mapping',1,defans,opts,1);
            Map_func = str2func(answer_2{:});
            z = xd + j*yd;
            w = Map_func(z);
            u = real(w);
            v = imag(w);
            figure(4)
            xlabel('U');ylabel('V');hold on;
            waitfor(fill(u,v,'r'));
            h3 = menu('Do You Want To Continue?','Yes','No');
            if h3 == 2
                break;
            end
        end
        
        
        
        
    else
        warndlg('Please Use Limited Area Section With Caution!');
    end
    
    
else
    x_Data = inputdlg('Enter x Data Vector (With Space Between):','Data',1,{'0 1 2 3'},opts);
    y_Data = inputdlg('Enter y Data Vector (With Space Between):','Data',1,{'0 1 2 3'},opts);
    xd = str2num(x_Data{:});
    yd = str2num(y_Data{:});
    figure(1)
    plot(xd,yd,'>','markerfacecolor','y','markeredgecolor','b','markersize',10);
    xlabel('X');ylabel('Y');
    while(1)
            promt = 'Enter Mapping Function';
            defans = {'@(z)  '};
            answer_2 = inputdlgcol(promt,'Mapping',1,defans,opts,1);
            Map_func = str2func(answer_2{:});
            z = xd + j*yd;
            w = Map_func(z);
            u = real(w);
            v = imag(w);
            figure(2)
            xlabel('U');ylabel('V');hold on;
            waitfor(plot(u,v,'*r','markersize',10));
            h3 = menu('Do You Want To Continue?','Yes','No');
            if h3 == 2
                break;
            end
     end
    
    

end
