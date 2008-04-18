Sets
j        technologies
;

Alias(j,l)

Parameters
alpha    demand function intercept
beta     demand function slope
K0(j)     capacity constraint
c(j)     variable costs
F(j)     capacity costs
;



Equations
profit0(j)             profit function t=0
profit1(j)             profit function t=1
capacity0(j)           capacity constraint t=0
capacity1(j)           capacity constraint t=1
state(j)               state equation
state2(j)              state equation (K1)
state3(j)              state equation (I)
;

Positive Variables
q0(j)          quantity t=0
q1(j)          quantity t=1
lambda0(j)     capacity constraint t=0
lambda1(j)     capacity constraint t=1
K1(j)          capacity
In0(j)         investments t=0
;

Free Variable
phi(j)   state
;

profit0(j) .. -alpha + 2*beta*sum(l,q0(l)) + c(j) + lambda0(j) =g= 0;
profit1(j) .. -alpha + 2*beta*sum(l,q1(l)) + c(j) + lambda1(j) =g= 0;

capacity0(j) .. -q0(j) + K0(j) =g= 0;
capacity1(j) .. -q1(j) + K1(j) =g= 0;


state(j) .. K1(j) - K0(j) - In0(j) =e= 0;
state2(j) .. - lambda1(j) + phi(j) =g= 0;
state3(j) .. F(j) - phi(j) =g= 0;


model monop /profit0.q0, profit1.q1, capacity0.lambda0, capacity1.lambda1,
             state, state2.K1, state3.In0/;

** D A T A

Set j /
       Hydro,
       Nuclear
       /;

Parameters
alpha    /100/
beta     /0.75/
;

Parameter c(j)           /
                         Hydro    3
                         Nuclear  2
                         /;

Parameter K0(j)          /
                         Hydro   55
                         Nuclear 20
                        /;

Parameter F(j)          /
                         Hydro   2
                         Nuclear 1
                        /;

Solve monop using mcp;

Display q0.l, q1.l,In0.l, K0, K1.l,lambda0.l,lambda1.l;