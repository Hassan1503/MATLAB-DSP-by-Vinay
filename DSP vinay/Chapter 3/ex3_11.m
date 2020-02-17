%folding property of DTFT
n=-5:10;
k=-100:100;
w=(pi/100)*k;
x=rand(1,length(n)); %sgnal
W=n'*w;
X=x*(exp(-1j*W)); %DTFT of signal
yc=fliplr(X); %folding the DTFT of signal x
[x,n]=sigfold(x,n); % fold the signal x
W=n'*w;
X=x*(exp(-1j*W)); %DTFT the folding signal x

error=max(abs(X-yc))