%%
% 
%   [y,n] = sigshift(signal,index,shift_value)
%


function [y,n] = sigshift(signal,index,shift_value)

n=index-shift_value;
y=signal;
end