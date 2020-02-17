function [y,n]=dnsample(signal,index,factor)
% DNSAMPLE 
%   [y,n]=dnsample(signal,index,factor)
%
% signal=[-2,4,3,-6,5,-1,8]
% index=1:length(signal)
% factor=2
n=min(index)/factor:(max(index)/factor)
y=downsample(signal,factor);
end