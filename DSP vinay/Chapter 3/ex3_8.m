% time shifting
x=rand(1,11);
n=0:10;
k=0:500;
w=pi/500*k;
W=n'*w;
X=x*(exp(-1j.*W))

y=x;
m=n+2;
Y=y*(exp(-1j.*(m'*w)))

Yc=X.*(exp((-1j*2).*w))

error=max(abs(Y-Yc))