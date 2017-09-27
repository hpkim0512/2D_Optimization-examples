% Booth's function
% J(x,y) = (x+2y-7)^2 + (2x+y-5)^2
J = @(x,y) (x + 2*y -7).^2 + (2*x + y - 5).^2;
Jx= @(x,y) 2*(5*x + 4*y - 17);
Jy= @(x,y) 2*(4*x + 5*y - 19);
xopt=1; yopt=3; zopt=0;
xmin = -10; xmax = 10;
ymin = -10; ymax = 10;
x0=1; y0=-9;
fig_view=([179,33]);