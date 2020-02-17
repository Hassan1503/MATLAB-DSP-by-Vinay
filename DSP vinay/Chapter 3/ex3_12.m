% Symmetry of DTFT
n=-5:10;
m=100;
x=sin(pi*n/2);
W=n'*((pi/m)*(-m:m));
[xe,xo,xm]=evenodd(x,n);
X=x*(exp(-1j*W));
W=xm'*((pi/m)*(-m:m));
xe=xe*(exp(-1j*W));
xo=xo*(exp(-1j*W));
e1=max(abs(xe-real(X)));
e2=max(abs(xo-1i*imag(X)));

%in plot function imaginary value ignored
subplot(2,2,1)
plot(w/pi,real(X))%real value of DTFT
title('real part of X')
subplot(2,2,3)
plot(w/pi,real(xe))%DTFT of even part of the signal x
title('even part of signal x')
subplot(2,2,2)
plot(w/pi,imag(X))%imaginary value of DTFT
title('imag part of X')
subplot(2,2,4)
plot(w/pi,imag(xo))%DTFT of odd part of the signal x
title('odd part of signal x')