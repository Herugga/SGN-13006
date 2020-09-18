function [acc] = accuracy(c,te_labels )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
acc=sum(c'==te_labels)/length(c);

end

