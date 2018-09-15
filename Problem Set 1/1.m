F_1 = 50;
F_2 = 40;
F_3 = 60;

theta_1 = 50;
theta_2 = 60;
theta_3 = 25;

F_1x = -F_1.*sind(theta_1);
F_1y = -F_1.*cosd(theta_1);

F_2x = F_2.*cosd(theta_2);
F_2y = -F_2.*sind(theta_2);

F_3x = F_3.*cosd(theta_3);
F_3y = F_3.*sind(theta_3);

F_Rx = F_1x + F_2x + F_3x;
F_Ry = F_1y + F_2y + F_3y;
F_R = sqrt(F_Rx.^2 + F_Ry.^2);

disp(['F_1x = ', num2str(F_1x)]);
disp(['F_2x = ', num2str(F_2x)]);
disp(['F_3x = ', num2str(F_3x)]);
disp(' ');
disp(['F_1y = ', num2str(F_1y)]);
disp(['F_2y = ', num2str(F_2y)]);
disp(['F_3y = ', num2str(F_3y)]);
disp(' ');
disp(['F_R = ', num2str(F_R)]);

grid on
hold on

quiver(F_1x,F_1y, 'k')
text(F_1x,F_1y,['F_1 = ', num2str(F_1), ' N'])

quiver(F_2x,F_2y, 'k')
text(F_2x,F_2y,['F_2 = ', num2str(F_2), ' N'])

quiver(F_3x,F_3y, 'k')
text(F_3x,F_3y,['F_3 = ', num2str(F_3), ' N'])

quiver(F_Rx,F_Ry, 'r')
text(F_Rx,F_Ry,['F_R = ', num2str(F_R), ' N'])

hold off

title('1.')
xlabel('x')
ylabel('y')
axis([-75 75 -75 75])
