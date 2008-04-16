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
F        /2/
;

Equations
profit0             profit function t=0
profit1             profit function t=1
capacity0           capacity constraint t=0
capacity1           capacity constraint t=1
state               state equation
state2              state equation (K1)
state3              state equation (I)
;

Positive Variables
q0          quantity t=0
q1          quantity t=1
lambda0     capacity constraint t=0
lambda1     capacity constraint t=1
K1          capacity
In0         investments t=0
;

Free Variable
phi   state
;

profit0 .. -alpha + 2*beta*q0 + c + lambda0 =g= 0;
profit1 .. -alpha + 2*beta*q1 + c + lambda1 =g= 0;

capacity0 .. -q0 + K0 =g= 0;
capacity1 .. -q1 + K1 =g= 0;

state .. K1 - K0 - In0 =e= 0;
state2 .. - lambda1 + phi =g= 0;
state3 .. F - phi =g= 0;


model monop /profit0.q0, profit1.q1, capacity0.lambda0, capacity1.lambda1,
             state, state2.K1, state3.In0/;

Solve monop using mcp;

Display q0.l, q1.l,In0.l, K0, K1.l,lambda0.l,lambda1.l;