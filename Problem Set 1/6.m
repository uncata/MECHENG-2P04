Q = 2000;

syms T_1 T_2

F_x = -T_1.*cosd(55) - T_2.*cosd(55) + T_2.*cosd(25) == 0;
F_y = T_1.*sind(55) + T_2.*sind(55) + T_2.*sind(25) - Q == 0;

[A,B] = equationsToMatrix([F_x, F_y], [T_1, T_2]);
X = linsolve(A,B);

T_1 = double(X(1));
T_2 = double(X(2));

P = T_1;
P_x = 0;
P_y = -T_1;

T_AC1 = T_1;
T_AC1x = T_1.*cosd(55);
T_AC1y = -T_1.*sind(55);

T_AC2 = T_2;
T_AC2x = T_2.*cosd(55);
T_AC2y = -T_2.*sind(55);

T_CB = T_2;
T_CBx = T_2.*cosd(25);
T_CBy = T_2.*sind(25);

syms R_x R_y

F_x = R_x + P_x + T_AC1.*cosd(55) + T_AC2.*cosd(55) == 0;
F_y = R_y + P_y - T_AC1.*sind(55) - T_AC2.*sind(55) == 0;

[A,B] = equationsToMatrix([F_x, F_y], [R_x, R_y]);
X = linsolve(A,B);

R_x = double(X(1));
R_y = double(X(2));
R = sqrt(R_x.^2 + R_y.^2);

grid on
hold on

quiver(P_x,P_y,'k')
text(P_x,P_y,['P = ', num2str(P), ' N'])

quiver(T_AC1x,T_AC1y,'k')
text(T_AC1x,T_AC1y,['T_1 = ', num2str(T_AC1), ' N'])

quiver(T_AC2x,T_AC2y,'k')
text(T_AC2x,T_AC2y,['T_2 = ', num2str(T_AC2), ' N'])

quiver(R_x,R_y,'k')
text(R_x,R_y,['R = ', num2str(R), ' N'])

text(0,50,['F_R = ', num2str(0), ' N'])

title('6.')
xlabel('x')
ylabel('y')
xlim([-1200 1000])
ylim([-1200 2500])