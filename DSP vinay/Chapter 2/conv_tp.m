function [y,n,H]=conv_tp(h,x)
%  CONV_TP $$y=\mathrm{Hx}$$
% y=Hx
% y = output sequence
% H=Toeplitz matrix corresponding to h so that y=Hx
% h=impulse response sequence in colomn vector form
% x=input sequence in colomn vector form
hx=[h(1) zeros(1,length(x)-1)]; %make row vector by adding number of zero element with 1st element of h vector.
% hxx=zeros(1,(length(x)-1)); %make colomn vector by adding numbr zero element with h vector.
h=[h zeros(1,(length(x)-1))];
H=toeplitz(h,hx);
y=(H*x.')';
n=1:length(y);
end