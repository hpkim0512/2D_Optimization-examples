% Rosenbrock function
% J(x,y) = 100(y-x^2)^2 + (x-1)^2
J = @(x,y) 100*(y - x.^2).^2 + (x - 1).^2;
Jx= @(x,y) -400*x.*(y - x.^2) + 2*(x - 1);
Jy= @(x,y) 200*(y - x.^2);
xopt=1; yopt=1; zopt=0;
xmin = -2; xmax = 2;
ymin = -1; ymax = 3;
x0=-1.6; y0=2.7;
fig_view=([156,6]);