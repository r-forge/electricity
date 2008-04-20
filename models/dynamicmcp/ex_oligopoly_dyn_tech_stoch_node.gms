Sets
i        players
j        technologies
;


Alias(i,l);
Alias(j,m);

Parameters
alpha_n0           demand function intercept t=0
alpha_n1           demand function intercept t=1
alpha_n2           demand function intercept t=1
beta               demand function slope
K0(i,j)            capacity constraint
c(j)               variable costs
F(j)               capacity costs
;

Equations
profit_n0(i,j)           profit function t=0
profit_n1(i,j)           profit function t=1
profit_n2(i,j)           profit function t=1
capacity_n0(i,j)         capacity constraint t=0
capacity_n1(i,j)         capacity constraint t=1
capacity_n2(i,j)         capacity constraint t=1
state_n1(i,j)            state equation
state_n2(i,j)            state equation
state2_n1(i,j)           state equation (K1)
state2_n2(i,j)           state equation (K1)
state3(i,j)              state equation
;

Positive Variables
q_n0(i,j)          quantity t=0
q_n1(i,j)          quantity t=1
q_n2(i,j)          quantity t=1
lambda_n0(i,j)     capacity constraint t=0
lambda_n1(i,j)     capacity constraint t=1
lambda_n2(i,j)     capacity constraint t=1
K_n1(i,j)          capacity
K_n2(i,j)          capacity
In_n0(i,j)         investments t=0
;

Free Variable
phi_n1(i,j)   state
phi_n2(i,j)   state
;

profit_n0(i,j) .. -alpha_n0 + beta*sum((l,m),q_n0(l,m)) + beta*sum(m,q_n0(i,m)) + c(j) + lambda_n0(i,j) =g= 0;
profit_n1(i,j) .. -0.5*(alpha_n1 - beta*sum((l,m),q_n1(l,m)) - beta*sum(m,q_n1(i,m)) - c(j)) + lambda_n1(i,j) =g= 0;
profit_n2(i,j) .. -0.5*(alpha_n2 - beta*sum((l,m),q_n2(l,m)) - beta*sum(m,q_n2(i,m)) - c(j)) + lambda_n2(i,j) =g= 0;

capacity_n0(i,j) .. -q_n0(i,j) + K0(i,j) =g= 0;
capacity_n1(i,j) .. -q_n1(i,j) + K_n1(i,j) =g= 0;
capacity_n2(i,j) .. -q_n2(i,j) + K_n2(i,j) =g= 0;

state_n1(i,j) .. K_n1(i,j) - K0(i,j) - In_n0(i,j) =e= 0;
state_n2(i,j) .. K_n2(i,j) - K0(i,j) - In_n0(i,j) =e= 0;
state2_n1(i,j) .. -lambda_n1(i,j) + phi_n1(i,j) =g= 0;
state2_n2(i,j) .. -lambda_n2(i,j) + phi_n2(i,j) =g= 0;
state3(i,j) .. F(j) - phi_n1(i,j) - phi_n2(i,j) =g= 0;


model monop /profit_n0.q_n0,
             profit_n1.q_n1,
             profit_n2.q_n2,
             capacity_n0.lambda_n0,
             capacity_n1.lambda_n1,
             capacity_n2.lambda_n2,
             state_n1,
             state_n2,
             state2_n1.K_n1,
             state2_n2.K_n2,
             state3.In_n0
             /;

Sets
i        /Player1, Player2, Player3/
j        /Tech1, Tech2/
;

Parameters
alpha_n0    /100/
alpha_n1    /105/
alpha_n2    /95/
beta        /0.75/
;

Table K0(i,j)
                      Tech1      Tech2
          Player1      5        10
          Player2      5        10
          Player3      5        10
;


Parameter c(j)           /
                         Tech1    3
                         Tech2  2
                         /;

Parameter F(j)          /
                         Tech1   1
                         Tech2 2
                        /;

Solve monop using mcp;
