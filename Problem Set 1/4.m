F_B = 400;
F_C = 400;
F_E = 350;

F_Bx = F_B.*(-5./sqrt((-5).^2 + 2.^2 + 3.^2));
F_By = F_B.*(2./sqrt((-5).^2 + 2.^2 + 3.^2));
F_Bz = F_B.*(3./sqrt((-5).^2 + 2.^2 + 3.^2));

F_Cx = F_C.*(-5./sqrt((-5).^2 + 2.^2 + 3.^2));
F_Cy = F_C.*(-2./sqrt((-5).^2 + 2.^2 + 3.^2));
F_Cz = F_C.*(3./sqrt((-5).^2 + 2.^2 + 3.^2));

F_Ex = F_E.*(-2./sqrt((-5).^2 + 2.^2 + 3.^2));
F_Ey = 0;
F_Ez = F_E.*(3./sqrt((-2).^2 + 3.^2));

F_Rx = F_Bx + F_Cx + F_Ex;
F_Ry = F_By + F_Cy + F_Ey;
F_Rz = F_Bz + F_Cz + F_Ez;
F_R = sqrt(F_Rx.^2 + F_Ry.^2 + F_Rz.^2);

quiver3(0,F_Bx,F_By,F_Bz,'k')
text(F_Bx,F_By,F_Bz,['F_B = ', num2str(F_B), ' N'])

hold on

quiver3(0,F_Cx,F_Cy,F_Cz,'k')
text(F_Cx,F_Cy,F_Cz,['F_C = ', num2str(F_C), ' N'])

quiver3(0,F_Ex,F_Ey,F_Ez,'k')
text(F_Ex,F_Ey,F_Ez,['F_E = ', num2str(F_E), ' N'])

quiver3(0,F_Rx,F_Ry, F_Rz,'r')
text(F_Rx,F_Ry,F_Rz,['F_R = ', num2str(F_R), ' N'])

hold off

title('4.')
xlabel('x')
ylabel('y')
zlabel('z')
view(135, 30);