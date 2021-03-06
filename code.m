%given
m1=350;
m2=40;
k1=18000;
k2=1950000;
b1=600;
b2=800;
load('complete_sine.mat')
c_sine_actv=out.active_response_fcn1;
load('complete_sine_passive.mat')
c_sine_psv=out.ScopeData;
load('speed_breaker_active.mat')
speed_brkr_actv=out.active_response_fcn1;
load('speed_breaker_passive.mat')
speed_brkr_psv=out.ScopeData;
load('step_response_active.mat')
step_actv=out.active_response_fcn1;
load('step_response_passive.mat')
step_psv=out.ScopeData;

figure(1)
title('Complete_sinusoid');
plot(c_sine_actv(:,1),c_sine_actv(:,2),'Linewidth',2);
hold on
plot(c_sine_psv(:,1),c_sine_psv(:,2),'Linewidth',2);
legend('Semi-active','Passive');
grid on

figure(2)
title('Complete_sinusoid');
plot(speed_brkr_actv(:,1),speed_brkr_actv(:,2),'Linewidth',2);
hold on
plot(speed_brkr_psv(:,1),speed_brkr_psv(:,2),'Linewidth',2);
legend('Semi-active','Passive');
grid on

figure(3)
title('Step Response');
plot(step_actv(:,1),step_actv(:,2),'Linewidth',2);
hold on
plot(step_psv(:,1),step_psv(:,2),'Linewidth',2);
legend('Semi-active','Passive');
grid on


