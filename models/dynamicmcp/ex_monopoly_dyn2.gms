Sets
t        time
;

Parameters
alpha    demand function intercept
beta     demand function slope
K0       initial capacity
c        variable costs
F        capacity costs
;

Equations
profit0             profit function t=0
profit(t)           profit function
capacity0           capacity constraint t=0
capacity(t)         capacity constraint
state(t)            state equation
state2(t)           state equation (K_t+1)
state3(t)           state equation (I)
;

Positive Variables
q0          quantity in t=0
q(t)        quantity
lambda0     capacity constraint in t=0
lambda(t)   capacity constraint
K(t)        capacity
In0         investments
;

Free Variable
phi(t)   state
;

profit0 .. -alpha + 2*beta*q0 + c + lambda0 =g= 0;
profit(t) .. -alpha + 2*beta*q(t) + c + lambda(t) =g= 0;

capacity0 .. -q0 + K0 =g= 0;
capacity(t) .. -q(t) + K(t) =g= 0;

state(t) .. K(t) - In0 - K0 =e= 0;
state2(t) .. - lambda(t) + phi(t) =g= 0;
*state3(t) .. F - phi(t) =g= 0;


model monop /profit0.q0, profit.q, capacity0.lambda0, capacity.lambda,
             state, state2.K/;
*state3.In0

Set t    /1/;

Parameters
alpha    /100/
beta     /0.75/
K0       /55/
c        /3/
F        /2/
;

Solve monop using mcp;

*Display q.l, q1.l,In0.l, K0, K1.l,lambda0.l,lambda1.l;