gx=Jx(x_old,y_old);
gy=Jy(x_old,y_old);
G(1)=G(1)+gx^2;
G(2)=G(2)+gy^2;
x_new=x_old-learning_rate*gx/sqrt(G(1)+eps);
y_new=y_old-learning_rate*gy/sqrt(G(2)+eps);