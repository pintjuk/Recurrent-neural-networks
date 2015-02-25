function [ Pattern ] = recalleachiter( Pattern, Wights)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    
    [IGNORE, N] = size(Pattern);
    while true
        for i = randperm(N)
            Pattern(i) = sgn(Pattern*Wights(:, i));
        end
        pause(0);
        vis(Pattern);
    end
end