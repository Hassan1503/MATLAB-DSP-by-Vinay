function [y,n]= unitseq(starting_point,ending_point,n0)
% UNITSEQ 
%   [y,n]= unitseq(starting_point,ending_point,n0)
%
% n0 positive for unit signal start from negative index/left shift
% n0 negative for unit signal start from positive index/right shift
n=starting_point:ending_point;
y=[(n+n0)>=0];
end