% Testing stability of SEIR model 

N = 59170000; % population of Hubei Province
I = 40; % estimated intial number of infected
E = 20*I; % estimated number of exposed
R = 0; % number of recovered
r0 = 3.1; % reproductive number
gamma = 1/18; % recovery rate
beta = r0*gamma; % exposure rate
s = gamma / beta; % the susceptible fraction of the population
e = E/N; % the exposed fraction of the population
i = I/N; % the infected fraction of the population
r = 1 - e - i - (gamma / beta); % the recovered fraction of the population
props = [s e i r];
[t,x] = ode45('seir', [0 365], props);
plot(t,N*x,'LineWidth',2);
title('Stability of SEIR with I = 40 and R_0 = 0.5','FontSize',18);
xlabel('Days','FontSize',15); 
xlim([0 365]);
xticks(0:20:365);
ylim([0 60000000]);
yticks(0:10000000:60000000);
legend('S','E','I','R','Location','best');