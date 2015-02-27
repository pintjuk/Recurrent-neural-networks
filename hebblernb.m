function [Weights] = hebblernb(Pattern)
	[N, h] = size(Pattern);
    p = sum(sum(Pattern)) / (h * N);
    
    Weights = zeros(h);
    for i = 1:N
        Wdelta = (Pattern' - p) * (Pattern - p);
        Weights = Weights + Wdelta;
    end
    Weights = Weights - diag(diag(Weights));
end

