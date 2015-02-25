pict
W = randn(1024, 1024);
W = 0.5 * (W + W');
p = randn(1, 1024);
figure
recalleachiter(p, W)