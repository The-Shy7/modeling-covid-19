% SEIR model with 1 infected 

N = 59170000; % population of Hubei Province
I = 1; % reported number of infected
E = 20; % number of exposed
R = 0; % reported number of recovered
S = N - I - R - E; % estimated number of susceptible 
s = S/N; % the susceptible fraction of the population
i = I/N; % the infected fraction of the population
r = R/N; % the recovered fraction of the population
e = E/N;
props = [s e i r];
[t,x] = ode45('seir', [0 365], props);
plot(t,N*x,'LineWidth',2);
title('SEIR Vaccine Model of COVID-19 with I = 40 and R_0 = 2.28','FontSize',18);
xlabel('Days','FontSize',15); 
xlim([0 365]);
xticks(0:20:365);
ylim([0 60000000]);
yticks(0:10000000:60000000);
legend('S','E','I','R','Location','best');