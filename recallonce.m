function [ new ] = recallonce( Patern, Wights )
    [IGNOR, N]=size(Patern);
    for i = 1:N
        new(i)=sgn(Patern*Wights(:, i));
    end
end