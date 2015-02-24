function [ Wights ] = hebblern( Paterns )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

    
    [N, h]=size(Paterns);
    Wights=zeros(h);
    for i = 1:N
        Wdelta=Paterns'*Paterns;
        Wights=Wights+Wdelta;
    end
    
    Wights=Wights/N;
end

