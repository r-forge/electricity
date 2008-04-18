Sets
t                time
tfirst(t)        first period
tlast(t)         last period
;


Parameters
alpha    demand function intercept
beta     demand function slope
K0       initial capacity
c        variable costs
F        capacity costs
;

Equations
profit(t)           profit function
capacity(t)         capacity constraint
state(t)            state equation
state2(t)           state equation (K_t+1)
state3(t)           state equation (I)
;

Positive Variables
q(t)        quantity
lambda(t)   capacity constraint
K(t)        capacity
In(t)       investments
;

Free Variable
phi(t)   state
;

profit(t) .. -alpha + 2*beta*q(t) + c + lambda(t) =g= 0;

capacity(t) .. -q(t) + K(t) =g= 0;

state(t) .. K(t) - K(t-1) - In(t-1) - K0$tfirst(t) =e= 0;
state2(t) .. - lambda(t) +lambda(t)$tfirst(t) + phi(t) - phi(t)$tfirst(t) =g= 0;
state3(t) .. F - phi(t) + phi(t)$tfirst(t) =g= 0;


model monop /profit.q, capacity.lambda,
             state, state2.K, state3.In /;
*

Set t    /0,1/;

Parameters
alpha    /100/
beta     /0.75/
K0       /55/
c        /3/
F        /2/
;

tfirst(t) = yes$(ord(t) eq 1);
tlast(t) = yes$(ord(t) eq card(t));
*In.fx(t)$tlast(t) = 0;
*K.fx(t)$tfirst(t) = K0;

Display tfirst, tlast;

Solve monop using mcp;

*Display q.l, q1.l,In0.l, K0, K1.l,lambda0.l,lambda1.l;