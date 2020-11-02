function dx = seir26(t, x)
    dx = [0; 0; 0; 0]; % s e i r 
    r0 = 2.6;
    gamma = 1/18; % recovery rate
    beta = r0*gamma; % infection rate
    sigma = 1/(5.2);
    v = (.42*.298)/365;
    dx(1) = (-beta * x(1) * x(3)) - (v * x(1));
    dx(2) = beta * x(1) * x(3) - (sigma * x(2));
    dx(3) = sigma * x(2) - gamma * x(3);
    dx(4) = (gamma * x(3)) + (v * x(1));
end