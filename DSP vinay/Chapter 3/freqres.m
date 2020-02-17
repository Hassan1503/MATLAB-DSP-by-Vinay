function H=freqres(b,a,w)
% Frequency response function from difference equation
% H=freqresp(b,a,w)
% H=frequensy response array evaluate  at w frequencies
% b=numerator coefficient array
% a=denominator coefficient array (a(1)=1)
% w=frequency location array

m=0:length(b)-1;
l=0:length(a)-1;
al=a*exp(-1j*l'*w);
bm=b*exp(-1j*m'*w);
H=bm./al;
end