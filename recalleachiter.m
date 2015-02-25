function [ Pattern ] = recalleachiter( Pattern, Wights)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    
    [IGNORE, N] = size(Pattern);
    e = [];
    while true
        k = 0;
        for i = randperm(N)
            Pattern(i) = sgn(Pattern*Wights(:, i));
            k = k + 1;
            if mod(k, 100) == 0
                pause(4);
                subplot(2, 1, 1)
                vis(Pattern);
                subplot(2, 1, 2);
                plot(1:size(e), e);
            end
            e = [e; energy(Pattern, Wights)]
        end
    end
end