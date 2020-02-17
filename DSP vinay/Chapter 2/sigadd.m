function [y,n]=sigadd(signal1,index1,signal2,index2)
%  SIGADD add two different size signals
n=min(min(index1),min(index2)):max(max(index1),max(index2));
y1=zeros(1,length(n));
y2=y1;
y1(((n>=min(index1))&(n<=max(index1)))==1)=signal1;
y2(((n>=min(index2))&(n<=max(index2)))==1)=signal2;
y=y1+y2;
end