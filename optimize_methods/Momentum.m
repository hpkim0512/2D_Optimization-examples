v0(1)=gamma*v0(1)+learning_rate*Jx(x_old,y_old);
v0(2)=gamma*v0(2)+learning_rate*Jy(x_old,y_old);
x_new=x_old-v0(1);
y_new=y_old-v0(2);