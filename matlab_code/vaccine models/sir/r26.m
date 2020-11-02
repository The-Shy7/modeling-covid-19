function dx = r26(t, x)
    dx = [0; 0; 0];
    r0 = 2.6;
    gamma = 1/18; % recovery rate
    beta = r0*gamma; % infection rate
    v = 0.097;
    dx(1) = (-beta * x(1) * x(2)) - v;
    dx(2) = beta * x(1) * x(2) - gamma * x(2);
    dx(3) = (gamma * x(2)) + v;
end
