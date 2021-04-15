%(initial speed and position)
%options = odeset('RelTol',[1e-4 1e-4],'AbsTol',[1e-5 1e-5],'Stats','on'); 
figure("Name", "Mass-Spring System Model", 'NumberTitle', 'off');
    X0=[0;0];
    [t,v]=ode45(@(t,y) mass_spring(t,y), [0 200],X0);
    
%plost distance
subplot(2,1,1);
plot(t, v(:,1), '-r');
title("Distance");
xlabel("time");
ylabel("x(t)");
grid on;

%plot velocity
subplot(2,1,2);
plot(t, v(:,2), '--b');
title("Velocity");
xlabel("time");
ylabel("dx/dt");

disp("max ditance:\n");
disp(max(v(:,1)));

function dXdt=mass_spring(t, X)
    %flow rate 
    M=10; %(Kg) 
    B=0.5; %( Nsec/m) 
    Fa=1; %N 
    K=1; %(N/m)
    %r=1; % dX/dt
    dXdt(1,1)=X(2);
    dXdt(2,1)=-B/M*X(2)-K/M*X(1)+Fa/M;
end
