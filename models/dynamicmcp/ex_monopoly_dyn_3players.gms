Parameters
alpha    demand function intercept
beta     demand function slope
K0       capacity constraint
c        variable costs
F        capacity costs
;

Parameters
alpha    /100/
beta     /0.75/
K0       /55/
c        /3/
F        /0.5/
;

Equations
profit0             profit function t=0
profit1             profit function t=1
profit2             profit function t=2
capacity0           capacity constraint t=0
capacity1           capacity constraint t=1
capacity2           capacity constraint t=2
statet1             state equation t=1
statet2             state equation t=2
state2t1            state equation (K1)
state2t2            state equation (K2)
state3t1            state equation (I0)
state3t2            state equation (I1)
;

Positive Variables
q0          quantity t=0
q1          quantity t=1
q2          quantity t=2
lambda0     capacity constraint t=0
lambda1     capacity constraint t=1
lambda2     capacity constraint t=2
K1          capacity t=1
K2          capacity t=2
In0         investments t=0
In1         investments t=1
;

Free Variable
phi1   state
phi2   state
;

profit0 .. -alpha + 2*beta*q0 + c + lambda0 =g= 0;
profit1 .. -alpha + 2*beta*q1 + c + lambda1 =g= 0;
profit2 .. -alpha + 2*beta*q2 + c + lambda2 =g= 0;

capacity0 .. -q0 + K0 =g= 0;
capacity1 .. -q1 + K1 =g= 0;
capacity2 .. -q2 + K2 =g= 0;

statet1 .. K1 - K0 - In0 =e= 0;
statet2 .. K2 - K1 - In1 =e= 0;
state2t1 .. - lambda1 + phi1 =g= 0;
state2t2 .. - lambda2 + phi2 =g= 0;
state3t1 .. F - phi1 =g= 0;
state3t2 .. F - phi2 =g= 0;

model monop /profit0.q0, profit1.q1, profit2.q2, capacity0.lambda0,
            capacity1.lambda1, capacity2.lambda2,
            statet1, statet2, state2t1.K1, state2t2.K2, state3t1.In0, state3t2.In1/;

Solve monop using mcp;

Display q0.l, q1.l, q2.l, In0.l, In1.l, K0, K1.l, K2.l, lambda0.l,lambda1.l, lambda2.l;