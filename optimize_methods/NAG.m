% Nesterov accelerated gradient(NAG)
x_tmp=x_old-gamma*v0(1); y_tmp=y_old-gamma*v0(2);
v0(1)=gamma*v0(1)+learning_rate*Jx(x_tmp,y_tmp);
v0(2)=gamma*v0(2)+learning_rate*Jy(x_tmp,y_tmp);
x_new=x_old-v0(1);
y_new=y_old-v0(2);