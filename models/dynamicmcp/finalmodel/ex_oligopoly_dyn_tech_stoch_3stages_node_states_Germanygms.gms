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
alpha_n7(s)           demand function intercept t=3
alpha_n8(s)           demand function intercept t=3
alpha_n9(s)           demand function intercept t=3
alpha_n10(s)          demand function intercept t=3
alpha_n11(s)          demand function intercept t=3
alpha_n12(s)          demand function intercept t=3
alpha_n13(s)          demand function intercept t=3
alpha_n14(s)          demand function intercept t=3
alpha_n15(s)          demand function intercept t=4
alpha_n16(s)          demand function intercept t=4
alpha_n17(s)          demand function intercept t=4
alpha_n18(s)          demand function intercept t=4
alpha_n19(s)          demand function intercept t=4
alpha_n20(s)          demand function intercept t=4
alpha_n21(s)          demand function intercept t=4
alpha_n22(s)          demand function intercept t=4
alpha_n23(s)          demand function intercept t=4
alpha_n24(s)          demand function intercept t=4
alpha_n25(s)          demand function intercept t=4
alpha_n26(s)          demand function intercept t=4
alpha_n27(s)          demand function intercept t=4
alpha_n28(s)          demand function intercept t=4
alpha_n29(s)          demand function intercept t=4
alpha_n30(s)          demand function intercept t=4
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
profit_n7(i,j,s)           profit function t=3
profit_n8(i,j,s)           profit function t=3
profit_n9(i,j,s)           profit function t=3
profit_n10(i,j,s)          profit function t=3
profit_n11(i,j,s)          profit function t=3
profit_n12(i,j,s)          profit function t=3
profit_n13(i,j,s)          profit function t=3
profit_n14(i,j,s)          profit function t=3

capacity_n0(i,j,s)           capacity constraint t=0
capacity_n1(i,j,s)           capacity constraint t=1
capacity_n2(i,j,s)           capacity constraint t=1
capacity_n3(i,j,s)           capacity constraint t=2
capacity_n4(i,j,s)           capacity constraint t=2
capacity_n5(i,j,s)           capacity constraint t=2
capacity_n6(i,j,s)           capacity constraint t=2
capacity_n7(i,j,s)           capacity constraint t=3
capacity_n8(i,j,s)           capacity constraint t=3
capacity_n9(i,j,s)           capacity constraint t=3
capacity_n10(i,j,s)          capacity constraint t=3
capacity_n11(i,j,s)          capacity constraint t=3
capacity_n12(i,j,s)          capacity constraint t=3
capacity_n13(i,j,s)          capacity constraint t=3
capacity_n14(i,j,s)          capacity constraint t=3

state_n1(i,j)           state equation t=1
state_n2(i,j)           state equation t=1
state_n3(i,j)           state equation t=2
state_n4(i,j)           state equation t=2
state_n5(i,j)           state equation t=2
state_n6(i,j)           state equation t=2
state_n7(i,j)           state equation t=3
state_n8(i,j)           state equation t=3
state_n9(i,j)           state equation t=3
state_n10(i,j)          state equation t=3
state_n11(i,j)          state equation t=3
state_n12(i,j)          state equation t=3
state_n13(i,j)          state equation t=3
state_n14(i,j)          state equation t=3

state2_n1(i,j)           state equation K1
state2_n2(i,j)           state equation K1
state2_n3(i,j)           state equation K2
state2_n4(i,j)           state equation K2
state2_n5(i,j)           state equation K2
state2_n6(i,j)           state equation K2
state2_n7(i,j)           state equation K3
state2_n8(i,j)           state equation K3
state2_n9(i,j)           state equation K3
state2_n10(i,j)          state equation K3
state2_n11(i,j)          state equation K3
state2_n12(i,j)          state equation K3
state2_n13(i,j)          state equation K3
state2_n14(i,j)          state equation K3

state3_n0(i,j)           state equation I0
state3_n1(i,j)           state equation I1
state3_n2(i,j)           state equation I1
state3_n3(i,j)           state equation I2
state3_n4(i,j)           state equation I2
state3_n5(i,j)           state equation I2
state3_n6(i,j)           state equation I2
state3_n7(i,j)           state equation I3
state3_n8(i,j)           state equation I3
state3_n9(i,j)           state equation I3
state3_n10(i,j)          state equation I3
state3_n11(i,j)          state equation I3
state3_n12(i,j)          state equation I3
state3_n13(i,j)          state equation I3
state3_n14(i,j)          state equation I3
;

Positive Variables
q_n0(i,j,s)          quantity t=0
q_n1(i,j,s)          quantity t=1
q_n2(i,j,s)          quantity t=1
q_n3(i,j,s)          quantity t=2
q_n4(i,j,s)          quantity t=2
q_n5(i,j,s)          quantity t=2
q_n6(i,j,s)          quantity t=2
q_n7(i,j,s)           quantity t=3
q_n8(i,j,s)           quantity t=3
q_n9(i,j,s)           quantity t=3
q_n10(i,j,s)          quantity t=3
q_n11(i,j,s)          quantity t=3
q_n12(i,j,s)          quantity t=3
q_n13(i,j,s)          quantity t=3
q_n14(i,j,s)          quantity t=3
q_n15(i,j,s)          quantity t=4
q_n16(i,j,s)          quantity t=4
q_n17(i,j,s)          quantity t=4
q_n18(i,j,s)          quantity t=4
q_n19(i,j,s)          quantity t=4
q_n20(i,j,s)          quantity t=4
q_n21(i,j,s)          quantity t=4
q_n22(i,j,s)          quantity t=4
q_n23(i,j,s)          quantity t=4
q_n24(i,j,s)          quantity t=4
q_n25(i,j,s)          quantity t=4
q_n26(i,j,s)          quantity t=4
q_n27(i,j,s)          quantity t=4
q_n28(i,j,s)          quantity t=4
q_n29(i,j,s)          quantity t=4
q_n30(i,j,s)          quantity t=4

lambda_n0(i,j,s)     capacity constraint t=0
lambda_n1(i,j,s)     capacity constraint t=1
lambda_n2(i,j,s)     capacity constraint t=1
lambda_n3(i,j,s)     capacity constraint t=2
lambda_n4(i,j,s)     capacity constraint t=2
lambda_n5(i,j,s)     capacity constraint t=2
lambda_n6(i,j,s)     capacity constraint t=2
lambda_n7(i,j,s)           capacity constraint t=3
lambda_n8(i,j,s)           capacity constraint t=3
lambda_n9(i,j,s)           capacity constraint t=3
lambda_n10(i,j,s)          capacity constraint t=3
lambda_n11(i,j,s)          capacity constraint t=3
lambda_n12(i,j,s)          capacity constraint t=3
lambda_n13(i,j,s)          capacity constraint t=3
lambda_n14(i,j,s)          capacity constraint t=3
lambda_n15(i,j,s)          capacity constraint t=4
lambda_n16(i,j,s)          capacity constraint t=4
lambda_n17(i,j,s)          capacity constraint t=4
lambda_n18(i,j,s)          capacity constraint t=4
lambda_n19(i,j,s)          capacity constraint t=4
lambda_n20(i,j,s)          capacity constraint t=4
lambda_n21(i,j,s)          capacity constraint t=4
lambda_n22(i,j,s)          capacity constraint t=4
lambda_n23(i,j,s)          capacity constraint t=4
lambda_n24(i,j,s)          capacity constraint t=4
lambda_n25(i,j,s)          capacity constraint t=4
lambda_n26(i,j,s)          capacity constraint t=4
lambda_n27(i,j,s)          capacity constraint t=4
lambda_n28(i,j,s)          capacity constraint t=4
lambda_n29(i,j,s)          capacity constraint t=4
lambda_n30(i,j,s)          capacity constraint t=4

K_n1(i,j)           capacity  t=1
K_n2(i,j)           capacity  t=1
K_n3(i,j)           capacity  t=2
K_n4(i,j)           capacity  t=2
K_n5(i,j)           capacity  t=2
K_n6(i,j)           capacity  t=2
K_n7(i,j)           capacity  t=3
K_n8(i,j)           capacity  t=3
K_n9(i,j)           capacity  t=3
K_n10(i,j)          capacity  t=3
K_n11(i,j)          capacity  t=3
K_n12(i,j)          capacity  t=3
K_n13(i,j)          capacity  t=3
K_n14(i,j)          capacity  t=3
K_n15(i,j)          capacity  t=4
K_n16(i,j)          capacity  t=4
K_n17(i,j)          capacity  t=4
K_n18(i,j)          capacity  t=4
K_n19(i,j)          capacity  t=4
K_n20(i,j)          capacity  t=4
K_n21(i,j)          capacity  t=4
K_n22(i,j)          capacity  t=4
K_n23(i,j)          capacity  t=4
K_n24(i,j)          capacity  t=4
K_n25(i,j)          capacity  t=4
K_n26(i,j)          capacity  t=4
K_n27(i,j)          capacity  t=4
K_n28(i,j)          capacity  t=4
K_n29(i,j)          capacity  t=4
K_n30(i,j)          capacity  t=4

In_n0(i,j)           investments t=0
In_n1(i,j)           investments t=1
In_n2(i,j)           investments t=1
In_n3(i,j)           investments t=2
In_n4(i,j)           investments t=2
In_n5(i,j)           investments t=2
In_n6(i,j)           investments t=2
;

Free Variable
phi_n1(i,j)   state
phi_n2(i,j)   state
phi_n3(i,j)   state
phi_n4(i,j)   state
phi_n5(i,j)   state
phi_n6(i,j)   state
phi_n7(i,j)           state  t=3
phi_n8(i,j)           state  t=3
phi_n9(i,j)           state  t=3
phi_n10(i,j)          state  t=3
phi_n11(i,j)          state  t=3
phi_n12(i,j)          state  t=3
phi_n13(i,j)          state  t=3
phi_n14(i,j)          state  t=3
;

profit_n0(i,j,s) .. -pm(s)*(alpha_n0(s) - beta(s)*sum((l,m),q_n0(l,m,s)) - beta(s)*sum(m,q_n0(i,m,s)) + c(j)) + lambda_n0(i,j,s) =g= 0;
profit_n1(i,j,s) .. -0.5*delta1*pm(s)*(alpha_n1(s) - beta(s)*sum((l,m),q_n1(l,m,s)) - beta(s)*sum(m,q_n1(i,m,s)) - c(j)) + lambda_n1(i,j,s) =g= 0;
profit_n2(i,j,s) .. -0.5*delta1*pm(s)*(alpha_n2(s) - beta(s)*sum((l,m),q_n2(l,m,s)) - beta(s)*sum(m,q_n2(i,m,s)) - c(j)) + lambda_n2(i,j,s) =g= 0;
profit_n3(i,j,s) .. -0.25*delta2*pm(s)*(alpha_n3(s) - beta(s)*sum((l,m),q_n3(l,m,s)) - beta(s)*sum(m,q_n3(i,m,s)) - c(j)) + lambda_n3(i,j,s) =g= 0;
profit_n4(i,j,s) .. -0.25*delta2*pm(s)*(alpha_n4(s) - beta(s)*sum((l,m),q_n4(l,m,s)) - beta(s)*sum(m,q_n4(i,m,s)) - c(j)) + lambda_n4(i,j,s) =g= 0;
profit_n5(i,j,s) .. -0.25*delta2*pm(s)*(alpha_n5(s) - beta(s)*sum((l,m),q_n5(l,m,s)) - beta(s)*sum(m,q_n5(i,m,s)) - c(j)) + lambda_n5(i,j,s) =g= 0;
profit_n6(i,j,s) .. -0.25*delta2*pm(s)*(alpha_n6(s) - beta(s)*sum((l,m),q_n6(l,m,s)) - beta(s)*sum(m,q_n6(i,m,s)) - c(j)) + lambda_n6(i,j,s) =g= 0;
profit_n7(i,j,s) .. -0.125*delta3*pm(s)*(alpha_n7(s) - beta(s)*sum((l,m),q_n7(l,m,s)) - beta(s)*sum(m,q_n7(i,m,s)) - c(j)) + lambda_n7(i,j,s) =g= 0;
profit_n8(i,j,s) .. -0.125*delta3*pm(s)*(alpha_n8(s) - beta(s)*sum((l,m),q_n8(l,m,s)) - beta(s)*sum(m,q_n8(i,m,s)) - c(j)) + lambda_n8(i,j,s) =g= 0;
profit_n9(i,j,s) .. -0.125*delta3*pm(s)*(alpha_n9(s) - beta(s)*sum((l,m),q_n9(l,m,s)) - beta(s)*sum(m,q_n9(i,m,s)) - c(j)) + lambda_n9(i,j,s) =g= 0;
profit_n10(i,j,s) .. -0.125*delta3*pm(s)*(alpha_n10(s) - beta(s)*sum((l,m),q_n10(l,m,s)) - beta(s)*sum(m,q_n10(i,m,s)) - c(j)) + lambda_n10(i,j,s) =g= 0;
profit_n11(i,j,s) .. -0.125*delta3*pm(s)*(alpha_n11(s) - beta(s)*sum((l,m),q_n11(l,m,s)) - beta(s)*sum(m,q_n11(i,m,s)) - c(j)) + lambda_n11(i,j,s) =g= 0;
profit_n12(i,j,s) .. -0.125*delta3*pm(s)*(alpha_n12(s) - beta(s)*sum((l,m),q_n12(l,m,s)) - beta(s)*sum(m,q_n12(i,m,s)) - c(j)) + lambda_n12(i,j,s) =g= 0;
profit_n13(i,j,s) .. -0.125*delta3*pm(s)*(alpha_n13(s) - beta(s)*sum((l,m),q_n13(l,m,s)) - beta(s)*sum(m,q_n13(i,m,s)) - c(j)) + lambda_n13(i,j,s) =g= 0;
profit_n14(i,j,s) .. -0.125*delta3*pm(s)*(alpha_n14(s) - beta(s)*sum((l,m),q_n14(l,m,s)) - beta(s)*sum(m,q_n14(i,m,s)) - c(j)) + lambda_n14(i,j,s) =g= 0;

capacity_n0(i,j,s) .. -q_n0(i,j,s) + K0(i,j) =g= 0;
capacity_n1(i,j,s) .. -q_n1(i,j,s) + K_n1(i,j) =g= 0;
capacity_n2(i,j,s) .. -q_n2(i,j,s) + K_n2(i,j) =g= 0;
capacity_n3(i,j,s) .. -q_n3(i,j,s) + K_n3(i,j) =g= 0;
capacity_n4(i,j,s) .. -q_n4(i,j,s) + K_n4(i,j) =g= 0;
capacity_n5(i,j,s) .. -q_n5(i,j,s) + K_n5(i,j) =g= 0;
capacity_n6(i,j,s) .. -q_n6(i,j,s) + K_n6(i,j) =g= 0;
capacity_n7(i,j,s) .. -q_n7(i,j,s) + K_n7(i,j) =g= 0;
capacity_n8(i,j,s) .. -q_n8(i,j,s) + K_n8(i,j) =g= 0;
capacity_n9(i,j,s) .. -q_n9(i,j,s) + K_n9(i,j) =g= 0;
capacity_n10(i,j,s) .. -q_n10(i,j,s) + K_n10(i,j) =g= 0;
capacity_n11(i,j,s) .. -q_n11(i,j,s) + K_n11(i,j) =g= 0;
capacity_n12(i,j,s) .. -q_n12(i,j,s) + K_n12(i,j) =g= 0;
capacity_n13(i,j,s) .. -q_n13(i,j,s) + K_n13(i,j) =g= 0;
capacity_n14(i,j,s) .. -q_n14(i,j,s) + K_n14(i,j) =g= 0;

state_n1(i,j) .. K_n1(i,j) - (1-rho)*K0(i,j) - In_n0(i,j) =e= 0;
state_n2(i,j) .. K_n2(i,j) - (1-rho)*K0(i,j) - In_n0(i,j) =e= 0;
state_n3(i,j) .. K_n3(i,j) - (1-rho)*K_n1(i,j) - In_n1(i,j) =e= 0;
state_n4(i,j) .. K_n4(i,j) - (1-rho)*K_n1(i,j) - In_n1(i,j) =e= 0;
state_n5(i,j) .. K_n5(i,j) - (1-rho)*K_n2(i,j) - In_n2(i,j) =e= 0;
state_n6(i,j) .. K_n6(i,j) - (1-rho)*K_n2(i,j) - In_n2(i,j) =e= 0;
state_n7(i,j) .. K_n7(i,j) - (1-rho)*K_n3(i,j) - In_n3(i,j) =e= 0;
state_n8(i,j) .. K_n8(i,j) - (1-rho)*K_n3(i,j) - In_n3(i,j) =e= 0;
state_n9(i,j) .. K_n9(i,j) - (1-rho)*K_n4(i,j) - In_n4(i,j) =e= 0;
state_n10(i,j) .. K_n10(i,j) - (1-rho)*K_n4(i,j) - In_n4(i,j) =e= 0;
state_n11(i,j) .. K_n11(i,j) - (1-rho)*K_n5(i,j) - In_n5(i,j) =e= 0;
state_n12(i,j) .. K_n12(i,j) - (1-rho)*K_n5(i,j) - In_n5(i,j) =e= 0;
state_n13(i,j) .. K_n13(i,j) - (1-rho)*K_n6(i,j) - In_n6(i,j) =e= 0;
state_n14(i,j) .. K_n14(i,j) - (1-rho)*K_n6(i,j) - In_n6(i,j) =e= 0;

state2_n1(i,j) .. -sum(s,lambda_n1(i,j,s)) + phi_n1(i,j) =g= 0;
state2_n2(i,j) .. -sum(s,lambda_n2(i,j,s)) + phi_n2(i,j) =g= 0;
state2_n3(i,j) .. -sum(s,lambda_n3(i,j,s)) + phi_n3(i,j) =g= 0;
state2_n4(i,j) .. -sum(s,lambda_n4(i,j,s)) + phi_n4(i,j) =g= 0;
state2_n5(i,j) .. -sum(s,lambda_n5(i,j,s)) + phi_n5(i,j) =g= 0;
state2_n6(i,j) .. -sum(s,lambda_n6(i,j,s)) + phi_n6(i,j) =g= 0;
state2_n7(i,j) .. -sum(s,lambda_n7(i,j,s)) + phi_n7(i,j) -0.125*delta3*F(j)*nu =g= 0;
state2_n8(i,j) .. -sum(s,lambda_n8(i,j,s)) + phi_n8(i,j) -0.125*delta3*F(j)*nu =g= 0;
state2_n9(i,j) .. -sum(s,lambda_n9(i,j,s)) + phi_n9(i,j) -0.125*delta3*F(j)*nu =g= 0;
state2_n10(i,j) .. -sum(s,lambda_n10(i,j,s)) + phi_n10(i,j)-0.125*delta3*F(j)*nu =g= 0;
state2_n11(i,j) .. -sum(s,lambda_n11(i,j,s)) + phi_n11(i,j) -0.125*delta3*F(j)*nu =g= 0;
state2_n12(i,j) .. -sum(s,lambda_n12(i,j,s)) + phi_n12(i,j) -0.125*delta3*F(j)*nu =g= 0;
state2_n13(i,j) .. -sum(s,lambda_n13(i,j,s)) + phi_n13(i,j) -0.125*delta3*F(j)*nu =g= 0;
state2_n14(i,j) .. -sum(s,lambda_n14(i,j,s)) + phi_n14(i,j) -0.125*delta3*F(j)*nu =g= 0;

state3_n0(i,j) .. F(j) - phi_n1(i,j) - phi_n2(i,j) =g= 0;
state3_n1(i,j) .. 0.5*delta1*F(j) - phi_n3(i,j) - phi_n4(i,j) =g= 0;
state3_n2(i,j) .. 0.5*delta1*F(j) - phi_n5(i,j) - phi_n6(i,j) =g= 0;
state3_n3(i,j) .. 0.25*delta1*F(j) - phi_n7(i,j) - phi_n8(i,j) =g= 0;
state3_n4(i,j) .. 0.25*delta1*F(j) - phi_n9(i,j) - phi_n10(i,j) =g= 0;
state3_n5(i,j) .. 0.25*delta1*F(j) - phi_n11(i,j) - phi_n12(i,j) =g= 0;
state3_n6(i,j) .. 0.25*delta1*F(j) - phi_n13(i,j) - phi_n14(i,j) =g= 0;

model oligop /
profit_n0.q_n0,
profit_n1.q_n1,
profit_n2.q_n2,
profit_n3.q_n3,
profit_n4.q_n4,
profit_n5.q_n5,
profit_n6.q_n6,
profit_n7.q_n7,
profit_n8.q_n8,
profit_n9.q_n9,
profit_n10.q_n10,
profit_n11.q_n11,
profit_n12.q_n12,
profit_n13.q_n13,
profit_n14.q_n14,
capacity_n0.lambda_n0,
capacity_n1.lambda_n1,
capacity_n2.lambda_n2,
capacity_n3.lambda_n3,
capacity_n4.lambda_n4,
capacity_n5.lambda_n5,
capacity_n6.lambda_n6,
capacity_n7.lambda_n7,
capacity_n8.lambda_n8,
capacity_n9.lambda_n9,
capacity_n10.lambda_n10,
capacity_n11.lambda_n11,
capacity_n12.lambda_n12,
capacity_n13.lambda_n13,
capacity_n14.lambda_n14,
state_n1,
state_n2,
state_n3,
state_n4,
state_n5,
state_n6,
state_n7,
state_n8,
state_n9,
state_n10,
state_n11,
state_n12,
state_n13,
state_n14,
state2_n1.K_n1,
state2_n2.K_n2,
state2_n3.K_n3,
state2_n4.K_n4,
state2_n5.K_n5,
state2_n6.K_n6,
state2_n7.K_n7,
state2_n8.K_n8,
state2_n9.K_n9,
state2_n10.K_n10,
state2_n11.K_n11,
state2_n12.K_n12,
state2_n13.K_n13,
state2_n14.K_n14,
state3_n0.In_n0,
state3_n1.In_n1,
state3_n2.In_n2,
state3_n3.In_n3,
state3_n4.In_n4,
state3_n5.In_n5,
state3_n6.In_n6
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