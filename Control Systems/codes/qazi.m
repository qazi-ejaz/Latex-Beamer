%time
tstart = 0 ;
tstep = 0.01 ;
tstop = 3 ;
t = tstart:tstep:tstop;
%step response
CF.SR_b = CF.TF_b ;
CF.SR_a = [CF.TF_a 0 ] ; %notice that we've added a zero as the last term to cater for multiplication with 1/s
CF.SR_eqn = tf(CF.SR_b,CF.SR_a);
[CF.SR_r, ...
CF.SR_p, ...
CF.SR_k] = residue(CF.SR_b,CF.SR_a);
%amplitude of step response
CF.SR_y =CF.SR_r(1)*exp(CF.SR_p(1)*t)+ ...
         CF.SR_r(2)*exp(CF.SR_p(2)*t) + ...
         CF.SR_r(3)*exp(CF.SR_p(3)*t);

plot(t,CF.SR_y);
grid on
xlabel('Time (sec)')
ylabel('Wheel angularvelocity rad/sec)') ;
title('DC motor step response') ;