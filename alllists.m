function [ Lists ] = alllists( N )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    Lists=zeros(1, N)
    for i= 1:(2^N)-1
        Lists=[Lists; isspace(strrep(dec2bin(i, N), '1', ' '))];
    end
end

