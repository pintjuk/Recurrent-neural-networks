pict
subplot(3, 1, 1)
vis(p1)
subplot(3, 1, 2)
vis(p11)
W = hebblern([p1; p2; p3]);
subplot(3, 1, 3)
vis(recall(p11, W))