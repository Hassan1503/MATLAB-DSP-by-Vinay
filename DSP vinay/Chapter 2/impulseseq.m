function [y,n]= impulseseq(starting_point,ending_point,n0)
% IMPULSESEQ 
%   [y,n]= impulseseq(starting_point,ending_point,n0)
%
n=starting_point:ending_point;
y=[(n-n0)==0];
end