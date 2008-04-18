Sets
i        players
;

Alias(i,n)

Parameters
alpha    demand function intercept
beta     demand function slope
K0(i)    capacity  t=0
c        variable costs
F        capacity costs
;


Equations
profit0(i)          profit function t=0
profit1(i)          profit function t=1
capacity0(i)        capacity constraint t=0
capacity1(i)        capacity constraint t=1
state(i)            state equation
state2(i)           state equation (K1)
state3(i)           state equation (I)
;

Positive Variables
q0(i)          quantity t=0
q1(i)          quantity t=1
lambda0(i)     capacity constraint t=0
lambda1(i)     capacity constraint t=1
K1(i)          capacity
In0(i)         investments t=0
;

Free Variable
phi(i)   state
;

profit0(i) .. -alpha + beta*sum(n,q0(n)) + beta*q0(i)+ c + lambda0(i) =g= 0;
profit1(i) .. -alpha + beta*sum(n,q1(n)) + beta*q1(i)+ c + lambda1(i) =g= 0;

capacity0(i) .. -q0(i) + K0(i) =g= 0;
capacity1(i) .. -q1(i) + K1(i) =g= 0;

state(i) .. K1(i) - K0(i) - In0(i) =e= 0;
state2(i) .. - lambda1(i) + phi(i) =g= 0;
state3(i) .. F - phi(i) =g= 0;


model monop /profit0.q0, profit1.q1, capacity0.lambda0, capacity1.lambda1,
             state, state2.K1, state3.In0/;

Sets
i        /Player1, Player2/
;

Parameters
alpha    /100/
beta     /0.75/
c        /3/
F        /4/
;

Parameter K0(i)  / Player1      30
                   Player2      40
                 /;

Solve monop using mcp;

Display q0.l, q1.l,In0.l, K0, K1.l,lambda0.l,lambda1.l;