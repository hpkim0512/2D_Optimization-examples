% Matyas function
% J(x,y) = 0.26(x^2+y^2) - 0.48xy
J = @(x,y) 0.26*(x.^2 + y.^2) - 0.48*x.*y;
Jx= @(x,y) 0.52*x - 0.48*y;
Jy= @(x,y) 0.52*y - 0.48*x;
xopt=0; yopt=0; zopt=0;
xmin = -10; xmax = 10;
ymin = -10; ymax = 10;
x0=-9; y0=3;
fig_view=([-45,25]);