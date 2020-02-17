%%
% 
%   [y,n]=conv_i(signal1,index1,signal2,index2)
%

% must fold the signal to get the expect result using conv_i function

function [y,n]=conv_i(signal1,index1,signal2,index2)
y=conv(signal1,signal2);
n=min(index1)+min(index2):max(index1)+max(index2);
end