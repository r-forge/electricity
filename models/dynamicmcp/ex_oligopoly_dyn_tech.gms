Sets
i        players
j        technologies
;

Alias(i,n)
Alias(j,m)

Parameters
alpha    demand function intercept
beta     demand function slope
K0(i,j)  capacity  t=0
c(j)     variable costs
F(j)     capacity costs
;


Equations
profit0(i,j)          profit function t=0
profit1(i,j)          profit function t=1
capacity0(i,j)        capacity constraint t=0
capacity1(i,j)        capacity constraint t=1
state(i,j)            state equation
state2(i,j)           state equation (K1)
state3(i,j)           state equation (I)
;

Positive Variables
q0(i,j)          quantity t=0
q1(i,j)          quantity t=1
lambda0(i,j)     capacity constraint t=0
lambda1(i,j)     capacity constraint t=1
K1(i,j)          capacity
In0(i,j)         investments t=0
;

Free Variable
phi(i,j)   state
;

profit0(i,j) .. -alpha + beta*sum((n,m),q0(n,m)) + beta*sum(n,q0(n,j))+ c(j) + lambda0(i,j) =g= 0;
profit1(i,j) .. -alpha + beta*sum((n,m),q1(n,m)) + beta*sum(n,q1(n,j))+ c(j) + lambda1(i,j) =g= 0;

capacity0(i,j) .. -q0(i,j) + K0(i,j) =g= 0;
capacity1(i,j) .. -q1(i,j) + K1(i,j) =g= 0;

state(i,j) .. K1(i,j) - K0(i,j) - In0(i,j) =e= 0;
state2(i,j) .. - lambda1(i,j) + phi(i,j) =g= 0;
state3(i,j) .. F(j) - phi(i,j) =g= 0;


model oligop /profit0.q0, profit1.q1, capacity0.lambda0, capacity1.lambda1,
             state, state2.K1, state3.In0/;

Sets
i        /Player1, Player2/
j        /Hydro, Nuclear/
;

Parameters
alpha    /100/
beta     /0.75/
;

Parameter c(j)           /
                         Hydro    3
                         Nuclear  2
                         /;

Parameter F(j)          /
                         Hydro   1
                         Nuclear 2
                        /;

Table K0(i,j)
                         Hydro         Nuclear
                 Player1   15              25
                 Player2   20              5
;


Solve oligop using mcp;

Display q0.l, q1.l,In0.l, K0, K1.l,lambda0.l,lambda1.l;