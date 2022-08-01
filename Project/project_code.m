clc
clear all
%% First we set our parameters
mu=1/(70*365); % Birth and background death
beta=0.27; % Contact
sigma=1/7; % Latency
tau=1/14;  % Recovery
alpha=0; % Infection-induced death
omega=1/365; %Loss of immunity
n=1826; %five year
h=1; %step
N=82e6; % Population
S=zeros(n+1,1);
E=zeros(n+1,1);
I=zeros(n+1,1);
R=zeros(n+1,1);
S(1)=0.998*N;
E(1)=0.002*N;

%% Now with RK4 we calculate I function over 5 years
for i=1:n
     SS = S(i);
     EE = E(i);
     II = I(i);
     RR = R(i);
     
    k11 = mu*N - beta*SS*II/N+omega*RR;
    k21 = beta*SS*II/N-sigma*EE-mu*EE;
    k31 = sigma*EE-tau*II-(mu+alpha)*II;
    k41 = tau*II-omega*RR-mu*RR;
    
     SS = S(i) + 0.5*k11*h;
     EE = E(i) +  0.5*k21*h;
     II = I(i) +  0.5*k31*h;
     RR = R(i) + 0.5*k41*h;
     
    k12 = mu*N - beta*SS*II/N+omega*RR;
    k22 = beta*SS*II/N-sigma*EE-mu*EE;
    k32 = sigma*EE-tau*II-(mu+alpha)*II;
    k42 = tau*II-omega*RR-mu*RR;
    
     SS = S(i) + 0.5*k12*h;
     EE = E(i) +  0.5*k22*h;
     II = I(i) +  0.5*k32*h;
     RR = R(i) + 0.5*k42*h;
    
    k13 = mu*N - beta*SS*II/N+omega*RR;
    k23 = beta*SS*II/N-sigma*EE-mu*EE;
    k33 = sigma*EE-tau*II-(mu+alpha)*II;
    k43 = tau*II-omega*RR-mu*RR;
    
     SS = S(i) + k13*h;
     EE = E(i) +  k23*h;
     II = I(i) +  k33*h;
     RR = R(i) + k43*h;
        
    k14 = mu*N - beta*SS*II/N+omega*RR;
    k24 = beta*SS*II/N-sigma*EE-mu*EE;
    k34 = sigma*EE-tau*II-(mu+alpha)*II;
    k44 = tau*II-omega*RR-mu*RR;
    
    S(i + 1) = S(i) + (1/6)*(k11 + 2*k12 + 2*k13 + k14)*h;
    E(i + 1) = E(i) + (1/6)*(k21 + 2*k22 + 2*k23 + k24)*h;
    I(i + 1) = I(i) + (1/6)*(k31 + 2*k32 + 2*k33 + k34)*h;
    R(i + 1) = R(i) + (1/6)*(k41 + 2*k42 + 2*k43 + k44)*h;
end

%% In last we calculate total Infected with simpson method
INT = h/3*(I(1)+4*sum(I(2:2:n))+2*sum(I(3:2:n))+I(n+1));
fprintf('Total Infected after 5-years = %4d %%',100*INT/N )
