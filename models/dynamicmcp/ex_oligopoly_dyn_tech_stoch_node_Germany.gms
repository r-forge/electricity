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
nu                 scrap value
rho                depreciation
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
marketprice           market price
marketprice_n1           market price
marketquantity       market quantity
marketquantity_n1       market quantity
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
totprof(i,j) total profit
marketpr market price
marketpr_n1 market price
marketq  market quantity
marketq_n1  market quantity
;

profit_n0(i,j) .. -alpha_n0 + beta*sum((l,m),q_n0(l,m)) + beta*sum(m,q_n0(i,m)) + c(j) + lambda_n0(i,j) =g= 0;
profit_n1(i,j) .. -0.5*(alpha_n1 - beta*sum((l,m),q_n1(l,m)) - beta*sum(m,q_n1(i,m)) - c(j)) + lambda_n1(i,j) =g= 0;
profit_n2(i,j) .. -0.5*(alpha_n2 - beta*sum((l,m),q_n2(l,m)) - beta*sum(m,q_n2(i,m)) - c(j)) + lambda_n2(i,j) =g= 0;

capacity_n0(i,j) .. -q_n0(i,j) + K0(i,j) =g= 0;
capacity_n1(i,j) .. -q_n1(i,j) + K_n1(i,j) =g= 0;
capacity_n2(i,j) .. -q_n2(i,j) + K_n1(i,j) =g= 0;

state_n1(i,j) .. K_n1(i,j) - K0(i,j)*(1-rho) - In_n0(i,j) =e= 0;
state_n2(i,j) .. K_n2(i,j) - K0(i,j)*(1-rho) - In_n0(i,j) =e= 0;

state2_n1(i,j) .. -lambda_n1(i,j) + phi_n1(i,j) -0.5*F(j)*nu =g= 0;
state2_n2(i,j) .. -lambda_n2(i,j) + phi_n2(i,j) -0.5*F(j)*nu =g= 0;

state3(i,j) .. F(j) - phi_n1(i,j) - phi_n2(i,j) =g= 0;

marketprice .. marketpr =e= (alpha_n0 - beta*sum((l,m),q_n0(l,m)));
marketprice_n1 .. marketpr_n1 =e= (alpha_n1 - beta*sum((l,m),q_n1(l,m)));
marketquantity .. marketq =e= sum((l,m),q_n0(l,m));
marketquantity_n1 .. marketq_n1 =e= sum((l,m),q_n1(l,m));


model oligop /profit_n0.q_n0,
             profit_n1.q_n1,
             profit_n2.q_n2,
             capacity_n0.lambda_n0,
             capacity_n1.lambda_n1,
             capacity_n2.lambda_n2,
             state_n1,
             state_n2,
             state2_n1.K_n1,
             state2_n2.K_n2,
             state3.In_n0,
             marketprice, marketquantity, marketprice_n1, marketquantity_n1
             /;

*$include "G:\electricity\models\dynamicmcp\test.inc" ;
$include "G:\electricity\models\dynamicmcp\germany_twostep.inc" ;


Solve oligop using mcp;

