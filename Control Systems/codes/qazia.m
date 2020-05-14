%(a) transfer function
CF.TF_b = Km; %numerator
CF.TF_a = [L*J L*b+R*J R*b+Kb*Km]; %denominator
CF.TF_eqn = tf(CF.TF_b,CF.TF_a); %equation
%(b)find impulse response
impulse(CF.TF_eqn);
%(c) find step response
step(CF.TF_eqn);