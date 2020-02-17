%  frequency shifting
n=0:100;
x=cos(pi*n/2); % frequency w .5
k=-200:200;
w=(pi/100)*k;
W=n'*w;
X=x*(exp(-1j.*W));

y=exp(-1j*pi*(n/4)).*x; %frequency w0 0.25
Y=y*(exp(-1j*pi/100)).^(n'*k);% if exp(+/- j) frequency right/left shifted by 0.25pi
subplot(2,1,1)
plot(w/pi,abs(X))
% xlim([-1.00 1.50])
ylim([0 60])
subplot(2,1,2)
plot(w/pi,abs(Y))
% xlim([-1.00 1.50])
ylim([0 60])