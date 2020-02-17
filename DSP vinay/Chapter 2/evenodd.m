function [xe,xo,m]=evenodd (signal,index)
%  IEVENODD here we have to take any discrete value of index

signal1=signal; % make signal to fold the signal 
if any(imag(signal1)~=0) % check the imaginary value of signal
    signal1=conj(signal1);
end
[xf,mf]=sigfold(signal1,index);
xe=sigadd(signal,index,xf,mf);
xe=0.5.*xe;
[xo,m]=sigadd(signal,index,-xf,mf);
xo=0.5*xo;
% subplot(1,3,1)
% stem(index,signal)
% title('Orginal Signal')
% subplot(1,3,2)
% stem(ne,xe)
% title('even part')
% subplot(1,3,3)
% stem(m,xo)
% title('odd part')
end