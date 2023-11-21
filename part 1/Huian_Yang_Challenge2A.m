f = 1500; %frequency, wave 

a = 1; %maximum amplitude 

fs = 20*f; 
dt = 1/fs;
t = 0:dt:0.02; %plot 2 periods (1 period = 1/100Hz = 0.01

y = a*sin(2*pi*f*t); %Calculate samples
figure;
subplot(3,1,1); 
plot(t,y);
xlabel('Time (s)');
ylabel('Amplitude');
title('1500 Frequency');
%----------------------------------------
hold on
f = 2500; %frequency, wave 

a = 1; %maximum amplitude 

fs = 20*f; 
dt = 1/fs;
t = 0:dt:0.02; %plot 2 periods (1 period = 1/100Hz = 0.01

y = a*sin(2*pi*f*t); %Calculate samples
subplot(3,1,2);
plot(t,y);
xlabel('Time (s)');
ylabel('Amplitude');
title('2500 Freiquency');
%----------------------------------------
hold on
f = 5000; %frequency, wave 

a = 1; %maximum amplitude 

fs = 20*f; 
dt = 1/fs;
t = 0:dt:0.02; %plot 2 periods (1 period = 1/100Hz = 0.01

y = a*sin(2*pi*f*t); %Calculate samples
subplot(3,1,3); 
plot(t,y);

xlabel('Time (s)');
ylabel('Amplitude');
title('5000 Frequency');


