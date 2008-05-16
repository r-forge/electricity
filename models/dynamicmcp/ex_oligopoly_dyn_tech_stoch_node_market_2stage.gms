Sets
i        players
j        technologies
s        market states
;


Alias(i,l);
Alias(j,m);
Alias(s,w);

Parameters
alpha_n0(s)           demand function intercept t=0
alpha_n1(s)           demand function intercept t=1
alpha_n2(s)           demand function intercept t=1
beta(s)               demand function slope
K0(i,j)            capacity constraint
c(j)               variable costs
F(j)               capacity costs
nu                 scrap value
rho                depreciation
pm(s)              probability of market state
;

Equations
profit_n0(i,j,s)           profit function t=0
profit_n1(i,j,s)           profit function t=1
profit_n2(i,j,s)           profit function t=1
capacity_n0(i,j,s)         capacity constraint t=0
capacity_n1(i,j,s)         capacity constraint t=1
capacity_n2(i,j,s)         capacity constraint t=1
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
q_n0(i,j,s)          quantity t=0
q_n1(i,j,s)          quantity t=1
q_n2(i,j,s)          quantity t=1
lambda_n0(i,j,s)     capacity constraint t=0
lambda_n1(i,j,s)     capacity constraint t=1
lambda_n2(i,j,s)     capacity constraint t=1
K_n1(i,j)          capacity
K_n2(i,j)          capacity
In_n0(i,j)         investments t=0
;

Free Variable
phi_n1(i,j)   state
phi_n2(i,j)   state
totprof(i,j) total profit
marketpr(s) market price
marketpr_n1(s) market price
marketq(s)  market quantity
marketq_n1(s)  market quantity
;

profit_n0(i,j,s) .. -pm(s)*(alpha_n0(s) - beta(s)*sum((l,m),q_n0(l,m,s)) - beta(s)*sum(m,q_n0(i,m,s)) - c(j)) + lambda_n0(i,j,s) =g= 0;
profit_n1(i,j,s) .. -0.5*pm(s)*((alpha_n1(s) - beta(s)*sum((l,m),q_n1(l,m,s)) - beta(s)*sum(m,q_n1(i,m,s)) - c(j))) + lambda_n1(i,j,s) =g= 0;
profit_n2(i,j,s) .. -0.5*pm(s)*((alpha_n2(s) - beta(s)*sum((l,m),q_n2(l,m,s)) - beta(s)*sum(m,q_n2(i,m,s)) - c(j))) + lambda_n2(i,j,s) =g= 0;

capacity_n0(i,j,s) .. -q_n0(i,j,s) + K0(i,j) =g= 0;
capacity_n1(i,j,s) .. -q_n1(i,j,s) + K_n1(i,j) =g= 0;
capacity_n2(i,j,s) .. -q_n2(i,j,s) + K_n1(i,j) =g= 0;

state_n1(i,j) .. K_n1(i,j) - K0(i,j)*(1-rho) - In_n0(i,j) =e= 0;
state_n2(i,j) .. K_n2(i,j) - K0(i,j)*(1-rho) - In_n0(i,j) =e= 0;

state2_n1(i,j) .. -sum(s,lambda_n1(i,j,s)) + phi_n1(i,j) -0.5*F(j)*nu =g= 0;
state2_n2(i,j) .. -sum(s,lambda_n2(i,j,s)) + phi_n2(i,j) -0.5*F(j)*nu =g= 0;

state3(i,j) .. F(j) - phi_n1(i,j) - phi_n2(i,j) =g= 0;

marketprice(s) .. marketpr(s) =e= (alpha_n0(s) - beta(s)*sum((l,m),q_n0(l,m,s)));
marketprice_n1(s) .. marketpr_n1(s) =e= (alpha_n1(s) - beta(s)*sum((l,m),q_n1(l,m,s)));
marketquantity(s) .. marketq(s) =e= sum((l,m),q_n0(l,m,s));
marketquantity_n1(s) .. marketq_n1(s) =e= sum((l,m),q_n1(l,m,s));



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

*$include "G:\electricity\models\dynamicmcp\test_states.inc" ;
*$include "E:\WORK\electricity\models\dynamicmcp\test_states.inc" ;

*$include "G:\electricity\models\dynamicmcp\germany_twostep.inc" ;
$include "E:\WORK\electricity\models\dynamicmcp\germany_twostep_states.inc" ;

Solve oligop using mcp;