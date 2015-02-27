function [new] = recallb(Patern, Wights, Bias)
    [IGNORE, N] = size(Patern);
    for i = 1:N
        new(i) = 0.5 + 0.5 * sgn(Patern * Wights(:, i) - Bias);
    end
end

