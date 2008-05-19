Sets
i        players
j        technologies
s        market states
;

Alias(i,l);
Alias(j,m);
Alias(s,w);

Parameters
rho                depreciation rate

alpha_n0(s)           demand function intercept t=0
alpha_n1(s)           demand function intercept t=1
alpha_n2(s)           demand function intercept t=1
alpha_n3(s)           demand function intercept t=2
alpha_n4(s)           demand function intercept t=2
alpha_n5(s)           demand function intercept t=2
alpha_n6(s)           demand function intercept t=2
beta(s)            demand function slope
K0(i,j)            capacity constraint
c(j)               variable costs
F(j)               capacity costs
delta1             discount factor t=1
delta2             discount factor t=2
delta3             discount factor t=3
nu                 scrap value parameter
pm(s)              probability of market state
;

Equations
profit_n0(i,j,s)           profit function t=0
profit_n1(i,j,s)           profit function t=1
profit_n2(i,j,s)           profit function t=1
profit_n3(i,j,s)           profit function t=2
profit_n4(i,j,s)           profit function t=2
profit_n5(i,j,s)           profit function t=2
profit_n6(i,j,s)           profit function t=2

capacity_n0(i,j,s)           capacity constraint t=0
capacity_n1(i,j,s)           capacity constraint t=1
capacity_n2(i,j,s)           capacity constraint t=1
capacity_n3(i,j,s)           capacity constraint t=2
capacity_n4(i,j,s)           capacity constraint t=2
capacity_n5(i,j,s)           capacity constraint t=2
capacity_n6(i,j,s)           capacity constraint t=2

state_n1(i,j)           state equation t=1
state_n2(i,j)           state equation t=1
state_n3(i,j)           state equation t=2
state_n4(i,j)           state equation t=2
state_n5(i,j)           state equation t=2
state_n6(i,j)           state equation t=2

state2_n1(i,j)           state equation K1
state2_n2(i,j)           state equation K1
state2_n3(i,j)           state equation K2
state2_n4(i,j)           state equation K2
state2_n5(i,j)           state equation K2
state2_n6(i,j)           state equation K2

state3_n0(i,j)           state equation I0
state3_n1(i,j)           state equation I1
state3_n2(i,j)           state equation I1
;

Positive Variables
q_n0(i,j,s)          quantity t=0
q_n1(i,j,s)          quantity t=1
q_n2(i,j,s)          quantity t=1
q_n3(i,j,s)          quantity t=2
q_n4(i,j,s)          quantity t=2
q_n5(i,j,s)          quantity t=2
q_n6(i,j,s)          quantity t=2

lambda_n0(i,j,s)     capacity constraint t=0
lambda_n1(i,j,s)     capacity constraint t=1
lambda_n2(i,j,s)     capacity constraint t=1
lambda_n3(i,j,s)     capacity constraint t=2
lambda_n4(i,j,s)     capacity constraint t=2
lambda_n5(i,j,s)     capacity constraint t=2
lambda_n6(i,j,s)     capacity constraint t=2


K_n1(i,j)           capacity  t=1
K_n2(i,j)           capacity  t=1
K_n3(i,j)           capacity  t=2
K_n4(i,j)           capacity  t=2
K_n5(i,j)           capacity  t=2
K_n6(i,j)           capacity  t=2

In_n0(i,j)           investments t=0
In_n1(i,j)           investments t=1
In_n2(i,j)           investments t=1
;

Free Variable
phi_n1(i,j)   state
phi_n2(i,j)   state
phi_n3(i,j)   state
phi_n4(i,j)   state
phi_n5(i,j)   state
phi_n6(i,j)   state
;

profit_n0(i,j,s) .. -pm(s)*(alpha_n0(s) - beta(s)*sum((l,m),q_n0(l,m,s)) - beta(s)*sum(m,q_n0(i,m,s)) + c(j)) + lambda_n0(i,j,s) =g= 0;
profit_n1(i,j,s) .. -0.5*delta1*pm(s)*(alpha_n1(s) - beta(s)*sum((l,m),q_n1(l,m,s)) - beta(s)*sum(m,q_n1(i,m,s)) - c(j)) + lambda_n1(i,j,s) =g= 0;
profit_n2(i,j,s) .. -0.5*delta1*pm(s)*(alpha_n2(s) - beta(s)*sum((l,m),q_n2(l,m,s)) - beta(s)*sum(m,q_n2(i,m,s)) - c(j)) + lambda_n2(i,j,s) =g= 0;
profit_n3(i,j,s) .. -0.25*delta2*pm(s)*(alpha_n3(s) - beta(s)*sum((l,m),q_n3(l,m,s)) - beta(s)*sum(m,q_n3(i,m,s)) - c(j)) + lambda_n3(i,j,s) =g= 0;
profit_n4(i,j,s) .. -0.25*delta2*pm(s)*(alpha_n4(s) - beta(s)*sum((l,m),q_n4(l,m,s)) - beta(s)*sum(m,q_n4(i,m,s)) - c(j)) + lambda_n4(i,j,s) =g= 0;
profit_n5(i,j,s) .. -0.25*delta2*pm(s)*(alpha_n5(s) - beta(s)*sum((l,m),q_n5(l,m,s)) - beta(s)*sum(m,q_n5(i,m,s)) - c(j)) + lambda_n5(i,j,s) =g= 0;
profit_n6(i,j,s) .. -0.25*delta2*pm(s)*(alpha_n6(s) - beta(s)*sum((l,m),q_n6(l,m,s)) - beta(s)*sum(m,q_n6(i,m,s)) - c(j)) + lambda_n6(i,j,s) =g= 0;

capacity_n0(i,j,s) .. -q_n0(i,j,s) + K0(i,j) =g= 0;
capacity_n1(i,j,s) .. -q_n1(i,j,s) + K_n1(i,j) =g= 0;
capacity_n2(i,j,s) .. -q_n2(i,j,s) + K_n2(i,j) =g= 0;
capacity_n3(i,j,s) .. -q_n3(i,j,s) + K_n3(i,j) =g= 0;
capacity_n4(i,j,s) .. -q_n4(i,j,s) + K_n4(i,j) =g= 0;
capacity_n5(i,j,s) .. -q_n5(i,j,s) + K_n5(i,j) =g= 0;
capacity_n6(i,j,s) .. -q_n6(i,j,s) + K_n6(i,j) =g= 0;

state_n1(i,j) .. K_n1(i,j) - (1-rho)*K0(i,j) - In_n0(i,j) =e= 0;
state_n2(i,j) .. K_n2(i,j) - (1-rho)*K0(i,j) - In_n0(i,j) =e= 0;
state_n3(i,j) .. K_n3(i,j) - (1-rho)*K_n1(i,j) - In_n1(i,j) =e= 0;
state_n4(i,j) .. K_n4(i,j) - (1-rho)*K_n1(i,j) - In_n1(i,j) =e= 0;
state_n5(i,j) .. K_n5(i,j) - (1-rho)*K_n2(i,j) - In_n2(i,j) =e= 0;
state_n6(i,j) .. K_n6(i,j) - (1-rho)*K_n2(i,j) - In_n2(i,j) =e= 0;

state2_n1(i,j) .. -sum(s,lambda_n1(i,j,s)) + phi_n1(i,j) =g= 0;
state2_n2(i,j) .. -sum(s,lambda_n2(i,j,s)) + phi_n2(i,j) =g= 0;
state2_n3(i,j) .. -sum(s,lambda_n3(i,j,s)) + phi_n3(i,j) -0.25*delta2*F(j)*nu =g= 0;
state2_n4(i,j) .. -sum(s,lambda_n4(i,j,s)) + phi_n4(i,j) -0.25*delta2*F(j)*nu =g= 0;
state2_n5(i,j) .. -sum(s,lambda_n5(i,j,s)) + phi_n5(i,j) -0.25*delta2*F(j)*nu =g= 0;
state2_n6(i,j) .. -sum(s,lambda_n6(i,j,s)) + phi_n6(i,j) -0.25*delta2*F(j)*nu =g= 0;

state3_n0(i,j) .. F(j) - phi_n1(i,j) - phi_n2(i,j) =g= 0;
state3_n1(i,j) .. 0.5*delta1*F(j) - phi_n3(i,j) - phi_n4(i,j) =g= 0;
state3_n2(i,j) .. 0.5*delta1*F(j) - phi_n5(i,j) - phi_n6(i,j) =g= 0;


model oligop /
profit_n0.q_n0,
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
state3_n2.In_n2,
/;

*$include "G:\electricity\models\dynamicmcp\test_5stage_states.inc" ;
*$include "E:\WORK\electricity\models\dynamicmcp\test_5stage_states.inc" ;
*$include "G:\electricity\models\dynamicmcp\germany_5stage_states.inc" ;
*$include "G:\electricity\models\dynamicmcp\germany_5stage_p.inc" ;
*$include "E:\WORK\electricity\models\dynamicmcp\germany_5stage_states.inc" ;


*$include "E:\WORK\electricity\models\dynamicmcp\finalmodel\test_3stage_states.inc" ;
$include "E:\WORK\electricity\models\dynamicmcp\finalmodel\germany_3stage_states.inc" ;

*oligop.optfile = 1;
*option mcp=kestrel;
option iterlim = 300000;
option reslim = 10000;
Solve oligop using mcp;

Execute_Unload 'results.gdx', In_n0.l;
Execute 'GDXXRW.EXE results.gdx var=In_n0.l rng=Investments!a1 Rdim=1';

*file results /results.csv/;
*results.pc=5;
*put "Model status", oligop.modelstat/;
*putclose;