function [Xk] = dfs(DSIT,fundamentalPeriod)
%  DFS Computes discrete fourier series coefficient
% [Xk]=dfs(DSIT,fundamentalPeriod)
% Xk=DFS coefficient array over 0 <= k <= N-1
% DSIT=one period of periodic signal over 0 <= n <= N-1
% fundamentalPeriod= Fundamental period of DSIT   

sample=0:fundamentalPeriod-1;
frequency=0:fundamentalPeriod-1;
Xk=DSIT*exp(-1j*2*pi/fundamentalPeriod*(sample'*frequency));
% X(length(frequency))=X(length(frequency)-1);
end