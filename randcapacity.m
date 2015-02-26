p1 = sgn(randn(1, 1024));
n = 200;

e100=[];
e200=[];
e300=[];
for i= 3:n
    W=hebblern(p(1:i,:));
    totest1=flip(p1, 100);
    totest2=flip(p1, 200);
    totest3=flip(p1, 300);
    result1=recall(totest1, W);
    result2=recall(totest2, W);
    result3=recall(totest3, W);
    error1=sum(result1==p1);
    error2=sum(result2==p1);
    error3=sum(result3==p1);
    e100=[e100; error1];
    e200=[e200; error2];
    e300=[e300; error3];
end
plot(3:n, e100, 3:n, e200, 3:n, e300)