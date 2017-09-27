if strcmp(optimizer,'Momentum')% || strcmp(optimizer,'NAG')
    v0=zeros(1,2);
elseif strcmp(optimizer, 'Adagrad')
    learning_rate=0.01;
    G=zeros(1,2);
elseif strcmp(optimizer,'RMSProp')% || strcmp(optimizer,'Adadelta')
    E=zeros(1,2);
elseif strcmp(optimizer,'Adam')
    Beta1=1; Beta2=1;
    eps=1e-8;
    m=zeros(1,2); M=zeros(1,2);
    v=zeros(1,2); V=zeros(1,2);
end
x_old=x0; y_old=y0;

run(sprintf('plot_cost_%s',plot_type))
hold on
plot3(xopt, yopt, zopt, 'o', 'Markersize', 10, 'MarkerFaceColor', 'y', 'MarkerEdgeColor', 'none')
for i=2:max_steps
    run(optimizer)
    dx = [x_old; x_new];
    dy = [y_old; y_new];
    dz = J(dx,dy);
    run(sprintf('plot3_%s',plot_type))
	title(i)
    drawnow
    x_old=x_new; y_old=y_new;
end
hold off