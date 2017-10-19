hfig=figure(1);clf;
hfig_w=1000; hfig_h=hfig_w/2;
hfig.Position(1)=hfig.Position(1)-(hfig_w-hfig.Position(3))/2;
hfig.Position(2)=hfig.Position(2)-(hfig_h-hfig.Position(4));
hfig.Position(3)=hfig_w;
hfig.Position(4)=hfig_h;

subplot(1,2,1)
surf(X,Y,Z,'Edgecolor','none');
alpha .7
xlabel('x')
ylabel('y')
xlim([xmin,xmax])
ylim([ymin,ymax])
zlim([min(Z(:)),max(Z(:))])
view(fig_view)
hold on
plot3(x0,y0,J(x0,y0),'o', 'Markersize', 5, 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'none')
plot3(xopt,yopt,zopt, 'o', 'Markersize', 10, 'MarkerFaceColor', 'y', 'MarkerEdgeColor', 'none')

subplot(1,2,2)
contour(X,Y,Z,30);
xlabel('x')
ylabel('y')
xlim([xmin,xmax])
ylim([ymin,ymax])
view([fig_view(1),90])
hold on