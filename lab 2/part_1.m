%(initial speed and position)
%options = odeset('RelTol',[1e-4 1e-4],'AbsTol',[1e-5 1e-5],'Stats','on'); 
figure("Name", "Mass-Spring System Model", 'NumberTitle', 'off');
    
for r = 1:3
    
    X0=[0;0];
    [t,v]=ode45(@(t,y) mass_spring(t,y,r), [0 200],X0);
    
    %plost distance
    subplot(3,2,r*2-1);
    plot(t, v(:,1), '-r');
    title(strcat("Distance for r=", num2str(r)));
    xlabel("time");
    ylabel("x(t)");
    
    %plot velocity
    subplot(3,2,r*2);
    plot(t, v(:,2), '--b');
    title(strcat("Velocity for r=", num2str(r)));
    xlabel("time");
    ylabel("dx/dt");
    
end


function dXdt=mass_spring(t, X,r)
    %flow rate 
    M=750; %(Kg) 
    B=30; %( Nsec/m) 
    Fa=300; %N 
    K=15; %(N/m)
    %r=1; % dX/dt
    dXdt(1,1)=X(2); dXdt(2,1)=-B/M*X(2)-K/M*X(1)^r+Fa/M;
end
