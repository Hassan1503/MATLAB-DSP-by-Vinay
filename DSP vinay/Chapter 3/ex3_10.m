%conjugation of DTFT
n=0:100;
x=cos(pi*n/2); % frequency w .5
k=-200:200;
w=(pi/100)*k;
W=n'*w;
X=x*(exp(-1j.*W)); %DTFT of signal x
xc=conj(x)*(exp(-1j.*W));% DTFT of signal x conjugation
y=conj(fliplr(X)); %conjugation of DTFT signal x
error=max(abs(xc-y));