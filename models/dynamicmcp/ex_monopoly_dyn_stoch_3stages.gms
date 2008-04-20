Parameters
alpha    demand function intercept
beta     demand function slope
K0       capacity constraint
c        variable costs
F        capacity costs
ps       probability scenario s
;

Parameters
alpha    /100/
beta     /0.75/
K0       /55/
c        /3/
F        /0.5/
ps       /0.25/
;

Equations
profit0             profit function t=0

profit1s1           profit function t=1
profit1s2           profit function t=1
profit1s3           profit function t=1
profit1s4           profit function t=1

profit2s1           profit function t=2
profit2s2           profit function t=2
profit2s3           profit function t=2
profit2s4           profit function t=2

capacity0           capacity constraint t=0

capacity1s1         capacity constraint t=1
capacity1s2         capacity constraint t=1
capacity1s3         capacity constraint t=1
capacity1s4         capacity constraint t=1

capacity2s1         capacity constraint t=2
capacity2s2         capacity constraint t=2
capacity2s3         capacity constraint t=2
capacity2s4         capacity constraint t=2

statet1             state equation t=1

statet2s1           state equation t=2
statet2s2           state equation t=2
statet2s3           state equation t=2
statet2s4           state equation t=2

state2t1            state equation (K1)

state2t2s1          state equation (K2)
state2t2s2          state equation (K2)
state2t2s3          state equation (K2)
state2t2s4          state equation (K2)

state3t1            state equation (I0)

state3t2s1          state equation (I1)
state3t2s2          state equation (I1)
state3t2s3          state equation (I1)
state3t2s4          state equation (I1)

nonant1t1           non-anticipativity t=1
nonant1t2           non-anticipativity t=1
;

Positive Variables
q0          quantity t=0

q1s1        quantity t=1
q1s2        quantity t=1
q1s3        quantity t=1
q1s4        quantity t=1

q2s1        quantity t=2
q2s2        quantity t=2
q2s3        quantity t=2
q2s4        quantity t=2

lambda0     capacity constraint t=0

lambda1s1   capacity constraint t=1
lambda1s2   capacity constraint t=1
lambda1s3   capacity constraint t=1
lambda1s4   capacity constraint t=1

lambda2s1   capacity constraint t=2
lambda2s2   capacity constraint t=2
lambda2s3   capacity constraint t=2
lambda2s4   capacity constraint t=2

K1          capacity t=1

K2s1        capacity t=2
K2s2        capacity t=2
K2s3        capacity t=2
K2s4        capacity t=2

In0         investments t=0

In1s1       investments t=1
In1s2       investments t=1
In1s3       investments t=1
In1s4       investments t=1
;

Free Variable

phi1   state

phi2s1   state
phi2s2   state
phi2s3   state
phi2s4   state
;

*q0
profit0 .. -alpha + 2*beta*q0 + c + lambda0 =g= 0;

*q1s...
profit1s1 .. -ps*(alpha - 2*beta*q1s1 - c) + lambda1s1 =g= 0;
profit1s2 .. -ps*(alpha - 2*beta*q1s2 - c) + lambda1s2 =g= 0;
profit1s3 .. -ps*(alpha - 2*beta*q1s3 - c) + lambda1s3 =g= 0;
profit1s4 .. -ps*(alpha - 2*beta*q1s4 - c) + lambda1s4 =g= 0;

*q2s...
profit2s1 .. -ps*(alpha - 2*beta*q2s1 - c) + lambda2s1 =g= 0;
profit2s2 .. -ps*(alpha - 2*beta*q2s2 - c) + lambda2s2 =g= 0;
profit2s3 .. -ps*(alpha - 2*beta*q2s3 - c) + lambda2s3 =g= 0;
profit2s4 .. -ps*(alpha - 2*beta*q2s4 - c) + lambda2s4 =g= 0;

*lambda0
capacity0 .. -q0 + K0 =g= 0;

*lambda1s...
capacity1s1 .. -q1s1 + K1 =g= 0;
capacity1s2 .. -q1s2 + K1 =g= 0;
capacity1s3 .. -q1s3 + K1 =g= 0;
capacity1s4 .. -q1s4 + K1 =g= 0;

*lambda2s...
capacity2s1 .. -q2s1 + K2s1 =g= 0;
capacity2s2 .. -q2s2 + K2s2 =g= 0;
capacity2s3 .. -q2s3 + K2s3 =g= 0;
capacity2s4 .. -q2s4 + K2s4 =g= 0;

*phi1
statet1 .. K1 - K0 - In0 =e= 0;

*phi2s...
statet2s1 .. K2s1 - K1 - In1s1 =e= 0;
statet2s2 .. K2s2 - K1 - In1s2 =e= 0;
statet2s3 .. K2s3 - K1 - In1s3 =e= 0;
statet2s4 .. K2s4 - K1 - In1s4 =e= 0;

*K1
state2t1 .. - (lambda1s1+lambda1s2+lambda1s3+lambda1s4) + phi1 =g= 0;

*K2s...
state2t2s1 .. - (lambda2s1+lambda2s2+lambda2s3+lambda2s4) + phi2s1 =g= 0;
state2t2s2 .. - (lambda2s1+lambda2s2+lambda2s3+lambda2s4) + phi2s2 =g= 0;
state2t2s3 .. - (lambda2s1+lambda2s2+lambda2s3+lambda2s4) + phi2s3 =g= 0;
state2t2s4 .. - (lambda2s1+lambda2s2+lambda2s3+lambda2s4) + phi2s4 =g= 0;

*In0
state3t1 .. F - phi1 =g= 0;

*I1s...
state3t2s1 .. F - phi2s1 =g= 0;
state3t2s2 .. F - phi2s2 =g= 0;
state3t2s3 .. F - phi2s3 =g= 0;
state3t2s4 .. F - phi2s4 =g= 0;

*psi1
nonant1t1 .. In1s1 - In1s2 =e= 0;
*psi2
nonant1t2 .. In1s3 - In1s4 =e= 0;


model monop /profit0.q0,
             profit1s1.q1s1, profit1s2.q1s2, profit1s3.q1s3, profit1s4.q1s4,
             profit2s1.q2s1, profit2s2.q2s2, profit2s3.q2s3, profit2s4.q2s4,
             capacity0.lambda0,
             capacity1s1.lambda1s1, capacity1s2.lambda1s2, capacity1s3.lambda1s3, capacity1s4.lambda1s4,
             capacity2s1.lambda2s1, capacity2s2.lambda2s2, capacity2s3.lambda2s3, capacity2s4.lambda2s4,
             statet1,
             statet2s1, statet2s2, statet2s3, statet2s4,
             state2t1.K1,
             state2t2s1.K2s1, state2t2s2.K2s2, state2t2s3.K2s3, state2t2s4.K2s4,
             state3t1.In0,
             state3t2s1.In1s1, state3t2s2.In1s2, state3t2s3.In1s3, state3t2s4.In1s4
             /;

Solve monop using mcp;

*Display q0.l, q1.l, q2.l, In0.l, In1.l, K0, K1.l, K2.l, lambda0.l,lambda1.l, lambda2.l;