n=-1:3; %indices of signal
m=5000; % number samples in [0,pi]
w=0:m; % frequency sequence
x=1:5; %Signsl
% X   = x * W
%1x501=1x5 5x501
 X=x*exp(-1j*pi/m).^(n'*w); %DTFT of finite signal x
p=w/pi; 
subplot(2,2,1)
plot(p,real(X))
title('real value')
ylabel('real value')
xlabel('frequency in pi')
subplot(2,2,2)
plot(p,imag(X))
title('imaginery value')
subplot(2,2,3)
plot(p,abs(X))
title('magnitude')
subplot(2,2,4)
plot(p,angle(X))
title('angle in radian')