pict
p=[p1; p2; p3; p4; p5; p6; p7; p8; p9]
e100=[]
e200=[]
e300=[]
for i= 3:9
    W=Hebbilern(p[1:i])
    totest1=flip(p1, 100);
    totest2
    totest3
    result=recall(totest, W);
    error=sum(result==p3);
    elist=[elist; error];
for 4:9