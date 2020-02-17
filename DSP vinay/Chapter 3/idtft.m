% compute discrete time fourier transform
% X=dtft(DSInT,samples,K)
% X=dtft values computed at w frequencies
% x=finite duration sequence over n
% n=sample position vector
% w=frequency location vector

function [x,samples]=idtft(DSIF,samples,frequency)
% K=500;
% k=-K:K;
% frequency=(k/K)*pi;
dw=abs(frequency(1)-frequency(2));
% dw=abs(samples(1)-samples(2));
x=(DSIF*exp(1j*(frequency'*samples))*dw)/(2*pi);
x(length(samples))=x(length(samples)-1); %truncat last sample
% x(length(samples))=mean(real(x(length(samples)-1)):real(x(length(samples))-5));
end