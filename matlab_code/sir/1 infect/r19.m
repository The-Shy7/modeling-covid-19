function dx = r19(t, x)
    dx = [0; 0; 0];
    r0 = 1.9;
    gamma = 1/18; % recovery rate
    beta = r0*gamma; % infection rate
    dx(1) = -beta * x(1) * x(2);
    dx(2) = beta * x(1) * x(2) - gamma * x(2);
    dx(3) = gamma * x(2);
end
