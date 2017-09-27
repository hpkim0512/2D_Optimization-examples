gx=Jx(x_old,y_old);
gy=Jy(x_old,y_old);
Beta1=Beta1*beta1;
Beta2=Beta2*beta2;
m(1)=beta1*m(1)+(1-beta1)*gx;
m(2)=beta1*m(2)+(1-beta1)*gy;
M(1)=m(1)/(1-Beta1); M(2)=m(2)/(1-Beta1);

v(1)=beta2*v(1)+(1-beta2)*gx^2;
v(2)=beta2*v(2)+(1-beta2)*gy^2;
V(1)=v(1)/(1-Beta2); V(2)=v(2)/(1-Beta2);

x_new=x_old-learning_rate/sqrt(V(1)+eps)*M(1);
y_new=y_old-learning_rate/sqrt(V(2)+eps)*M(2);
