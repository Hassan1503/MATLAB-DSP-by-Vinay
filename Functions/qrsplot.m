% Example:- qrsplot(ECGsignal,Q_locs,R_locs,S_locs,riseTime,fallTime,riseLevel,fallLevel)
% ECgsignal=Filter signal of ECG
% Q_locs=Location array of Q peaks
% R_locs=Location array of R peaks
% S_locs=Location array of S peaks
% riseTime=Average rise time(Time between peak Q and R peak) of filter signal of ECG
% fallTime=Average fall time(Time between peak R and S peak) of filter signal of ECG
% riseLevel=Average rise Level(Value between peak Q and R peak) of filter signal of ECG
% fallLevel=Average fall Level(Value between peak R and S peak) of filter signal of ECG

function []=qrsplot(ECGsignal,Q_locs,R_locs,S_locs,riseTime,fallTime,riseLevel,fallLevel)
% ECGsignal=ECGsignal;
t=min(Q_locs)-50:50+min(S_locs);
qrsecg=ECGsignal(t(1):t(end));
%find text position in figure
%Vertical Position in figure
avgqr=mean((ECGsignal(Q_locs)+ECGsignal(R_locs))/2);
avgrs=mean((ECGsignal(S_locs)+ECGsignal(R_locs))/2);

%Horizontal pPosition in figure
avg0q=(t(1)+Q_locs(1))/2;
avgqs=(Q_locs(1)+S_locs(1))/2;

% Figure text
riseLeveltext=strcat('Avg. Rise Level= ',num2str(riseLevel));
fallLeveltext=strcat('Avg. Fall Level= ',num2str(fallLevel));
riseTimetext=strcat('Avg. Rise Time= ',num2str(riseTime));
fallTimetext=strcat('Avg. Fall Time= ',num2str(fallTime));
% Plot
plot(t,qrsecg) 
hold on
grid on
plot(Q_locs(1),ECGsignal(Q_locs(1)),'rs','MarkerFaceColor','r')
plot(R_locs(1),ECGsignal(R_locs(1)),'mv','MarkerFaceColor','m')
plot(S_locs(1),ECGsignal(S_locs(1)),'gs','MarkerFaceColor','g')
title('QRS Complex')
xlabel('Samples')
ylabel('Voltage(mV)')

% figure text
text(Q_locs(1)-43,avgqr,riseLeveltext)
text(S_locs(1)-8,avgrs,fallLeveltext)
text(avg0q,ECGsignal(Q_locs(1))-0.2,riseTimetext)
text(avgqs,ECGsignal(S_locs(1))-0.1,fallTimetext)
legend('QRS Complex')

% figure axis limit
xlim([min(t) max(t)])
ylim([min(ECGsignal)-0.2 max(ECGsignal)+0.2])
hold off
end