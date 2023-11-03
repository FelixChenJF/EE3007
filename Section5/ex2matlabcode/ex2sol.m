x=[0:0.1:5];
t=[0:1:20];


P=pdepe(0,@ex2pde,@ex2ic,@ex2bc,x,t);

% Plot graph of T(t,x) at t=10;
figure(1);
plot(x,P(11,:));
title('Temperature at time t=10');


% Plot graph of T(t,x) at t=20;
figure(2);
plot(x,P(21,:));
title('Temperature at time t=20');

% Plot a 3D graph of T
figure(3);
surf(x,t,P);
xlabel('x');
ylabel('t');
zlabel('P');
title('P(t,x) for 0<t<20');

