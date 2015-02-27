pict;
subplot(3, 1, 1)
vis(p2)
Weights = hebblern([p1; p2; p3]);
subplot(3, 1, 2)
vis(p22)
subplot(3, 1, 3)
vis(recalliter(p22, Weights));
