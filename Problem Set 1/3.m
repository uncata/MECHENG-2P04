F_1 = 400;
F_2 = 400;

F_1x = F_1.*sind(35).*cosd(20);
F_1y = -F_1.*sind(35)*sind(20);
F_1z = F_1.*cosd(35);

F_2x = F_2.*cosd(45);
F_2y = F_2.*cosd(60);
F_2z = F_2.*cosd(120);

F_Rx = F_1x + F_2x;
F_Ry = F_1y + F_2y;
F_Rz = F_1z + F_2z;
F_R = sqrt(F_Rx.^2 + F_Ry.^2 + F_Rz.^2);

theta_1R = acosd((F_1x.*F_Rx + F_1y.*F_Ry + F_1z.*F_Rz)./(F_1.*F_R)); 

quiver3(0,F_1x,F_1y,F_1z,'k')
text(F_1x,F_1y,F_1z,['F_1 = ', num2str(F_1), ' N'])

disp(theta_1R)
hold on

quiver3(0,F_2x,F_2y,F_2z,'k')
text(F_2x,F_2y,F_2z,['F_2 = ', num2str(F_2), ' N'])

quiver3(0,F_Rx,F_Ry, F_Rz,'r')
text(F_Rx,F_Ry,F_Rz,['F_R = ', num2str(F_R), ' N'])
text(200,-20,100,[num2str(theta_1R), ' deg'])

hold off

title('3.')
xlabel('x')
ylabel('y')
zlabel('z')
view(135, 30);