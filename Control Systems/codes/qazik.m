A=input('A= ');
B=input('B= ');
P=ctrb(A,B); %rank(P)
unco=length(A)-rank(P);
if unco == 0
disp('System is controllable')
else
disp('System is uncontrollable')
end
