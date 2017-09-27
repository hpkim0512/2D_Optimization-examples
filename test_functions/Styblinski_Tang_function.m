% Styblinski-Tang function
% J(x,y) = (x^4-16x^2+5x^2 +y^4-16y^2+5y)/2
J = @(x,y) (x.^4 - 16*x.^2 + 5*x + y.^4 - 16*y.^2 + 5*y)/2;
Jx= @(x,y) (4*x.^3 - 32*x + 5)/2;
Jy= @(x,y) (4*y.^3 - 32*y + 5)/2;
xopt=-2.903534; yopt=-2.903534; zopt=-39.166165*2;
xmin = -5; xmax = 5;
ymin = -5; ymax = 5;
x0=.157; y0=.157;
fig_view=([94,64]);