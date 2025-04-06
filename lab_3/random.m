clc
clear
N = 100; % or 2000;
T = rand(1, N);
P = rand(1, N);

net=newff(minmax(P),[21,15,1],{'logsig','logsig','purelin'},'trainlm');
net.performFcn='sse';
net.trainParam.goal=0.01;
net.trainParam.epochs=200;
[net,tr]=train(net,P,T);

y=sim(net,P); 
[mC,bC,r]=postreg(y(1,:),T(1,:));
fprintf('коэффициент регрессии для сети: %d\n', r);

