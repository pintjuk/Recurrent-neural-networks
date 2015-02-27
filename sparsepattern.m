
for bias = 1:70
	npixels = 100;
	maxrecall = 0;
	for npatterns = 1:50
		Patterns = -ones(npatterns, npixels);
		for i = 1:npatterns
			Patterns(i, :) = flip(Patterns(i, :), 0.1 * npixels);
		end

		Patterns = t0(Patterns);
		Weights = hebblernb(Patterns);
		nrecalled = 0;
		for p = 1:npatterns
			Pattern = Patterns(p, :);
			Recalled = recallb(Pattern, Weights, bias);
			canberecalled = all(Recalled == Pattern);
			nrecalled = nrecalled + canberecalled;
		end
		nrecalled;
		maxrecall = max(maxrecall, nrecalled);
	end
	maxrecall
	fflush(stdout)
end