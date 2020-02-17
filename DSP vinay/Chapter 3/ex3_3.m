a=1000;
w=(0:1:a)*pi/a; %to plot x(w) consider only half period [0 pi] when x(n) is infinite duration
X=exp(1i*w)./(exp(1j*w)-0.5); % X(w)
p=w/pi; %w divided by pi due to making the frequency unit in pi
subplot(2,2,1)
plot(p,real(x))
title('real value')
ylabel('real value')
xlabel('frequency in pi')
subplot(2,2,2)
plot(p,imag(x))
title('imaginery value')
subplot(2,2,3)
plot(p,abs(x))
title('magnitude')
subplot(2,2,4)
plot(p,angle(x))
title('angle in radian')