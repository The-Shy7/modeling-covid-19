% SEIR model with WHO

N = 59170000; % population of Hubei Province
I = 67466; % reported number of infected
E = 20*I; % estimated number of exposed
R = 40592; % reported number of recovered
S = N - I - R - E; % estimated number of susceptible 
s = S/N; % the susceptible fraction of the population
i = I/N; % the infected fraction of the population
r = R/N; % the recovered fraction of the population
e = E/N; % the exposed fraction of the population
props = [s e i r];
[t,x] = ode45('seir', [0 365], props);
plot(t,N*x,'LineWidth',2);
title('SEIR Model of COVID-19 with WHO March 5th situation report (R_0 = 2.28)','FontSize',11);
xlabel('Days after March 5th, 2020','FontSize',15); 
xlim([0 365]);
xticks(0:20:365);
ylim([0 60000000]);
yticks(0:10000000:60000000);
legend('S','E','I','R','Location','best');