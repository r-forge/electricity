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
alpha_n3           demand function intercept t=2
alpha_n4           demand function intercept t=1
alpha_n5           demand function intercept t=1
alpha_n6           demand function intercept t=1
beta               demand function slope
K0(i,j)            capacity constraint
c(j)               variable costs
F(j)               capacity costs
delta1             discount factor t=1
delta2             discount factor t=2
nu                 scrap value parameter
;

Equations
profit_n0(i,j)           profit function t=0
profit_n1(i,j)           profit function t=1
profit_n2(i,j)           profit function t=1
profit_n3(i,j)           profit function t=2
profit_n4(i,j)           profit function t=2
profit_n5(i,j)           profit function t=2
profit_n6(i,j)           profit function t=2
capacity_n0(i,j)         capacity constraint t=0
capacity_n1(i,j)         capacity constraint t=1
capacity_n2(i,j)         capacity constraint t=1
capacity_n3(i,j)         capacity constraint t=2
capacity_n4(i,j)         capacity constraint t=2
capacity_n5(i,j)         capacity constraint t=2
capacity_n6(i,j)         capacity constraint t=2
state_n1(i,j)            state equation t=1
state_n2(i,j)            state equation t=1
state_n3(i,j)            state equation t=2
state_n4(i,j)            state equation t=2
state_n5(i,j)            state equation t=2
state_n6(i,j)            state equation t=2
state2_n1(i,j)           state equation (K1)
state2_n2(i,j)           state equation (K1)
state2_n3(i,j)           state equation (K2)
state2_n4(i,j)           state equation (K2)
state2_n5(i,j)           state equation (K2)
state2_n6(i,j)           state equation (K2)
state3_n0(i,j)           state equation (I0)
state3_n1(i,j)           state equation (I1)
state3_n2(i,j)           state equation (I1)
;

Positive Variables
q_n0(i,j)          quantity t=0
q_n1(i,j)          quantity t=1
q_n2(i,j)          quantity t=1
q_n3(i,j)          quantity t=2
q_n4(i,j)          quantity t=2
q_n5(i,j)          quantity t=2
q_n6(i,j)          quantity t=2
lambda_n0(i,j)     capacity constraint t=0
lambda_n1(i,j)     capacity constraint t=1
lambda_n2(i,j)     capacity constraint t=1
lambda_n3(i,j)     capacity constraint t=2
lambda_n4(i,j)     capacity constraint t=2
lambda_n5(i,j)     capacity constraint t=2
lambda_n6(i,j)     capacity constraint t=2
K_n1(i,j)          capacity
K_n2(i,j)          capacity
K_n3(i,j)          capacity
K_n4(i,j)          capacity
K_n5(i,j)          capacity
K_n6(i,j)          capacity
In_n0(i,j)         investments t=0
In_n1(i,j)         investments t=1
In_n2(i,j)         investments t=2
;

Free Variable
phi_n1(i,j)   state
phi_n2(i,j)   state
phi_n3(i,j)   state
phi_n4(i,j)   state
phi_n5(i,j)   state
phi_n6(i,j)   state
;

profit_n0(i,j) .. -alpha_n0 + beta*sum((l,m),q_n0(l,m)) + beta*sum(m,q_n0(i,m)) + c(j) + lambda_n0(i,j) =g= 0;
profit_n1(i,j) .. -0.5*delta1*(alpha_n1 - beta*sum((l,m),q_n1(l,m)) - beta*sum(m,q_n1(i,m)) - c(j)) + lambda_n1(i,j) =g= 0;
profit_n2(i,j) .. -0.5*delta1*(alpha_n2 - beta*sum((l,m),q_n2(l,m)) - beta*sum(m,q_n2(i,m)) - c(j)) + lambda_n2(i,j) =g= 0;
profit_n3(i,j) .. -0.25*delta2*(alpha_n3 - beta*sum((l,m),q_n3(l,m)) - beta*sum(m,q_n3(i,m)) - c(j)) + lambda_n3(i,j) =g= 0;
profit_n4(i,j) .. -0.25*delta2*(alpha_n4 - beta*sum((l,m),q_n4(l,m)) - beta*sum(m,q_n4(i,m)) - c(j)) + lambda_n4(i,j) =g= 0;
profit_n5(i,j) .. -0.25*delta2*(alpha_n5 - beta*sum((l,m),q_n5(l,m)) - beta*sum(m,q_n5(i,m)) - c(j)) + lambda_n5(i,j) =g= 0;
profit_n6(i,j) .. -0.25*delta2*(alpha_n6 - beta*sum((l,m),q_n6(l,m)) - beta*sum(m,q_n6(i,m)) - c(j)) + lambda_n6(i,j) =g= 0;

capacity_n0(i,j) .. -q_n0(i,j) + K0(i,j) =g= 0;
capacity_n1(i,j) .. -q_n1(i,j) + K_n1(i,j) =g= 0;
capacity_n2(i,j) .. -q_n2(i,j) + K_n2(i,j) =g= 0;
capacity_n3(i,j) .. -q_n3(i,j) + K_n3(i,j) =g= 0;
capacity_n4(i,j) .. -q_n4(i,j) + K_n4(i,j) =g= 0;
capacity_n5(i,j) .. -q_n5(i,j) + K_n5(i,j) =g= 0;
capacity_n6(i,j) .. -q_n6(i,j) + K_n6(i,j) =g= 0;

state_n1(i,j) .. K_n1(i,j) - K0(i,j) - In_n0(i,j) =e= 0;
state_n2(i,j) .. K_n2(i,j) - K0(i,j) - In_n0(i,j) =e= 0;
state_n3(i,j) .. K_n3(i,j) - K_n1(i,j) - In_n1(i,j) =e= 0;
state_n4(i,j) .. K_n4(i,j) - K_n1(i,j) - In_n1(i,j) =e= 0;
state_n5(i,j) .. K_n5(i,j) - K_n2(i,j) - In_n2(i,j) =e= 0;
state_n6(i,j) .. K_n6(i,j) - K_n2(i,j) - In_n2(i,j) =e= 0;

state2_n1(i,j) .. -lambda_n1(i,j) + phi_n1(i,j) =g= 0;
state2_n2(i,j) .. -lambda_n2(i,j) + phi_n2(i,j) =g= 0;
state2_n3(i,j) .. -lambda_n3(i,j) + phi_n3(i,j) -0.25*delta2*F(j)*nu =g= 0;
state2_n4(i,j) .. -lambda_n4(i,j) + phi_n4(i,j) -0.25*delta2*F(j)*nu =g= 0;
state2_n5(i,j) .. -lambda_n5(i,j) + phi_n5(i,j) -0.25*delta2*F(j)*nu =g= 0;
state2_n6(i,j) .. -lambda_n6(i,j) + phi_n6(i,j) -0.25*delta2*F(j)*nu =g= 0;

state3_n0(i,j) .. F(j) - phi_n1(i,j) - phi_n2(i,j) =g= 0;
state3_n1(i,j) .. 0.5*delta1*F(j) - phi_n3(i,j) - phi_n4(i,j) =g= 0;
state3_n2(i,j) .. 0.5*delta1*F(j) - phi_n5(i,j) - phi_n6(i,j) =g= 0;
state3_n3(i,j) .. 0.25*delta2*F(j) - phi_n7(i,j) - phi_n8(i,j) =g= 0;
state3_n4(i,j) .. 0.25*delta2*F(j) - phi_n9(i,j) - phi_n10(i,j) =g= 0;
state3_n5(i,j) .. 0.25*delta2*F(j) - phi_n11(i,j) - phi_n12(i,j) =g= 0;
state3_n6(i,j) .. 0.25*delta2*F(j) - phi_n13(i,j) - phi_n14(i,j) =g= 0;

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

Sets
i        /Player1, Player2, Player3/
j        /Tech1, Tech2/
;

Parameters
alpha_n0    /100/
alpha_n1    /105/
alpha_n2    /95/
alpha_n3    /110/
alpha_n4    /108/
alpha_n5    /106/
alpha_n6    /93/
beta        /0.75/
delta1      /0.9708738/
delta2      /0.942596/
nu          /0.95/
;


Table K0(i,j)
                      Tech1     Tech2
          Player1      25       15
          Player2      8        20
          Player3      0        10
;


Parameter c(j)           /
                         Tech1    2
                         Tech2    1
                         /;

Parameter F(j)          /
                         Tech1   2
                         Tech2   2.1
                        /;

Solve monop using mcp;