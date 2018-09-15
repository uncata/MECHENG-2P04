m_A = 20;
g = 9.81;

syms T_AB T_AC

F_x = -T_AC.*(24./25) + T_AB.*cosd(12) == 0;
F_y = T_AC.*sind(acosd(24./25)) + T_AB.*sind(12) - m_A.*g == 0;

[A,B] = equationsToMatrix([F_x, F_y], [T_AB, T_AC]);
X = linsolve(A,B);

T_AB = double(X(1));
T_AC = double(X(2));

T_ABx = T_AB.*cosd(12);
T_ABy = T_AB.*sind(12);

T_ACx = -T_AC.*(24./25);
T_ACy = T_AC.*sind(acosd(24./25));

W_x = 0;
W_y = -m_A.*g;
W = m_A.*g;

grid on
hold on

quiver(T_ABx,T_ABy,'k')
text(T_ABx,T_ABy,['T_A_B = ', num2str(T_AB), ' N'])

quiver(T_ACx,T_ACy,'k')
text(T_ACx,T_ACy,['T_A_C = ', num2str(T_AC), ' N'])

quiver(W_x,W_y,'k')
text(F_Bx,F_By,F_Bz,['F_B = ', num2str(F_B), ' N'])
text(W_x,W_y,['W = ', num2str(W), ' N'])

text(0,50,['F_R = ', num2str(0), ' N'])

title('5.')
xlabel('x')
ylabel('y')
xlim([-400 600]);
ylim([-250 150]);