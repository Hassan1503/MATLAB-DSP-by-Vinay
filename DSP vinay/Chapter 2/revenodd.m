function [xe,xo,m]=revenodd (signal,index)
%  EVENODD here we have to take real discrete value of index
% 
% predefine square signal signal=[5,5,5,5,5,5,5,5,5,5,0] signal=signal./5 index=0:10; 
% predefine sin signal t=1:0.01:3 signal=sin(2*pi*t) index=1:length(signal)
if any(imag(signal)~=0) % check the real value of signal
    disp('Recommend to use evenodd function')
    error('This signal is not a real sequence. Signal value must be real')
    
end
[xf,mf]=sigfold(signal,index);
[xe,~]=sigadd(signal,index,xf,mf);
xe=0.5.*xe;
% [xfo,mfo]=sigfold(x,n);
[xo,m]=sigadd(signal,index,-xf,mf);
xo=0.5*xo;
% plot
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