figure(1);clf;surf(X,Y,Z,'Edgecolor','none');
alpha .7
xlabel('x')
ylabel('y')
xlim([xmin,xmax])
ylim([ymin,ymax])
zlim([min(Z(:)),max(Z(:))])
view(fig_view)