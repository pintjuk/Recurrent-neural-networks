function [ new ] = recall( Patern, Wights )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    
    [IGNOR, N]=size(Patern);
    old=0;
    new=Patern;
    while ~all(old==new)
    	old=new;
        for i = 1:N
            new(i)=sgn(old*Wights(:, i));
        end
    end
end

