function [new] = recallb(Patern, Wights, Bias)
    [IGNORE, N] = size(Patern);
    old = 0;
    new = Patern;
    while ~all(old == new)
    	old = new;
        for i = 1:N
            new(i) = 0.5 + 0.5 * sgn(old * Wights(:, i));
        end
    end
end

