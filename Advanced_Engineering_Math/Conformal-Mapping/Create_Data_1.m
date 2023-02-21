function [ X , Y ] = Create_Data_1( f , str , Start , End , step )

if strcmpi(str,'x') == 1
    if End>Start
        X = Start:step:End;
        Y = f(X);
    else
        X = Start:-step:End;
        Y = f(X);
    end
    if numel(Y)==1
        Y = ones(size(X))*Y;
    end

elseif strcmpi(str,'y') == 1
    if End>Start
        Y = Start:step:End;
        X = f(Y);
    else
        Y = Start:-step:End;
        X = f(Y);
    end
    if numel(X)==1
        X = ones(size(Y))*X;
    end
end
    
end

