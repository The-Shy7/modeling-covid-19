% SIR model with WHO and vaccine 

N = 59170000; % population of Hubei Province
I = 67466; % reported number of infected
R = 40592; % reported number of recovered
S = N - I - R; % estimated number of susceptible 
s = S/N; % the susceptible fraction of the population
i = I/N; % the infected fraction of the population
r = R/N; % the recovered fraction of the population
props = [s i r];
[t,x] = ode45('sirv', [0 365], props);
plot(t,N*x,'LineWidth',2);
title('SIR Model of COVID-19 with WHO March 5th situation report','FontSize',12);
xlabel('Days after March 5th, 2020','FontSize',15); 
xlim([0 365]);
xticks(0:20:365);
ylim([0 60000000]);
yticks(0:10000000:60000000);
legend('S','I','R','Location','best');