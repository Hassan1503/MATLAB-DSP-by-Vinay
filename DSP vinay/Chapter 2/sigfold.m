function [y,n] = sigfold(signal,index)
%  SIGFOLD y(n)=x(-n)
% 
% signal folding
%%
% 
%   [y,n] = sigfold(signal,index)
%
%% 
% 
y=fliplr(signal);
n=-fliplr(index);
end