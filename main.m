
x1=vm([0 0 1 0 1 0 0 1])
x2=vm([0 0 0 0 0 1 0 0])
x3=vm([0 1 1 0 0 1 0 1])

W=hebblern([x1; x2; x3])

res=recall([0 0 1 0 0 0 0 1], W);

all=alllists(8);
atractors=[];
for i = 1:2^8
    atractors=[atractors; t0(recall(vm(all(i,:)), W))];
end
uniqueatarcators=unique(atractors, 'rows')
size(uniqueatarcators)

% 24 unique atractors
t0(res);


t0(recall([1 1 1 1 1 1 1 1 ], W))