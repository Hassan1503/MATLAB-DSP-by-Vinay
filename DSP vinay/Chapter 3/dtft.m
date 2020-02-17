% compute discrete time fourier transform
% X=dtft(DSInT,samples,K)
% X=dtft values computed at w frequencies
% x=finite duration sequence over n
% n=sample position vector
% w=frequency location vector

function [X,frequency]=dtft(DSIT,sample,frequency)
% K=500;
% k=-K:K;
% frequency=(k/K)*pi;
X=DSIT*exp(-1j*(sample'*frequency));
X(length(frequency))=X(length(frequency)-1);
end