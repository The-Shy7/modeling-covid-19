% SIR model with 1 infected r0=2.6

N = 59170000; % population of Hubei Province
I = 1; % infected
R = 0; % recovered
S = N - I - R; % susceptible 
s = S/N; % the susceptible fraction of the population
i = I/N; % the infected fraction of the population
r = R/N; % the recovered fraction of the population
props = [s i r];
[t,x] = ode45('r26', [0 365], props);
plot(t,N*x,'LineWidth',2);
title('SIR Vaccine Model of COVID-19 with I = 1 and R_0 = 2.6','FontSize',18);
xlabel('Days','FontSize',15); 
xlim([0 365]);
xticks(0:20:365);
ylim([0 60000000]);
yticks(0:10000000:60000000);
legend('S','I','R','Location','best');