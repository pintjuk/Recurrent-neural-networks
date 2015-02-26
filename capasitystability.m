p = sgn(randn(300, 100))
stablepatterns=[];
stablefraction=[];
recaledfraction=[];
for i=1:300
    W=hebblern(p(1:i, :));
    W=W-diag(diag(W));
    numstable=0;
    numrecovered=0;
    for j=1:i
        if all(p(j,:)==recallonce(p(j,:), W))
            numstable=numstable+1;
        end
        
        if all(p(j,:)==recall(flip(p(j,:), 5), W))
            numrecovered=numrecovered+1;
        end
    end
    stablepatterns=[stablepatterns; numstable];
    stablefraction=[stablefraction; numstable/i];
    recaledfraction=[recaledfraction; numrecovered/i];
end
subplot(2, 4, 1)
plot(1:300, stablefraction)
subplot(2, 4, 2)
plot(1:300, recaledfraction)
subplot(2, 4, 3)
plot(1:300, stablepatterns)