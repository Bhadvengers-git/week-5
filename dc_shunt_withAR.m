prated = 2000;
vrated = 125;
Iarated =16;
wmrated =1750*(2*pi)/60;
Trated = prated/wmrated;
ra =0.24;
rf =111;
rrh = 25;
la = 0.018;
lf = 10;
rload = 1e6;
j = 0.8;
vbrush =2;

%Entering Magnetization curve data:

wmo = 2000*(2*pi)/60; % speed at which mag. curve data was taken
% enter voltage values of mag. curve
SHVP1 = [7.5 12 20 24 32 40 48 59 66 74 86 97 102.5 ...
107.5 112 117 121 125 130 135 140 143 146 152 158 164 168 172 175];

% enter main field current values of mag. curve 
SHIP1 = [0 0.05 0.1 0.13 0.18 0.22 0.26 0.32 0.36 0.4 0.47 0.54 ...
 0.575 0.61 0.64 0.68 0.71 0.74 0.78 0.82 0.86 0.9 0.93 1.0 1.1 ...
 1.2 1.3 1.4 1.5];

%plot(SHIP1,SHVP1); 
plot(SHIP1,SHVP1); % plot mag curve measured at wmo
Ia = [-40:5:40]; % set up linear array of armature current   
Iar = 0.04*abs(atan(Ia)) + 0.0001*Ia.^2;

disp('Simulation condition set up by m1.m')
disp('Perform simulation and type return for plots')
keyboard
subplot(4,1,1)
plot(y(:,5),y(:,4))
ylabel("If in A");
subplot(4,1,2)
plot(y(:,5),y(:,3))
ylabel("Eb in V");
subplot(4,1,3)
plot(y(:,5),y(:,1))
ylabel("Ia in A");
subplot(4,1,4)
plot(y(:,5),y(:,2))
ylabel("Va in V");