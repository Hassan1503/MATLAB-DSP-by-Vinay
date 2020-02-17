
% Plot function of Discrete fourier signal(X)
%     4 plots
% 1. Real value of X
% 2. Imaginary value of X
% 3. Magnitude value of X
% 4. Angle value of X in pi unit
function []=dfp4(X,w)
subplot(2,2,1)
plot(w/pi,real(X))
title('Real value of the X(e^j^w)')
xlabel('Frequency in pi unit')
ylabel('Real value')
subplot(2,2,2)
plot(w/pi,imag(X))
title('Imaginary value of the X(e^j^w)')
xlabel('Frequency in pi unit')
ylabel('Imaginary value')
subplot(2,2,3)
plot(w/pi,abs(X))
title('Magnitude value of the X(e^j^w)')
xlabel('Frequency in pi unit')
ylabel('Magnitude')
subplot(2,2,4)
plot(w/pi,angle(X)/pi)
title('Phase value of the X(e^j^w)')
xlabel('Frequency in pi unit')
ylabel('Phase in pi unit')
end