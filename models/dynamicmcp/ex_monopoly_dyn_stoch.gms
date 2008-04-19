Sets
s        scenarios
;

Alias(s,o)

Parameters
alpha0           demand function intercept t=0
alpha1(s)        demand function intercept t=1
p(s)             probability of scenario s
beta             demand function slope
K0               capacity constraint
c                variable costs
F                capacity costs
;


Equations
profit0             profit function t=0
profit1(s)          profit function t=1
capacity0           capacity constraint t=0
capacity1(s)        capacity constraint t=1
state            state equation
state2           state equation (K1)
state3           state equation (I)
;

Positive Variables
q0          quantity t=0
q1(s)       quantity t=1
lambda0     capacity constraint t=0
lambda1(s)  capacity constraint t=1
K1       capacity
In0      investments t=0
;

Free Variable
phi   state
;

profit0 .. -alpha0 + 2*beta*q0 + c + lambda0 =g= 0;
profit1(s) .. -p(s)*(alpha1(s) - 2*beta*q1(s) - c) + lambda1(s) =g= 0;

capacity0 .. -q0 + K0 =g= 0;
capacity1(s) .. -q1(s) + K1 =g= 0;

state .. K1 - K0 - In0 =e= 0;
state2 .. - sum(o,lambda1(o)) + phi =g= 0;
state3 .. F - phi =g= 0;


model monop /profit0.q0, profit1.q1, capacity0.lambda0, capacity1.lambda1,
             state, state2.K1, state3.In0/;

Set s /1,2/;

Parameters
alpha0    /100/
beta     /0.75/
K0       /55/
c        /3/
F        /2/
;

Parameter alpha1(s)      /1 105
                          2 95 /;

Parameter p(s)  /1 0.5
                 2 0.5/;

Solve monop using mcp;

Display q0.l,q1.l,In0.l, K0, K1.l,lambda0.l,lambda1.l,p;