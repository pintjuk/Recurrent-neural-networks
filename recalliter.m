function [ new ] = recalliter( Patern, Wights, toshow)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    
    [IGNOR, N]=size(Patern);
    old=0;
    new=Patern;
    while true
        for i = 1:N
            old=new;
            new(i)=sgn(old*Wights(:, i));
        end
        pause(10);
        vis(toshow);
    end
end
