gx=Jx(x_old,y_old);
gy=Jy(x_old,y_old);
E(1)=gamma*E(1)+(1-gamma)*gx^2;
E(2)=gamma*E(2)+(1-gamma)*gy^2;
x_new=x_old-learning_rate*gx/sqrt(E(1)+eps);
y_new=y_old-learning_rate*gy/sqrt(E(2)+eps);