Parameters
alpha_n0           demand function intercept t=0
alpha_n1           demand function intercept t=1
alpha_n2           demand function intercept t=1
alpha_n3           demand function intercept t=2
alpha_n4           demand function intercept t=2
alpha_n5           demand function intercept t=2
alpha_n6           demand function intercept t=2
beta               demand function slope
K0                 capacity constraint
c                  variable costs
F                  capacity costs
;

Equations
profit_n0           profit function t=0
profit_n1           profit function t=1
profit_n2           profit function t=1
profit_n3           profit function t=2
profit_n4           profit function t=1
profit_n5           profit function t=1
profit_n6           profit function t=1
capacity_n0         capacity constraint t=0
capacity_n1         capacity constraint t=1
capacity_n2         capacity constraint t=1
capacity_n3         capacity constraint t=2
capacity_n4         capacity constraint t=2
capacity_n5         capacity constraint t=2
capacity_n6         capacity constraint t=2
state_n1            state equation
state_n2            state equation
state_n3            state equation
state_n4            state equation
state_n5            state equation
state_n6            state equation
state2_n1           state equation (K1)
state2_n2           state equation (K1)
state2_n3           state equation (K2)
state2_n4           state equation (K2)
state2_n5           state equation (K2)
state2_n6           state equation (K2)
state3_n0           state equation (I0)
state3_n1           state equation (I1)
state3_n2           state equation (I1)
;

Positive Variables
q_n0          quantity t=0
q_n1          quantity t=1
q_n2          quantity t=1
q_n3          quantity t=2
q_n4          quantity t=2
q_n5          quantity t=2
q_n6          quantity t=2
lambda_n0     capacity constraint t=0
lambda_n1     capacity constraint t=1
lambda_n2     capacity constraint t=1
lambda_n3     capacity constraint t=2
lambda_n4     capacity constraint t=2
lambda_n5     capacity constraint t=2
lambda_n6     capacity constraint t=2
K_n1          capacity
K_n2          capacity
K_n3          capacity
K_n4          capacity
K_n5          capacity
K_n6          capacity
In_n0         investments t=0
In_n1         investments t=1
In_n2         investments t=1
;

Free Variable
phi_n1   state
phi_n2   state
phi_n3   state
phi_n4   state
phi_n5   state
phi_n6   state
;

profit_n0 .. -alpha_n0 + 2*beta*q_n0 + c + lambda_n0 =g= 0;
profit_n1 .. -0.5*(alpha_n1 - 2*beta*q_n1 - c) + lambda_n1 =g= 0;
profit_n2 .. -0.5*(alpha_n2 - 2*beta*q_n2 - c) + lambda_n2 =g= 0;
profit_n3 .. -0.25*(alpha_n3 - 2*beta*q_n3 - c) + lambda_n3 =g= 0;
profit_n4 .. -0.25*(alpha_n4 - 2*beta*q_n4 - c) + lambda_n4 =g= 0;
profit_n5 .. -0.25*(alpha_n5 - 2*beta*q_n5 - c) + lambda_n5 =g= 0;
profit_n6 .. -0.25*(alpha_n6 - 2*beta*q_n6 - c) + lambda_n6 =g= 0;

capacity_n0 .. -q_n0 + K0 =g= 0;
capacity_n1 .. -q_n1 + K_n1 =g= 0;
capacity_n2 .. -q_n2 + K_n2 =g= 0;
capacity_n3 .. -q_n3 + K_n3 =g= 0;
capacity_n4 .. -q_n4 + K_n4 =g= 0;
capacity_n5 .. -q_n5 + K_n5 =g= 0;
capacity_n6 .. -q_n6 + K_n6 =g= 0;

state_n1 .. K_n1 - K0 - In_n0 =e= 0;
state_n2 .. K_n2 - K0 - In_n0 =e= 0;
state_n3 .. K_n3 - K_n1 - In_n1 =e= 0;
state_n4 .. K_n4 - K_n1 - In_n1 =e= 0;
state_n5 .. K_n5 - K_n2 - In_n2 =e= 0;
state_n6 .. K_n6 - K_n2 - In_n2 =e= 0;

state2_n1 .. -lambda_n1 + phi_n1 =g= 0;
state2_n2 .. -lambda_n2 + phi_n2 =g= 0;
state2_n3 .. -lambda_n3 + phi_n3 =g= 0;
state2_n4 .. -lambda_n4 + phi_n4 =g= 0;
state2_n5 .. -lambda_n5 + phi_n5 =g= 0;
state2_n6 .. -lambda_n6 + phi_n6 =g= 0;

state3_n0 .. F - phi_n1 - phi_n2 =g= 0;
state3_n1 .. 0.5*F - phi_n3 - phi_n4 =g= 0;
state3_n2 .. 0.5*F - phi_n5 - phi_n6 =g= 0;

model monop /profit_n0.q_n0,
             profit_n1.q_n1,
             profit_n2.q_n2,
             profit_n3.q_n3,
             profit_n4.q_n4,
             profit_n5.q_n5,
             profit_n6.q_n6,
             capacity_n0.lambda_n0,
             capacity_n1.lambda_n1,
             capacity_n2.lambda_n2,
             capacity_n3.lambda_n3,
             capacity_n4.lambda_n4,
             capacity_n5.lambda_n5,
             capacity_n6.lambda_n6,
             state_n1,
             state_n2,
             state_n3,
             state_n4,
             state_n5,
             state_n6,
             state2_n1.K_n1,
             state2_n2.K_n2,
             state2_n3.K_n3,
             state2_n4.K_n4,
             state2_n5.K_n5,
             state2_n6.K_n6,
             state3_n0.In_n0,
             state3_n1.In_n1,
             state3_n2.In_n2
             /;

Parameters
alpha_n0    /100/
alpha_n1    /105/
alpha_n2    /95/
alpha_n3    /110/
alpha_n4    /102/
alpha_n5    /99/
alpha_n6    /93/
beta     /0.75/
K0       /50/
c        /3/
F        /2/
;


Solve monop using mcp;