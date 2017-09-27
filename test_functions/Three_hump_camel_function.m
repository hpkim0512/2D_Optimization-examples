% Three-hump camel function
% J(x,y) = 2x^2 - 1.05x^4 + x^6/6 + xy + y^2
J = @(x,y) 2*x.^2 - 1.05*x.^4 + x.^6/6 + x.*y + y.^2;
Jx= @(x,y) 2*(5*x + 4*y - 17);
Jy= @(x,y) 2*(4*x + 5*y - 19);
xopt=0; yopt=0; zopt=0;
xmin = -5; xmax = 5;
ymin = -5; ymax = 5;
x0=5; y0=3.1;
fig_view=([-13,17]);