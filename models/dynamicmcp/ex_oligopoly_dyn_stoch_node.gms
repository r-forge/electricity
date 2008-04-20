Sets
i        players
;

Alias(i,l);

Parameters
alpha_n0           demand function intercept t=0
alpha_n1           demand function intercept t=1
alpha_n2           demand function intercept t=1
beta               demand function slope
K0(i)              capacity constraint
c                  variable costs
F                  capacity costs
;

Equations
profit_n0(i)           profit function t=0
profit_n1(i)           profit function t=1
profit_n2(i)           profit function t=1
capacity_n0(i)         capacity constraint t=0
capacity_n1(i)         capacity constraint t=1
capacity_n2(i)         capacity constraint t=1
state_n1(i)            state equation
state_n2(i)            state equation
state2_n1(i)           state equation (K1)
state2_n2(i)           state equation (K1)
state3(i)              state equation (I)
;

Positive Variables
q_n0(i)          quantity t=0
q_n1(i)          quantity t=1
q_n2(i)          quantity t=1
lambda_n0(i)     capacity constraint t=0
lambda_n1(i)     capacity constraint t=1
lambda_n2(i)     capacity constraint t=1
K_n1(i)          capacity
K_n2(i)          capacity
In_n0(i)         investments t=0
;

Free Variable
phi_n1(i)   state
phi_n2(i)   state
;

profit_n0(i) .. -alpha_n0 + beta*sum(l,q_n0(l)) + beta*q_n0(i) + c + lambda_n0(i) =g= 0;
profit_n1(i) .. -0.5*(alpha_n1 - beta*sum(l,q_n1(l)) - beta*q_n1(i) - c) + lambda_n1(i) =g= 0;
profit_n2(i) .. -0.5*(alpha_n2 - beta*sum(l,q_n2(l)) - beta*q_n2(i) - c) + lambda_n2(i) =g= 0;

capacity_n0(i) .. -q_n0(i) + K0(i) =g= 0;
capacity_n1(i) .. -q_n1(i) + K_n1(i) =g= 0;
capacity_n2(i) .. -q_n2(i) + K_n2(i) =g= 0;

state_n1(i) .. K_n1(i) - K0(i) - In_n0(i) =e= 0;
state_n2(i) .. K_n2(i) - K0(i) - In_n0(i) =e= 0;
state2_n1(i) .. -lambda_n1(i) + phi_n1(i) =g= 0;
state2_n2(i) .. -lambda_n2(i) + phi_n2(i) =g= 0;
state3(i) .. F - phi_n1(i) - phi_n2(i) =g= 0;


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
;

Parameters
alpha_n0    /100/
alpha_n1    /105/
alpha_n2    /95/
beta        /0.75/
c        /3/
F        /2/
;

Parameter K0(i)  / Player1      30
                   Player2      40
                   Player3      10
                 /;

Solve monop using mcp;
