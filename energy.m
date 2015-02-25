function [ energy ] = energy( X, W )
    energy = -X*W*X';
end

