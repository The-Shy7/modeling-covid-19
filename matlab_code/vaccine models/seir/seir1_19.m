% SEIR model with 1 infected 

N = 59170000; % population of Hubei Province
I = 1; % infected
E = 20; % exposed
R = 0; % recovered
S = N - I - R - E; % susceptible 
s = S/N; % the susceptible fraction of the population
i = I/N; % the infected fraction of the population
r = R/N; % the recovered fraction of the population
e = E/N;
props = [s e i r];
[t,x] = ode45('seir19', [0 465], props);
plot(t,N*x,'LineWidth',2);
title('SEIR Vaccine Model of COVID-19 with I = 1 and R_0 = 1.9','FontSize',18);
xlabel('Days','FontSize',15); 
xlim([100 465]);
xticks(100:20:465);
ylim([0 60000000]);
yticks(0:10000000:60000000);
legend('S','E','I','R','Location','best');