n=-5:5; %signal indices
x=(-0.9).^n;
m=100;
% k = (-2*m:2*m)
w=(pi/(m))*(-2*m:2*m);
W=n'*w;
X=x*(exp(-1j).^W);
% X1=x*(exp(-1j).^W)
figure(1)
subplot(2,1,1)
plot(w/pi,abs(X))
title('Magnitude of X')
xlabel('frequency in pi unit')
ylabel('magnitude')
axis tight
grid on
subplot(2,1,2)
plot(w/pi,angle(X)/pi)
title('Angle part')
xlabel('frequency in pi unit')
ylabel('radian/pi')
axis ([-2 2 -1 1])
grid on
figure(2)
% freqz([1 0.5],1,512,"whole")