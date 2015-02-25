pict
W=hebblern([p1; p2; p3]);
elist=[];
for i = 1:1024
    totest=flip(p3, i);
    result=recall(totest, W);
    error=sum(result==p3);
    elist=[elist; error];
end
plot(1:1024, elist);