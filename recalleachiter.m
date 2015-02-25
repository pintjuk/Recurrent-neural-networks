function [ Pattern ] = recalleachiter( Pattern, Wights)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    
    [IGNORE, N] = size(Pattern);
    
    while true
        k = 0;
        for i = randperm(N)
            Pattern(i) = sgn(Pattern*Wights(:, i));
            k = k + 1;
            if mod(k, 100) == 0
                pause(4);
                vis(Pattern);
            end
        end
    end
end