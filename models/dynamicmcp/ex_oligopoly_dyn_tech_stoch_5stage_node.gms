Sets
i        players
j        technologies
;

Alias(i,l);
Alias(j,m);

Parameters
rho                depreciation rate

alpha_n0           demand function intercept t=0
alpha_n1           demand function intercept t=1
alpha_n2           demand function intercept t=1
alpha_n3           demand function intercept t=2
alpha_n4           demand function intercept t=2
alpha_n5           demand function intercept t=2
alpha_n6           demand function intercept t=2
alpha_n7           demand function intercept t=3
alpha_n8           demand function intercept t=3
alpha_n9           demand function intercept t=3
alpha_n10          demand function intercept t=3
alpha_n11          demand function intercept t=3
alpha_n12          demand function intercept t=3
alpha_n13          demand function intercept t=3
alpha_n14          demand function intercept t=3
alpha_n15          demand function intercept t=4
alpha_n16          demand function intercept t=4
alpha_n17          demand function intercept t=4
alpha_n18          demand function intercept t=4
alpha_n19          demand function intercept t=4
alpha_n20          demand function intercept t=4
alpha_n21          demand function intercept t=4
alpha_n22          demand function intercept t=4
alpha_n23          demand function intercept t=4
alpha_n24          demand function intercept t=4
alpha_n25          demand function intercept t=4
alpha_n26          demand function intercept t=4
alpha_n27          demand function intercept t=4
alpha_n28          demand function intercept t=4
alpha_n29          demand function intercept t=4
alpha_n30          demand function intercept t=4
alpha_n31          demand function intercept t=5
alpha_n32          demand function intercept t=5
alpha_n33          demand function intercept t=5
alpha_n34          demand function intercept t=5
alpha_n35          demand function intercept t=5
alpha_n36          demand function intercept t=5
alpha_n37          demand function intercept t=5
alpha_n38          demand function intercept t=5
alpha_n39          demand function intercept t=5
alpha_n40          demand function intercept t=5
alpha_n41          demand function intercept t=5
alpha_n42          demand function intercept t=5
alpha_n43          demand function intercept t=5
alpha_n44          demand function intercept t=5
alpha_n45          demand function intercept t=5
alpha_n46          demand function intercept t=5
alpha_n47          demand function intercept t=5
alpha_n48          demand function intercept t=5
alpha_n49          demand function intercept t=5
alpha_n50          demand function intercept t=5
alpha_n51          demand function intercept t=5
alpha_n52          demand function intercept t=5
alpha_n53          demand function intercept t=5
alpha_n54          demand function intercept t=5
alpha_n55          demand function intercept t=5
alpha_n56          demand function intercept t=5
alpha_n57          demand function intercept t=5
alpha_n58          demand function intercept t=5
alpha_n59          demand function intercept t=5
alpha_n60          demand function intercept t=5
alpha_n61          demand function intercept t=5
alpha_n62          demand function intercept t=5
beta               demand function slope
K0(i,j)            capacity constraint
c(j)               variable costs
F(j)               capacity costs
delta1             discount factor t=1
delta2             discount factor t=2
delta3             discount factor t=3
delta4             discount factor t=4
delta5             discount factor t=5
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
profit_n7(i,j)           profit function t=3
profit_n8(i,j)           profit function t=3
profit_n9(i,j)           profit function t=3
profit_n10(i,j)          profit function t=3
profit_n11(i,j)          profit function t=3
profit_n12(i,j)          profit function t=3
profit_n13(i,j)          profit function t=3
profit_n14(i,j)          profit function t=3
profit_n15(i,j)          profit function t=4
profit_n16(i,j)          profit function t=4
profit_n17(i,j)          profit function t=4
profit_n18(i,j)          profit function t=4
profit_n19(i,j)          profit function t=4
profit_n20(i,j)          profit function t=4
profit_n21(i,j)          profit function t=4
profit_n22(i,j)          profit function t=4
profit_n23(i,j)          profit function t=4
profit_n24(i,j)          profit function t=4
profit_n25(i,j)          profit function t=4
profit_n26(i,j)          profit function t=4
profit_n27(i,j)          profit function t=4
profit_n28(i,j)          profit function t=4
profit_n29(i,j)          profit function t=4
profit_n30(i,j)          profit function t=4
profit_n31(i,j)          profit function t=5
profit_n32(i,j)          profit function t=5
profit_n33(i,j)          profit function t=5
profit_n34(i,j)          profit function t=5
profit_n35(i,j)          profit function t=5
profit_n36(i,j)          profit function t=5
profit_n37(i,j)          profit function t=5
profit_n38(i,j)          profit function t=5
profit_n39(i,j)          profit function t=5
profit_n40(i,j)          profit function t=5
profit_n41(i,j)          profit function t=5
profit_n42(i,j)          profit function t=5
profit_n43(i,j)          profit function t=5
profit_n44(i,j)          profit function t=5
profit_n45(i,j)          profit function t=5
profit_n46(i,j)          profit function t=5
profit_n47(i,j)          profit function t=5
profit_n48(i,j)          profit function t=5
profit_n49(i,j)          profit function t=5
profit_n50(i,j)          profit function t=5
profit_n51(i,j)          profit function t=5
profit_n52(i,j)          profit function t=5
profit_n53(i,j)          profit function t=5
profit_n54(i,j)          profit function t=5
profit_n55(i,j)          profit function t=5
profit_n56(i,j)          profit function t=5
profit_n57(i,j)          profit function t=5
profit_n58(i,j)          profit function t=5
profit_n59(i,j)          profit function t=5
profit_n60(i,j)          profit function t=5
profit_n61(i,j)          profit function t=5
profit_n62(i,j)          profit function t=5

capacity_n0(i,j)           capacity constraint t=0
capacity_n1(i,j)           capacity constraint t=1
capacity_n2(i,j)           capacity constraint t=1
capacity_n3(i,j)           capacity constraint t=2
capacity_n4(i,j)           capacity constraint t=2
capacity_n5(i,j)           capacity constraint t=2
capacity_n6(i,j)           capacity constraint t=2
capacity_n7(i,j)           capacity constraint t=3
capacity_n8(i,j)           capacity constraint t=3
capacity_n9(i,j)           capacity constraint t=3
capacity_n10(i,j)          capacity constraint t=3
capacity_n11(i,j)          capacity constraint t=3
capacity_n12(i,j)          capacity constraint t=3
capacity_n13(i,j)          capacity constraint t=3
capacity_n14(i,j)          capacity constraint t=3
capacity_n15(i,j)          capacity constraint t=4
capacity_n16(i,j)          capacity constraint t=4
capacity_n17(i,j)          capacity constraint t=4
capacity_n18(i,j)          capacity constraint t=4
capacity_n19(i,j)          capacity constraint t=4
capacity_n20(i,j)          capacity constraint t=4
capacity_n21(i,j)          capacity constraint t=4
capacity_n22(i,j)          capacity constraint t=4
capacity_n23(i,j)          capacity constraint t=4
capacity_n24(i,j)          capacity constraint t=4
capacity_n25(i,j)          capacity constraint t=4
capacity_n26(i,j)          capacity constraint t=4
capacity_n27(i,j)          capacity constraint t=4
capacity_n28(i,j)          capacity constraint t=4
capacity_n29(i,j)          capacity constraint t=4
capacity_n30(i,j)          capacity constraint t=4
capacity_n31(i,j)          capacity constraint t=5
capacity_n32(i,j)          capacity constraint t=5
capacity_n33(i,j)          capacity constraint t=5
capacity_n34(i,j)          capacity constraint t=5
capacity_n35(i,j)          capacity constraint t=5
capacity_n36(i,j)          capacity constraint t=5
capacity_n37(i,j)          capacity constraint t=5
capacity_n38(i,j)          capacity constraint t=5
capacity_n39(i,j)          capacity constraint t=5
capacity_n40(i,j)          capacity constraint t=5
capacity_n41(i,j)          capacity constraint t=5
capacity_n42(i,j)          capacity constraint t=5
capacity_n43(i,j)          capacity constraint t=5
capacity_n44(i,j)          capacity constraint t=5
capacity_n45(i,j)          capacity constraint t=5
capacity_n46(i,j)          capacity constraint t=5
capacity_n47(i,j)          capacity constraint t=5
capacity_n48(i,j)          capacity constraint t=5
capacity_n49(i,j)          capacity constraint t=5
capacity_n50(i,j)          capacity constraint t=5
capacity_n51(i,j)          capacity constraint t=5
capacity_n52(i,j)          capacity constraint t=5
capacity_n53(i,j)          capacity constraint t=5
capacity_n54(i,j)          capacity constraint t=5
capacity_n55(i,j)          capacity constraint t=5
capacity_n56(i,j)          capacity constraint t=5
capacity_n57(i,j)          capacity constraint t=5
capacity_n58(i,j)          capacity constraint t=5
capacity_n59(i,j)          capacity constraint t=5
capacity_n60(i,j)          capacity constraint t=5
capacity_n61(i,j)          capacity constraint t=5
capacity_n62(i,j)          capacity constraint t=5

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
state_n15(i,j)          state equation t=4
state_n16(i,j)          state equation t=4
state_n17(i,j)          state equation t=4
state_n18(i,j)          state equation t=4
state_n19(i,j)          state equation t=4
state_n20(i,j)          state equation t=4
state_n21(i,j)          state equation t=4
state_n22(i,j)          state equation t=4
state_n23(i,j)          state equation t=4
state_n24(i,j)          state equation t=4
state_n25(i,j)          state equation t=4
state_n26(i,j)          state equation t=4
state_n27(i,j)          state equation t=4
state_n28(i,j)          state equation t=4
state_n29(i,j)          state equation t=4
state_n30(i,j)          state equation t=4
state_n31(i,j)          state equation t=5
state_n32(i,j)          state equation t=5
state_n33(i,j)          state equation t=5
state_n34(i,j)          state equation t=5
state_n35(i,j)          state equation t=5
state_n36(i,j)          state equation t=5
state_n37(i,j)          state equation t=5
state_n38(i,j)          state equation t=5
state_n39(i,j)          state equation t=5
state_n40(i,j)          state equation t=5
state_n41(i,j)          state equation t=5
state_n42(i,j)          state equation t=5
state_n43(i,j)          state equation t=5
state_n44(i,j)          state equation t=5
state_n45(i,j)          state equation t=5
state_n46(i,j)          state equation t=5
state_n47(i,j)          state equation t=5
state_n48(i,j)          state equation t=5
state_n49(i,j)          state equation t=5
state_n50(i,j)          state equation t=5
state_n51(i,j)          state equation t=5
state_n52(i,j)          state equation t=5
state_n53(i,j)          state equation t=5
state_n54(i,j)          state equation t=5
state_n55(i,j)          state equation t=5
state_n56(i,j)          state equation t=5
state_n57(i,j)          state equation t=5
state_n58(i,j)          state equation t=5
state_n59(i,j)          state equation t=5
state_n60(i,j)          state equation t=5
state_n61(i,j)          state equation t=5
state_n62(i,j)          state equation t=5

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
state2_n15(i,j)          state equation K4
state2_n16(i,j)          state equation K4
state2_n17(i,j)          state equation K4
state2_n18(i,j)          state equation K4
state2_n19(i,j)          state equation K4
state2_n20(i,j)          state equation K4
state2_n21(i,j)          state equation K4
state2_n22(i,j)          state equation K4
state2_n23(i,j)          state equation K4
state2_n24(i,j)          state equation K4
state2_n25(i,j)          state equation K4
state2_n26(i,j)          state equation K4
state2_n27(i,j)          state equation K4
state2_n28(i,j)          state equation K4
state2_n29(i,j)          state equation K4
state2_n30(i,j)          state equation K4
state2_n31(i,j)          state equation K5
state2_n32(i,j)          state equation K5
state2_n33(i,j)          state equation K5
state2_n34(i,j)          state equation K5
state2_n35(i,j)          state equation K5
state2_n36(i,j)          state equation K5
state2_n37(i,j)          state equation K5
state2_n38(i,j)          state equation K5
state2_n39(i,j)          state equation K5
state2_n40(i,j)          state equation K5
state2_n41(i,j)          state equation K5
state2_n42(i,j)          state equation K5
state2_n43(i,j)          state equation K5
state2_n44(i,j)          state equation K5
state2_n45(i,j)          state equation K5
state2_n46(i,j)          state equation K5
state2_n47(i,j)          state equation K5
state2_n48(i,j)          state equation K5
state2_n49(i,j)          state equation K5
state2_n50(i,j)          state equation K5
state2_n51(i,j)          state equation K5
state2_n52(i,j)          state equation K5
state2_n53(i,j)          state equation K5
state2_n54(i,j)          state equation K5
state2_n55(i,j)          state equation K5
state2_n56(i,j)          state equation K5
state2_n57(i,j)          state equation K5
state2_n58(i,j)          state equation K5
state2_n59(i,j)          state equation K5
state2_n60(i,j)          state equation K5
state2_n61(i,j)          state equation K5
state2_n62(i,j)          state equation K5


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
state3_n15(i,j)          state equation I4
state3_n16(i,j)          state equation I4
state3_n17(i,j)          state equation I4
state3_n18(i,j)          state equation I4
state3_n19(i,j)          state equation I4
state3_n20(i,j)          state equation I4
state3_n21(i,j)          state equation I4
state3_n22(i,j)          state equation I4
state3_n23(i,j)          state equation I4
state3_n24(i,j)          state equation I4
state3_n25(i,j)          state equation I4
state3_n26(i,j)          state equation I4
state3_n27(i,j)          state equation I4
state3_n28(i,j)          state equation I4
state3_n29(i,j)          state equation I4
state3_n30(i,j)          state equation I4
;

Positive Variables
q_n0(i,j)          quantity t=0
q_n1(i,j)          quantity t=1
q_n2(i,j)          quantity t=1
q_n3(i,j)          quantity t=2
q_n4(i,j)          quantity t=2
q_n5(i,j)          quantity t=2
q_n6(i,j)          quantity t=2
q_n7(i,j)           quantity t=3
q_n8(i,j)           quantity t=3
q_n9(i,j)           quantity t=3
q_n10(i,j)          quantity t=3
q_n11(i,j)          quantity t=3
q_n12(i,j)          quantity t=3
q_n13(i,j)          quantity t=3
q_n14(i,j)          quantity t=3
q_n15(i,j)          quantity t=4
q_n16(i,j)          quantity t=4
q_n17(i,j)          quantity t=4
q_n18(i,j)          quantity t=4
q_n19(i,j)          quantity t=4
q_n20(i,j)          quantity t=4
q_n21(i,j)          quantity t=4
q_n22(i,j)          quantity t=4
q_n23(i,j)          quantity t=4
q_n24(i,j)          quantity t=4
q_n25(i,j)          quantity t=4
q_n26(i,j)          quantity t=4
q_n27(i,j)          quantity t=4
q_n28(i,j)          quantity t=4
q_n29(i,j)          quantity t=4
q_n30(i,j)          quantity t=4
q_n31(i,j)          quantity t=5
q_n32(i,j)          quantity t=5
q_n33(i,j)          quantity t=5
q_n34(i,j)          quantity t=5
q_n35(i,j)          quantity t=5
q_n36(i,j)          quantity t=5
q_n37(i,j)          quantity t=5
q_n38(i,j)          quantity t=5
q_n39(i,j)          quantity t=5
q_n40(i,j)          quantity t=5
q_n41(i,j)          quantity t=5
q_n42(i,j)          quantity t=5
q_n43(i,j)          quantity t=5
q_n44(i,j)          quantity t=5
q_n45(i,j)          quantity t=5
q_n46(i,j)          quantity t=5
q_n47(i,j)          quantity t=5
q_n48(i,j)          quantity t=5
q_n49(i,j)          quantity t=5
q_n50(i,j)          quantity t=5
q_n51(i,j)          quantity t=5
q_n52(i,j)          quantity t=5
q_n53(i,j)          quantity t=5
q_n54(i,j)          quantity t=5
q_n55(i,j)          quantity t=5
q_n56(i,j)          quantity t=5
q_n57(i,j)          quantity t=5
q_n58(i,j)          quantity t=5
q_n59(i,j)          quantity t=5
q_n60(i,j)          quantity t=5
q_n61(i,j)          quantity t=5
q_n62(i,j)          quantity t=5

lambda_n0(i,j)     capacity constraint t=0
lambda_n1(i,j)     capacity constraint t=1
lambda_n2(i,j)     capacity constraint t=1
lambda_n3(i,j)     capacity constraint t=2
lambda_n4(i,j)     capacity constraint t=2
lambda_n5(i,j)     capacity constraint t=2
lambda_n6(i,j)     capacity constraint t=2
lambda_n7(i,j)           capacity constraint t=3
lambda_n8(i,j)           capacity constraint t=3
lambda_n9(i,j)           capacity constraint t=3
lambda_n10(i,j)          capacity constraint t=3
lambda_n11(i,j)          capacity constraint t=3
lambda_n12(i,j)          capacity constraint t=3
lambda_n13(i,j)          capacity constraint t=3
lambda_n14(i,j)          capacity constraint t=3
lambda_n15(i,j)          capacity constraint t=4
lambda_n16(i,j)          capacity constraint t=4
lambda_n17(i,j)          capacity constraint t=4
lambda_n18(i,j)          capacity constraint t=4
lambda_n19(i,j)          capacity constraint t=4
lambda_n20(i,j)          capacity constraint t=4
lambda_n21(i,j)          capacity constraint t=4
lambda_n22(i,j)          capacity constraint t=4
lambda_n23(i,j)          capacity constraint t=4
lambda_n24(i,j)          capacity constraint t=4
lambda_n25(i,j)          capacity constraint t=4
lambda_n26(i,j)          capacity constraint t=4
lambda_n27(i,j)          capacity constraint t=4
lambda_n28(i,j)          capacity constraint t=4
lambda_n29(i,j)          capacity constraint t=4
lambda_n30(i,j)          capacity constraint t=4
lambda_n31(i,j)          capacity constraint t=5
lambda_n32(i,j)          capacity constraint t=5
lambda_n33(i,j)          capacity constraint t=5
lambda_n34(i,j)          capacity constraint t=5
lambda_n35(i,j)          capacity constraint t=5
lambda_n36(i,j)          capacity constraint t=5
lambda_n37(i,j)          capacity constraint t=5
lambda_n38(i,j)          capacity constraint t=5
lambda_n39(i,j)          capacity constraint t=5
lambda_n40(i,j)          capacity constraint t=5
lambda_n41(i,j)          capacity constraint t=5
lambda_n42(i,j)          capacity constraint t=5
lambda_n43(i,j)          capacity constraint t=5
lambda_n44(i,j)          capacity constraint t=5
lambda_n45(i,j)          capacity constraint t=5
lambda_n46(i,j)          capacity constraint t=5
lambda_n47(i,j)          capacity constraint t=5
lambda_n48(i,j)          capacity constraint t=5
lambda_n49(i,j)          capacity constraint t=5
lambda_n50(i,j)          capacity constraint t=5
lambda_n51(i,j)          capacity constraint t=5
lambda_n52(i,j)          capacity constraint t=5
lambda_n53(i,j)          capacity constraint t=5
lambda_n54(i,j)          capacity constraint t=5
lambda_n55(i,j)          capacity constraint t=5
lambda_n56(i,j)          capacity constraint t=5
lambda_n57(i,j)          capacity constraint t=5
lambda_n58(i,j)          capacity constraint t=5
lambda_n59(i,j)          capacity constraint t=5
lambda_n60(i,j)          capacity constraint t=5
lambda_n61(i,j)          capacity constraint t=5
lambda_n62(i,j)          capacity constraint t=5

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
K_n31(i,j)          capacity  t=5
K_n32(i,j)          capacity  t=5
K_n33(i,j)          capacity  t=5
K_n34(i,j)          capacity  t=5
K_n35(i,j)          capacity  t=5
K_n36(i,j)          capacity  t=5
K_n37(i,j)          capacity  t=5
K_n38(i,j)          capacity  t=5
K_n39(i,j)          capacity  t=5
K_n40(i,j)          capacity  t=5
K_n41(i,j)          capacity  t=5
K_n42(i,j)          capacity  t=5
K_n43(i,j)          capacity  t=5
K_n44(i,j)          capacity  t=5
K_n45(i,j)          capacity  t=5
K_n46(i,j)          capacity  t=5
K_n47(i,j)          capacity  t=5
K_n48(i,j)          capacity  t=5
K_n49(i,j)          capacity  t=5
K_n50(i,j)          capacity  t=5
K_n51(i,j)          capacity  t=5
K_n52(i,j)          capacity  t=5
K_n53(i,j)          capacity  t=5
K_n54(i,j)          capacity  t=5
K_n55(i,j)          capacity  t=5
K_n56(i,j)          capacity  t=5
K_n57(i,j)          capacity  t=5
K_n58(i,j)          capacity  t=5
K_n59(i,j)          capacity  t=5
K_n60(i,j)          capacity  t=5
K_n61(i,j)          capacity  t=5
K_n62(i,j)          capacity  t=5

In_n0(i,j)           investments t=0
In_n1(i,j)           investments t=1
In_n2(i,j)           investments t=1
In_n3(i,j)           investments t=2
In_n4(i,j)           investments t=2
In_n5(i,j)           investments t=2
In_n6(i,j)           investments t=2
In_n7(i,j)           investment  t=3
In_n8(i,j)           investment  t=3
In_n9(i,j)           investment  t=3
In_n10(i,j)          investment  t=3
In_n11(i,j)          investment  t=3
In_n12(i,j)          investment  t=3
In_n13(i,j)          investment  t=3
In_n14(i,j)          investment  t=3
In_n15(i,j)          investment  t=4
In_n16(i,j)          investment  t=4
In_n17(i,j)          investment  t=4
In_n18(i,j)          investment  t=4
In_n19(i,j)          investment  t=4
In_n20(i,j)          investment  t=4
In_n21(i,j)          investment  t=4
In_n22(i,j)          investment  t=4
In_n23(i,j)          investment  t=4
In_n24(i,j)          investment  t=4
In_n25(i,j)          investment  t=4
In_n26(i,j)          investment  t=4
In_n27(i,j)          investment  t=4
In_n28(i,j)          investment  t=4
In_n29(i,j)          investment  t=4
In_n30(i,j)          investment  t=4

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
phi_n15(i,j)          state  t=4
phi_n16(i,j)          state  t=4
phi_n17(i,j)          state  t=4
phi_n18(i,j)          state  t=4
phi_n19(i,j)          state  t=4
phi_n20(i,j)          state  t=4
phi_n21(i,j)          state  t=4
phi_n22(i,j)          state  t=4
phi_n23(i,j)          state  t=4
phi_n24(i,j)          state  t=4
phi_n25(i,j)          state  t=4
phi_n26(i,j)          state  t=4
phi_n27(i,j)          state  t=4
phi_n28(i,j)          state  t=4
phi_n29(i,j)          state  t=4
phi_n30(i,j)          state  t=4
phi_n31(i,j)          state  t=5
phi_n32(i,j)          state  t=5
phi_n33(i,j)          state  t=5
phi_n34(i,j)          state  t=5
phi_n35(i,j)          state  t=5
phi_n36(i,j)          state  t=5
phi_n37(i,j)          state  t=5
phi_n38(i,j)          state  t=5
phi_n39(i,j)          state  t=5
phi_n40(i,j)          state  t=5
phi_n41(i,j)          state  t=5
phi_n42(i,j)          state  t=5
phi_n43(i,j)          state  t=5
phi_n44(i,j)          state  t=5
phi_n45(i,j)          state  t=5
phi_n46(i,j)          state  t=5
phi_n47(i,j)          state  t=5
phi_n48(i,j)          state  t=5
phi_n49(i,j)          state  t=5
phi_n50(i,j)          state  t=5
phi_n51(i,j)          state  t=5
phi_n52(i,j)          state  t=5
phi_n53(i,j)          state  t=5
phi_n54(i,j)          state  t=5
phi_n55(i,j)          state  t=5
phi_n56(i,j)          state  t=5
phi_n57(i,j)          state  t=5
phi_n58(i,j)          state  t=5
phi_n59(i,j)          state  t=5
phi_n60(i,j)          state  t=5
phi_n61(i,j)          state  t=5
phi_n62(i,j)          state  t=5
;

profit_n0(i,j) .. -alpha_n0 + beta*sum((l,m),q_n0(l,m)) + beta*sum(m,q_n0(i,m)) + c(j) + lambda_n0(i,j) =g= 0;
profit_n1(i,j) .. -0.5*delta1*(alpha_n1 - beta*sum((l,m),q_n1(l,m)) - beta*sum(m,q_n1(i,m)) - c(j)) + lambda_n1(i,j) =g= 0;
profit_n2(i,j) .. -0.5*delta1*(alpha_n2 - beta*sum((l,m),q_n2(l,m)) - beta*sum(m,q_n2(i,m)) - c(j)) + lambda_n2(i,j) =g= 0;
profit_n3(i,j) .. -0.25*delta2*(alpha_n3 - beta*sum((l,m),q_n3(l,m)) - beta*sum(m,q_n3(i,m)) - c(j)) + lambda_n3(i,j) =g= 0;
profit_n4(i,j) .. -0.25*delta2*(alpha_n4 - beta*sum((l,m),q_n4(l,m)) - beta*sum(m,q_n4(i,m)) - c(j)) + lambda_n4(i,j) =g= 0;
profit_n5(i,j) .. -0.25*delta2*(alpha_n5 - beta*sum((l,m),q_n5(l,m)) - beta*sum(m,q_n5(i,m)) - c(j)) + lambda_n5(i,j) =g= 0;
profit_n6(i,j) .. -0.25*delta2*(alpha_n6 - beta*sum((l,m),q_n6(l,m)) - beta*sum(m,q_n6(i,m)) - c(j)) + lambda_n6(i,j) =g= 0;
profit_n7(i,j) .. -0.125*delta2*(alpha_n7 - beta*sum((l,m),q_n7(l,m)) - beta*sum(m,q_n7(i,m)) - c(j)) + lambda_n7(i,j) =g= 0;
profit_n8(i,j) .. -0.125*delta2*(alpha_n8 - beta*sum((l,m),q_n8(l,m)) - beta*sum(m,q_n8(i,m)) - c(j)) + lambda_n8(i,j) =g= 0;
profit_n9(i,j) .. -0.125*delta2*(alpha_n9 - beta*sum((l,m),q_n9(l,m)) - beta*sum(m,q_n9(i,m)) - c(j)) + lambda_n9(i,j) =g= 0;
profit_n10(i,j) .. -0.125*delta2*(alpha_n10 - beta*sum((l,m),q_n10(l,m)) - beta*sum(m,q_n10(i,m)) - c(j)) + lambda_n10(i,j) =g= 0;
profit_n11(i,j) .. -0.125*delta2*(alpha_n11 - beta*sum((l,m),q_n11(l,m)) - beta*sum(m,q_n11(i,m)) - c(j)) + lambda_n11(i,j) =g= 0;
profit_n12(i,j) .. -0.125*delta2*(alpha_n12 - beta*sum((l,m),q_n12(l,m)) - beta*sum(m,q_n12(i,m)) - c(j)) + lambda_n12(i,j) =g= 0;
profit_n13(i,j) .. -0.125*delta2*(alpha_n13 - beta*sum((l,m),q_n13(l,m)) - beta*sum(m,q_n13(i,m)) - c(j)) + lambda_n13(i,j) =g= 0;
profit_n14(i,j) .. -0.125*delta2*(alpha_n14 - beta*sum((l,m),q_n14(l,m)) - beta*sum(m,q_n14(i,m)) - c(j)) + lambda_n14(i,j) =g= 0;
profit_n15(i,j) .. -0.0625*delta2*(alpha_n15 - beta*sum((l,m),q_n15(l,m)) - beta*sum(m,q_n15(i,m)) - c(j)) + lambda_n15(i,j) =g= 0;
profit_n16(i,j) .. -0.0625*delta2*(alpha_n16 - beta*sum((l,m),q_n16(l,m)) - beta*sum(m,q_n16(i,m)) - c(j)) + lambda_n16(i,j) =g= 0;
profit_n17(i,j) .. -0.0625*delta2*(alpha_n17 - beta*sum((l,m),q_n17(l,m)) - beta*sum(m,q_n17(i,m)) - c(j)) + lambda_n17(i,j) =g= 0;
profit_n18(i,j) .. -0.0625*delta2*(alpha_n18 - beta*sum((l,m),q_n18(l,m)) - beta*sum(m,q_n18(i,m)) - c(j)) + lambda_n18(i,j) =g= 0;
profit_n19(i,j) .. -0.0625*delta2*(alpha_n19 - beta*sum((l,m),q_n19(l,m)) - beta*sum(m,q_n19(i,m)) - c(j)) + lambda_n19(i,j) =g= 0;
profit_n20(i,j) .. -0.0625*delta2*(alpha_n20 - beta*sum((l,m),q_n20(l,m)) - beta*sum(m,q_n20(i,m)) - c(j)) + lambda_n20(i,j) =g= 0;
profit_n21(i,j) .. -0.0625*delta2*(alpha_n21 - beta*sum((l,m),q_n21(l,m)) - beta*sum(m,q_n21(i,m)) - c(j)) + lambda_n21(i,j) =g= 0;
profit_n22(i,j) .. -0.0625*delta2*(alpha_n22 - beta*sum((l,m),q_n22(l,m)) - beta*sum(m,q_n22(i,m)) - c(j)) + lambda_n22(i,j) =g= 0;
profit_n23(i,j) .. -0.0625*delta2*(alpha_n23 - beta*sum((l,m),q_n23(l,m)) - beta*sum(m,q_n23(i,m)) - c(j)) + lambda_n23(i,j) =g= 0;
profit_n24(i,j) .. -0.0625*delta2*(alpha_n24 - beta*sum((l,m),q_n24(l,m)) - beta*sum(m,q_n24(i,m)) - c(j)) + lambda_n24(i,j) =g= 0;
profit_n25(i,j) .. -0.0625*delta2*(alpha_n25 - beta*sum((l,m),q_n25(l,m)) - beta*sum(m,q_n25(i,m)) - c(j)) + lambda_n25(i,j) =g= 0;
profit_n26(i,j) .. -0.0625*delta2*(alpha_n26 - beta*sum((l,m),q_n26(l,m)) - beta*sum(m,q_n26(i,m)) - c(j)) + lambda_n26(i,j) =g= 0;
profit_n27(i,j) .. -0.0625*delta2*(alpha_n27 - beta*sum((l,m),q_n27(l,m)) - beta*sum(m,q_n27(i,m)) - c(j)) + lambda_n27(i,j) =g= 0;
profit_n28(i,j) .. -0.0625*delta2*(alpha_n28 - beta*sum((l,m),q_n28(l,m)) - beta*sum(m,q_n28(i,m)) - c(j)) + lambda_n28(i,j) =g= 0;
profit_n29(i,j) .. -0.0625*delta2*(alpha_n29 - beta*sum((l,m),q_n29(l,m)) - beta*sum(m,q_n29(i,m)) - c(j)) + lambda_n29(i,j) =g= 0;
profit_n30(i,j) .. -0.0625*delta2*(alpha_n30 - beta*sum((l,m),q_n30(l,m)) - beta*sum(m,q_n30(i,m)) - c(j)) + lambda_n30(i,j) =g= 0;
profit_n31(i,j) .. -0.03125*delta2*(alpha_n31 - beta*sum((l,m),q_n31(l,m)) - beta*sum(m,q_n31(i,m)) - c(j)) + lambda_n31(i,j) =g= 0;
profit_n32(i,j) .. -0.03125*delta2*(alpha_n32 - beta*sum((l,m),q_n32(l,m)) - beta*sum(m,q_n32(i,m)) - c(j)) + lambda_n32(i,j) =g= 0;
profit_n33(i,j) .. -0.03125*delta2*(alpha_n33 - beta*sum((l,m),q_n33(l,m)) - beta*sum(m,q_n33(i,m)) - c(j)) + lambda_n33(i,j) =g= 0;
profit_n34(i,j) .. -0.03125*delta2*(alpha_n34 - beta*sum((l,m),q_n34(l,m)) - beta*sum(m,q_n34(i,m)) - c(j)) + lambda_n34(i,j) =g= 0;
profit_n35(i,j) .. -0.03125*delta2*(alpha_n35 - beta*sum((l,m),q_n35(l,m)) - beta*sum(m,q_n35(i,m)) - c(j)) + lambda_n35(i,j) =g= 0;
profit_n36(i,j) .. -0.03125*delta2*(alpha_n36 - beta*sum((l,m),q_n36(l,m)) - beta*sum(m,q_n36(i,m)) - c(j)) + lambda_n36(i,j) =g= 0;
profit_n37(i,j) .. -0.03125*delta2*(alpha_n37 - beta*sum((l,m),q_n37(l,m)) - beta*sum(m,q_n37(i,m)) - c(j)) + lambda_n37(i,j) =g= 0;
profit_n38(i,j) .. -0.03125*delta2*(alpha_n38 - beta*sum((l,m),q_n38(l,m)) - beta*sum(m,q_n38(i,m)) - c(j)) + lambda_n38(i,j) =g= 0;
profit_n39(i,j) .. -0.03125*delta2*(alpha_n39 - beta*sum((l,m),q_n39(l,m)) - beta*sum(m,q_n39(i,m)) - c(j)) + lambda_n39(i,j) =g= 0;
profit_n40(i,j) .. -0.03125*delta2*(alpha_n40 - beta*sum((l,m),q_n40(l,m)) - beta*sum(m,q_n40(i,m)) - c(j)) + lambda_n40(i,j) =g= 0;
profit_n41(i,j) .. -0.03125*delta2*(alpha_n41 - beta*sum((l,m),q_n41(l,m)) - beta*sum(m,q_n41(i,m)) - c(j)) + lambda_n41(i,j) =g= 0;
profit_n42(i,j) .. -0.03125*delta2*(alpha_n42 - beta*sum((l,m),q_n42(l,m)) - beta*sum(m,q_n42(i,m)) - c(j)) + lambda_n42(i,j) =g= 0;
profit_n43(i,j) .. -0.03125*delta2*(alpha_n43 - beta*sum((l,m),q_n43(l,m)) - beta*sum(m,q_n43(i,m)) - c(j)) + lambda_n43(i,j) =g= 0;
profit_n44(i,j) .. -0.03125*delta2*(alpha_n44 - beta*sum((l,m),q_n44(l,m)) - beta*sum(m,q_n44(i,m)) - c(j)) + lambda_n44(i,j) =g= 0;
profit_n45(i,j) .. -0.03125*delta2*(alpha_n45 - beta*sum((l,m),q_n45(l,m)) - beta*sum(m,q_n45(i,m)) - c(j)) + lambda_n45(i,j) =g= 0;
profit_n46(i,j) .. -0.03125*delta2*(alpha_n46 - beta*sum((l,m),q_n46(l,m)) - beta*sum(m,q_n46(i,m)) - c(j)) + lambda_n46(i,j) =g= 0;
profit_n47(i,j) .. -0.03125*delta2*(alpha_n47 - beta*sum((l,m),q_n47(l,m)) - beta*sum(m,q_n47(i,m)) - c(j)) + lambda_n47(i,j) =g= 0;
profit_n48(i,j) .. -0.03125*delta2*(alpha_n48 - beta*sum((l,m),q_n48(l,m)) - beta*sum(m,q_n48(i,m)) - c(j)) + lambda_n48(i,j) =g= 0;
profit_n49(i,j) .. -0.03125*delta2*(alpha_n49 - beta*sum((l,m),q_n49(l,m)) - beta*sum(m,q_n49(i,m)) - c(j)) + lambda_n49(i,j) =g= 0;
profit_n50(i,j) .. -0.03125*delta2*(alpha_n50 - beta*sum((l,m),q_n50(l,m)) - beta*sum(m,q_n50(i,m)) - c(j)) + lambda_n50(i,j) =g= 0;
profit_n51(i,j) .. -0.03125*delta2*(alpha_n51 - beta*sum((l,m),q_n51(l,m)) - beta*sum(m,q_n51(i,m)) - c(j)) + lambda_n51(i,j) =g= 0;
profit_n52(i,j) .. -0.03125*delta2*(alpha_n52 - beta*sum((l,m),q_n52(l,m)) - beta*sum(m,q_n52(i,m)) - c(j)) + lambda_n52(i,j) =g= 0;
profit_n53(i,j) .. -0.03125*delta2*(alpha_n53 - beta*sum((l,m),q_n53(l,m)) - beta*sum(m,q_n53(i,m)) - c(j)) + lambda_n53(i,j) =g= 0;
profit_n54(i,j) .. -0.03125*delta2*(alpha_n54 - beta*sum((l,m),q_n54(l,m)) - beta*sum(m,q_n54(i,m)) - c(j)) + lambda_n54(i,j) =g= 0;
profit_n55(i,j) .. -0.03125*delta2*(alpha_n55 - beta*sum((l,m),q_n55(l,m)) - beta*sum(m,q_n55(i,m)) - c(j)) + lambda_n55(i,j) =g= 0;
profit_n56(i,j) .. -0.03125*delta2*(alpha_n56 - beta*sum((l,m),q_n56(l,m)) - beta*sum(m,q_n56(i,m)) - c(j)) + lambda_n56(i,j) =g= 0;
profit_n57(i,j) .. -0.03125*delta2*(alpha_n57 - beta*sum((l,m),q_n57(l,m)) - beta*sum(m,q_n57(i,m)) - c(j)) + lambda_n57(i,j) =g= 0;
profit_n58(i,j) .. -0.03125*delta2*(alpha_n58 - beta*sum((l,m),q_n58(l,m)) - beta*sum(m,q_n58(i,m)) - c(j)) + lambda_n58(i,j) =g= 0;
profit_n59(i,j) .. -0.03125*delta2*(alpha_n59 - beta*sum((l,m),q_n59(l,m)) - beta*sum(m,q_n59(i,m)) - c(j)) + lambda_n59(i,j) =g= 0;
profit_n60(i,j) .. -0.03125*delta2*(alpha_n60 - beta*sum((l,m),q_n60(l,m)) - beta*sum(m,q_n60(i,m)) - c(j)) + lambda_n60(i,j) =g= 0;
profit_n61(i,j) .. -0.03125*delta2*(alpha_n61 - beta*sum((l,m),q_n61(l,m)) - beta*sum(m,q_n61(i,m)) - c(j)) + lambda_n61(i,j) =g= 0;
profit_n62(i,j) .. -0.03125*delta2*(alpha_n62 - beta*sum((l,m),q_n62(l,m)) - beta*sum(m,q_n62(i,m)) - c(j)) + lambda_n62(i,j) =g= 0;

capacity_n0(i,j) .. -q_n0(i,j) + K0(i,j) =g= 0;
capacity_n1(i,j) .. -q_n1(i,j) + K_n1(i,j) =g= 0;
capacity_n2(i,j) .. -q_n2(i,j) + K_n2(i,j) =g= 0;
capacity_n3(i,j) .. -q_n3(i,j) + K_n3(i,j) =g= 0;
capacity_n4(i,j) .. -q_n4(i,j) + K_n4(i,j) =g= 0;
capacity_n5(i,j) .. -q_n5(i,j) + K_n5(i,j) =g= 0;
capacity_n6(i,j) .. -q_n6(i,j) + K_n6(i,j) =g= 0;
capacity_n7(i,j) .. -q_n7(i,j) + K_n7(i,j) =g= 0;
capacity_n8(i,j) .. -q_n8(i,j) + K_n8(i,j) =g= 0;
capacity_n9(i,j) .. -q_n9(i,j) + K_n9(i,j) =g= 0;
capacity_n10(i,j) .. -q_n10(i,j) + K_n10(i,j) =g= 0;
capacity_n11(i,j) .. -q_n11(i,j) + K_n11(i,j) =g= 0;
capacity_n12(i,j) .. -q_n12(i,j) + K_n12(i,j) =g= 0;
capacity_n13(i,j) .. -q_n13(i,j) + K_n13(i,j) =g= 0;
capacity_n14(i,j) .. -q_n14(i,j) + K_n14(i,j) =g= 0;
capacity_n15(i,j) .. -q_n15(i,j) + K_n15(i,j) =g= 0;
capacity_n16(i,j) .. -q_n16(i,j) + K_n16(i,j) =g= 0;
capacity_n17(i,j) .. -q_n17(i,j) + K_n17(i,j) =g= 0;
capacity_n18(i,j) .. -q_n18(i,j) + K_n18(i,j) =g= 0;
capacity_n19(i,j) .. -q_n19(i,j) + K_n19(i,j) =g= 0;
capacity_n20(i,j) .. -q_n20(i,j) + K_n20(i,j) =g= 0;
capacity_n21(i,j) .. -q_n21(i,j) + K_n21(i,j) =g= 0;
capacity_n22(i,j) .. -q_n22(i,j) + K_n22(i,j) =g= 0;
capacity_n23(i,j) .. -q_n23(i,j) + K_n23(i,j) =g= 0;
capacity_n24(i,j) .. -q_n24(i,j) + K_n24(i,j) =g= 0;
capacity_n25(i,j) .. -q_n25(i,j) + K_n25(i,j) =g= 0;
capacity_n26(i,j) .. -q_n26(i,j) + K_n26(i,j) =g= 0;
capacity_n27(i,j) .. -q_n27(i,j) + K_n27(i,j) =g= 0;
capacity_n28(i,j) .. -q_n28(i,j) + K_n28(i,j) =g= 0;
capacity_n29(i,j) .. -q_n29(i,j) + K_n29(i,j) =g= 0;
capacity_n30(i,j) .. -q_n30(i,j) + K_n30(i,j) =g= 0;
capacity_n31(i,j) .. -q_n31(i,j) + K_n31(i,j) =g= 0;
capacity_n32(i,j) .. -q_n32(i,j) + K_n32(i,j) =g= 0;
capacity_n33(i,j) .. -q_n33(i,j) + K_n33(i,j) =g= 0;
capacity_n34(i,j) .. -q_n34(i,j) + K_n34(i,j) =g= 0;
capacity_n35(i,j) .. -q_n35(i,j) + K_n35(i,j) =g= 0;
capacity_n36(i,j) .. -q_n36(i,j) + K_n36(i,j) =g= 0;
capacity_n37(i,j) .. -q_n37(i,j) + K_n37(i,j) =g= 0;
capacity_n38(i,j) .. -q_n38(i,j) + K_n38(i,j) =g= 0;
capacity_n39(i,j) .. -q_n39(i,j) + K_n39(i,j) =g= 0;
capacity_n40(i,j) .. -q_n40(i,j) + K_n40(i,j) =g= 0;
capacity_n41(i,j) .. -q_n41(i,j) + K_n41(i,j) =g= 0;
capacity_n42(i,j) .. -q_n42(i,j) + K_n42(i,j) =g= 0;
capacity_n43(i,j) .. -q_n43(i,j) + K_n43(i,j) =g= 0;
capacity_n44(i,j) .. -q_n44(i,j) + K_n44(i,j) =g= 0;
capacity_n45(i,j) .. -q_n45(i,j) + K_n45(i,j) =g= 0;
capacity_n46(i,j) .. -q_n46(i,j) + K_n46(i,j) =g= 0;
capacity_n47(i,j) .. -q_n47(i,j) + K_n47(i,j) =g= 0;
capacity_n48(i,j) .. -q_n48(i,j) + K_n48(i,j) =g= 0;
capacity_n49(i,j) .. -q_n49(i,j) + K_n49(i,j) =g= 0;
capacity_n50(i,j) .. -q_n50(i,j) + K_n50(i,j) =g= 0;
capacity_n51(i,j) .. -q_n51(i,j) + K_n51(i,j) =g= 0;
capacity_n52(i,j) .. -q_n52(i,j) + K_n52(i,j) =g= 0;
capacity_n53(i,j) .. -q_n53(i,j) + K_n53(i,j) =g= 0;
capacity_n54(i,j) .. -q_n54(i,j) + K_n54(i,j) =g= 0;
capacity_n55(i,j) .. -q_n55(i,j) + K_n55(i,j) =g= 0;
capacity_n56(i,j) .. -q_n56(i,j) + K_n56(i,j) =g= 0;
capacity_n57(i,j) .. -q_n57(i,j) + K_n57(i,j) =g= 0;
capacity_n58(i,j) .. -q_n58(i,j) + K_n58(i,j) =g= 0;
capacity_n59(i,j) .. -q_n59(i,j) + K_n59(i,j) =g= 0;
capacity_n60(i,j) .. -q_n60(i,j) + K_n60(i,j) =g= 0;
capacity_n61(i,j) .. -q_n61(i,j) + K_n61(i,j) =g= 0;
capacity_n62(i,j) .. -q_n62(i,j) + K_n62(i,j) =g= 0;

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
state_n15(i,j) .. K_n15(i,j) - (1-rho)*K_n7(i,j) - In_n7(i,j) =e= 0;
state_n16(i,j) .. K_n16(i,j) - (1-rho)*K_n7(i,j) - In_n7(i,j) =e= 0;
state_n17(i,j) .. K_n17(i,j) - (1-rho)*K_n8(i,j) - In_n8(i,j) =e= 0;
state_n18(i,j) .. K_n18(i,j) - (1-rho)*K_n8(i,j) - In_n8(i,j) =e= 0;
state_n19(i,j) .. K_n19(i,j) - (1-rho)*K_n9(i,j) - In_n9(i,j) =e= 0;
state_n20(i,j) .. K_n20(i,j) - (1-rho)*K_n9(i,j) - In_n9(i,j) =e= 0;
state_n21(i,j) .. K_n21(i,j) - (1-rho)*K_n10(i,j) - In_n10(i,j) =e= 0;
state_n22(i,j) .. K_n22(i,j) - (1-rho)*K_n10(i,j) - In_n10(i,j) =e= 0;
state_n23(i,j) .. K_n23(i,j) - (1-rho)*K_n11(i,j) - In_n11(i,j) =e= 0;
state_n24(i,j) .. K_n24(i,j) - (1-rho)*K_n11(i,j) - In_n11(i,j) =e= 0;
state_n25(i,j) .. K_n25(i,j) - (1-rho)*K_n12(i,j) - In_n12(i,j) =e= 0;
state_n26(i,j) .. K_n26(i,j) - (1-rho)*K_n12(i,j) - In_n12(i,j) =e= 0;
state_n27(i,j) .. K_n27(i,j) - (1-rho)*K_n13(i,j) - In_n13(i,j) =e= 0;
state_n28(i,j) .. K_n28(i,j) - (1-rho)*K_n13(i,j) - In_n13(i,j) =e= 0;
state_n29(i,j) .. K_n29(i,j) - (1-rho)*K_n14(i,j) - In_n14(i,j) =e= 0;
state_n30(i,j) .. K_n30(i,j) - (1-rho)*K_n14(i,j) - In_n14(i,j) =e= 0;
state_n31(i,j) .. K_n31(i,j) - (1-rho)*K_n15(i,j) - In_n15(i,j) =e= 0;
state_n32(i,j) .. K_n32(i,j) - (1-rho)*K_n15(i,j) - In_n15(i,j) =e= 0;
state_n33(i,j) .. K_n33(i,j) - (1-rho)*K_n16(i,j) - In_n16(i,j) =e= 0;
state_n34(i,j) .. K_n34(i,j) - (1-rho)*K_n16(i,j) - In_n16(i,j) =e= 0;
state_n35(i,j) .. K_n35(i,j) - (1-rho)*K_n17(i,j) - In_n17(i,j) =e= 0;
state_n36(i,j) .. K_n36(i,j) - (1-rho)*K_n17(i,j) - In_n17(i,j) =e= 0;
state_n37(i,j) .. K_n37(i,j) - (1-rho)*K_n18(i,j) - In_n18(i,j) =e= 0;
state_n38(i,j) .. K_n38(i,j) - (1-rho)*K_n18(i,j) - In_n18(i,j) =e= 0;
state_n39(i,j) .. K_n39(i,j) - (1-rho)*K_n19(i,j) - In_n19(i,j) =e= 0;
state_n40(i,j) .. K_n40(i,j) - (1-rho)*K_n19(i,j) - In_n19(i,j) =e= 0;
state_n41(i,j) .. K_n41(i,j) - (1-rho)*K_n20(i,j) - In_n20(i,j) =e= 0;
state_n42(i,j) .. K_n42(i,j) - (1-rho)*K_n20(i,j) - In_n20(i,j) =e= 0;
state_n43(i,j) .. K_n43(i,j) - (1-rho)*K_n21(i,j) - In_n21(i,j) =e= 0;
state_n44(i,j) .. K_n44(i,j) - (1-rho)*K_n21(i,j) - In_n21(i,j) =e= 0;
state_n45(i,j) .. K_n45(i,j) - (1-rho)*K_n22(i,j) - In_n22(i,j) =e= 0;
state_n46(i,j) .. K_n46(i,j) - (1-rho)*K_n22(i,j) - In_n22(i,j) =e= 0;
state_n47(i,j) .. K_n47(i,j) - (1-rho)*K_n23(i,j) - In_n23(i,j) =e= 0;
state_n48(i,j) .. K_n48(i,j) - (1-rho)*K_n23(i,j) - In_n23(i,j) =e= 0;
state_n49(i,j) .. K_n49(i,j) - (1-rho)*K_n24(i,j) - In_n24(i,j) =e= 0;
state_n50(i,j) .. K_n50(i,j) - (1-rho)*K_n24(i,j) - In_n24(i,j) =e= 0;
state_n51(i,j) .. K_n51(i,j) - (1-rho)*K_n25(i,j) - In_n25(i,j) =e= 0;
state_n52(i,j) .. K_n52(i,j) - (1-rho)*K_n25(i,j) - In_n25(i,j) =e= 0;
state_n53(i,j) .. K_n53(i,j) - (1-rho)*K_n26(i,j) - In_n26(i,j) =e= 0;
state_n54(i,j) .. K_n54(i,j) - (1-rho)*K_n26(i,j) - In_n26(i,j) =e= 0;
state_n55(i,j) .. K_n55(i,j) - (1-rho)*K_n27(i,j) - In_n27(i,j) =e= 0;
state_n56(i,j) .. K_n56(i,j) - (1-rho)*K_n27(i,j) - In_n27(i,j) =e= 0;
state_n57(i,j) .. K_n57(i,j) - (1-rho)*K_n28(i,j) - In_n28(i,j) =e= 0;
state_n58(i,j) .. K_n58(i,j) - (1-rho)*K_n28(i,j) - In_n28(i,j) =e= 0;
state_n59(i,j) .. K_n59(i,j) - (1-rho)*K_n29(i,j) - In_n29(i,j) =e= 0;
state_n60(i,j) .. K_n60(i,j) - (1-rho)*K_n29(i,j) - In_n29(i,j) =e= 0;
state_n61(i,j) .. K_n61(i,j) - (1-rho)*K_n30(i,j) - In_n30(i,j) =e= 0;
state_n62(i,j) .. K_n62(i,j) - (1-rho)*K_n30(i,j) - In_n30(i,j) =e= 0;

state2_n1(i,j) .. -lambda_n1(i,j) + phi_n1(i,j)*(1-rho) =g= 0;
state2_n2(i,j) .. -lambda_n2(i,j) + phi_n2(i,j)*(1-rho) =g= 0;
state2_n3(i,j) .. -lambda_n3(i,j) + phi_n3(i,j)*(1-rho) =g= 0;
state2_n4(i,j) .. -lambda_n4(i,j) + phi_n4(i,j)*(1-rho) =g= 0;
state2_n5(i,j) .. -lambda_n5(i,j) + phi_n5(i,j)*(1-rho) =g= 0;
state2_n6(i,j) .. -lambda_n6(i,j) + phi_n6(i,j)*(1-rho) =g= 0;
state2_n7(i,j) .. -lambda_n7(i,j) + phi_n7(i,j)*(1-rho) =g= 0;
state2_n8(i,j) .. -lambda_n8(i,j) + phi_n8(i,j)*(1-rho) =g= 0;
state2_n9(i,j) .. -lambda_n9(i,j) + phi_n9(i,j)*(1-rho) =g= 0;
state2_n10(i,j) .. -lambda_n10(i,j) + phi_n10(i,j)*(1-rho) =g= 0;
state2_n11(i,j) .. -lambda_n11(i,j) + phi_n11(i,j)*(1-rho) =g= 0;
state2_n12(i,j) .. -lambda_n12(i,j) + phi_n12(i,j)*(1-rho) =g= 0;
state2_n13(i,j) .. -lambda_n13(i,j) + phi_n13(i,j)*(1-rho) =g= 0;
state2_n14(i,j) .. -lambda_n14(i,j) + phi_n14(i,j)*(1-rho) =g= 0;
state2_n15(i,j) .. -lambda_n15(i,j) + phi_n15(i,j)*(1-rho) =g= 0;
state2_n16(i,j) .. -lambda_n16(i,j) + phi_n16(i,j)*(1-rho) =g= 0;
state2_n17(i,j) .. -lambda_n17(i,j) + phi_n17(i,j)*(1-rho) =g= 0;
state2_n18(i,j) .. -lambda_n18(i,j) + phi_n18(i,j)*(1-rho) =g= 0;
state2_n19(i,j) .. -lambda_n19(i,j) + phi_n19(i,j)*(1-rho) =g= 0;
state2_n20(i,j) .. -lambda_n20(i,j) + phi_n20(i,j)*(1-rho) =g= 0;
state2_n21(i,j) .. -lambda_n21(i,j) + phi_n21(i,j)*(1-rho) =g= 0;
state2_n22(i,j) .. -lambda_n22(i,j) + phi_n22(i,j)*(1-rho) =g= 0;
state2_n23(i,j) .. -lambda_n23(i,j) + phi_n23(i,j)*(1-rho) =g= 0;
state2_n24(i,j) .. -lambda_n24(i,j) + phi_n24(i,j)*(1-rho) =g= 0;
state2_n25(i,j) .. -lambda_n25(i,j) + phi_n25(i,j)*(1-rho) =g= 0;
state2_n26(i,j) .. -lambda_n26(i,j) + phi_n26(i,j)*(1-rho) =g= 0;
state2_n27(i,j) .. -lambda_n27(i,j) + phi_n27(i,j)*(1-rho) =g= 0;
state2_n28(i,j) .. -lambda_n28(i,j) + phi_n28(i,j)*(1-rho) =g= 0;
state2_n29(i,j) .. -lambda_n29(i,j) + phi_n29(i,j)*(1-rho) =g= 0;
state2_n30(i,j) .. -lambda_n30(i,j) + phi_n30(i,j)*(1-rho) =g= 0;
state2_n31(i,j) .. -lambda_n31(i,j) + phi_n31(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n32(i,j) .. -lambda_n32(i,j) + phi_n32(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n33(i,j) .. -lambda_n33(i,j) + phi_n33(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n34(i,j) .. -lambda_n34(i,j) + phi_n34(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n35(i,j) .. -lambda_n35(i,j) + phi_n35(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n36(i,j) .. -lambda_n36(i,j) + phi_n36(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n37(i,j) .. -lambda_n37(i,j) + phi_n37(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n38(i,j) .. -lambda_n38(i,j) + phi_n38(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n39(i,j) .. -lambda_n39(i,j) + phi_n39(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n40(i,j) .. -lambda_n40(i,j) + phi_n40(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n41(i,j) .. -lambda_n41(i,j) + phi_n41(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n42(i,j) .. -lambda_n42(i,j) + phi_n42(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n43(i,j) .. -lambda_n43(i,j) + phi_n43(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n44(i,j) .. -lambda_n44(i,j) + phi_n44(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n45(i,j) .. -lambda_n45(i,j) + phi_n45(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n46(i,j) .. -lambda_n46(i,j) + phi_n46(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n47(i,j) .. -lambda_n47(i,j) + phi_n47(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n48(i,j) .. -lambda_n48(i,j) + phi_n48(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n49(i,j) .. -lambda_n49(i,j) + phi_n49(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n50(i,j) .. -lambda_n50(i,j) + phi_n50(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n51(i,j) .. -lambda_n51(i,j) + phi_n51(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n52(i,j) .. -lambda_n52(i,j) + phi_n52(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n53(i,j) .. -lambda_n53(i,j) + phi_n53(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n54(i,j) .. -lambda_n54(i,j) + phi_n54(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n55(i,j) .. -lambda_n55(i,j) + phi_n55(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n56(i,j) .. -lambda_n56(i,j) + phi_n56(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n57(i,j) .. -lambda_n57(i,j) + phi_n57(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n58(i,j) .. -lambda_n58(i,j) + phi_n58(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n59(i,j) .. -lambda_n59(i,j) + phi_n59(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n60(i,j) .. -lambda_n60(i,j) + phi_n60(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n61(i,j) .. -lambda_n61(i,j) + phi_n61(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;
state2_n62(i,j) .. -lambda_n62(i,j) + phi_n62(i,j)*(1-rho) -0.03125*delta2*F(j)*nu =g= 0;

state3_n0(i,j) .. F(j) - phi_n1(i,j) - phi_n2(i,j) =g= 0;
state3_n1(i,j) .. 0.5*delta1*F(j) - phi_n3(i,j) - phi_n4(i,j) =g= 0;
state3_n2(i,j) .. 0.5*delta1*F(j) - phi_n5(i,j) - phi_n6(i,j) =g= 0;
state3_n3(i,j) .. 0.25*delta1*F(j) - phi_n7(i,j) - phi_n8(i,j) =g= 0;
state3_n4(i,j) .. 0.25*delta1*F(j) - phi_n9(i,j) - phi_n10(i,j) =g= 0;
state3_n5(i,j) .. 0.25*delta1*F(j) - phi_n11(i,j) - phi_n12(i,j) =g= 0;
state3_n6(i,j) .. 0.25*delta1*F(j) - phi_n13(i,j) - phi_n14(i,j) =g= 0;
state3_n7(i,j) .. 0.125*delta3*F(j) - phi_n15(i,j) - phi_n16(i,j) =g= 0;
state3_n8(i,j) .. 0.125*delta3*F(j) - phi_n17(i,j) - phi_n18(i,j) =g= 0;
state3_n9(i,j) .. 0.125*delta3*F(j) - phi_n19(i,j) - phi_n20(i,j) =g= 0;
state3_n10(i,j) .. 0.125*delta3*F(j) - phi_n21(i,j) - phi_n22(i,j) =g= 0;
state3_n11(i,j) .. 0.125*delta3*F(j) - phi_n23(i,j) - phi_n24(i,j) =g= 0;
state3_n12(i,j) .. 0.125*delta3*F(j) - phi_n25(i,j) - phi_n26(i,j) =g= 0;
state3_n13(i,j) .. 0.125*delta3*F(j) - phi_n27(i,j) - phi_n28(i,j) =g= 0;
state3_n14(i,j) .. 0.125*delta3*F(j) - phi_n29(i,j) - phi_n30(i,j) =g= 0;
state3_n15(i,j) .. 0.0625*delta4*F(j) - phi_n31(i,j) - phi_n32(i,j) =g= 0;
state3_n16(i,j) .. 0.0625*delta4*F(j) - phi_n33(i,j) - phi_n34(i,j) =g= 0;
state3_n17(i,j) .. 0.0625*delta4*F(j) - phi_n35(i,j) - phi_n36(i,j) =g= 0;
state3_n18(i,j) .. 0.0625*delta4*F(j) - phi_n37(i,j) - phi_n38(i,j) =g= 0;
state3_n19(i,j) .. 0.0625*delta4*F(j) - phi_n39(i,j) - phi_n40(i,j) =g= 0;
state3_n20(i,j) .. 0.0625*delta4*F(j) - phi_n41(i,j) - phi_n42(i,j) =g= 0;
state3_n21(i,j) .. 0.0625*delta4*F(j) - phi_n43(i,j) - phi_n44(i,j) =g= 0;
state3_n22(i,j) .. 0.0625*delta4*F(j) - phi_n45(i,j) - phi_n46(i,j) =g= 0;
state3_n23(i,j) .. 0.0625*delta4*F(j) - phi_n47(i,j) - phi_n48(i,j) =g= 0;
state3_n24(i,j) .. 0.0625*delta4*F(j) - phi_n49(i,j) - phi_n50(i,j) =g= 0;
state3_n25(i,j) .. 0.0625*delta4*F(j) - phi_n51(i,j) - phi_n52(i,j) =g= 0;
state3_n26(i,j) .. 0.0625*delta4*F(j) - phi_n53(i,j) - phi_n54(i,j) =g= 0;
state3_n27(i,j) .. 0.0625*delta4*F(j) - phi_n55(i,j) - phi_n56(i,j) =g= 0;
state3_n28(i,j) .. 0.0625*delta4*F(j) - phi_n57(i,j) - phi_n58(i,j) =g= 0;
state3_n29(i,j) .. 0.0625*delta4*F(j) - phi_n59(i,j) - phi_n60(i,j) =g= 0;
state3_n30(i,j) .. 0.0625*delta4*F(j) - phi_n61(i,j) - phi_n62(i,j) =g= 0;

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
profit_n15.q_n15,
profit_n16.q_n16,
profit_n17.q_n17,
profit_n18.q_n18,
profit_n19.q_n19,
profit_n20.q_n20,
profit_n21.q_n21,
profit_n22.q_n22,
profit_n23.q_n23,
profit_n24.q_n24,
profit_n25.q_n25,
profit_n26.q_n26,
profit_n27.q_n27,
profit_n28.q_n28,
profit_n29.q_n29,
profit_n30.q_n30,
profit_n31.q_n31,
profit_n32.q_n32,
profit_n33.q_n33,
profit_n34.q_n34,
profit_n35.q_n35,
profit_n36.q_n36,
profit_n37.q_n37,
profit_n38.q_n38,
profit_n39.q_n39,
profit_n40.q_n40,
profit_n41.q_n41,
profit_n42.q_n42,
profit_n43.q_n43,
profit_n44.q_n44,
profit_n45.q_n45,
profit_n46.q_n46,
profit_n47.q_n47,
profit_n48.q_n48,
profit_n49.q_n49,
profit_n50.q_n50,
profit_n51.q_n51,
profit_n52.q_n52,
profit_n53.q_n53,
profit_n54.q_n54,
profit_n55.q_n55,
profit_n56.q_n56,
profit_n57.q_n57,
profit_n58.q_n58,
profit_n59.q_n59,
profit_n60.q_n60,
profit_n61.q_n61,
profit_n62.q_n62,
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
capacity_n15.lambda_n15,
capacity_n16.lambda_n16,
capacity_n17.lambda_n17,
capacity_n18.lambda_n18,
capacity_n19.lambda_n19,
capacity_n20.lambda_n20,
capacity_n21.lambda_n21,
capacity_n22.lambda_n22,
capacity_n23.lambda_n23,
capacity_n24.lambda_n24,
capacity_n25.lambda_n25,
capacity_n26.lambda_n26,
capacity_n27.lambda_n27,
capacity_n28.lambda_n28,
capacity_n29.lambda_n29,
capacity_n30.lambda_n30,
capacity_n31.lambda_n31,
capacity_n32.lambda_n32,
capacity_n33.lambda_n33,
capacity_n34.lambda_n34,
capacity_n35.lambda_n35,
capacity_n36.lambda_n36,
capacity_n37.lambda_n37,
capacity_n38.lambda_n38,
capacity_n39.lambda_n39,
capacity_n40.lambda_n40,
capacity_n41.lambda_n41,
capacity_n42.lambda_n42,
capacity_n43.lambda_n43,
capacity_n44.lambda_n44,
capacity_n45.lambda_n45,
capacity_n46.lambda_n46,
capacity_n47.lambda_n47,
capacity_n48.lambda_n48,
capacity_n49.lambda_n49,
capacity_n50.lambda_n50,
capacity_n51.lambda_n51,
capacity_n52.lambda_n52,
capacity_n53.lambda_n53,
capacity_n54.lambda_n54,
capacity_n55.lambda_n55,
capacity_n56.lambda_n56,
capacity_n57.lambda_n57,
capacity_n58.lambda_n58,
capacity_n59.lambda_n59,
capacity_n60.lambda_n60,
capacity_n61.lambda_n61,
capacity_n62.lambda_n62,
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
state_n15,
state_n16,
state_n17,
state_n18,
state_n19,
state_n20,
state_n21,
state_n22,
state_n23,
state_n24,
state_n25,
state_n26,
state_n27,
state_n28,
state_n29,
state_n30,
state_n31,
state_n32,
state_n33,
state_n34,
state_n35,
state_n36,
state_n37,
state_n38,
state_n39,
state_n40,
state_n41,
state_n42,
state_n43,
state_n44,
state_n45,
state_n46,
state_n47,
state_n48,
state_n49,
state_n50,
state_n51,
state_n52,
state_n53,
state_n54,
state_n55,
state_n56,
state_n57,
state_n58,
state_n59,
state_n60,
state_n61,
state_n62,
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
state2_n15.K_n15,
state2_n16.K_n16,
state2_n17.K_n17,
state2_n18.K_n18,
state2_n19.K_n19,
state2_n20.K_n20,
state2_n21.K_n21,
state2_n22.K_n22,
state2_n23.K_n23,
state2_n24.K_n24,
state2_n25.K_n25,
state2_n26.K_n26,
state2_n27.K_n27,
state2_n28.K_n28,
state2_n29.K_n29,
state2_n30.K_n30,
state2_n31.K_n31,
state2_n32.K_n32,
state2_n33.K_n33,
state2_n34.K_n34,
state2_n35.K_n35,
state2_n36.K_n36,
state2_n37.K_n37,
state2_n38.K_n38,
state2_n39.K_n39,
state2_n40.K_n40,
state2_n41.K_n41,
state2_n42.K_n42,
state2_n43.K_n43,
state2_n44.K_n44,
state2_n45.K_n45,
state2_n46.K_n46,
state2_n47.K_n47,
state2_n48.K_n48,
state2_n49.K_n49,
state2_n50.K_n50,
state2_n51.K_n51,
state2_n52.K_n52,
state2_n53.K_n53,
state2_n54.K_n54,
state2_n55.K_n55,
state2_n56.K_n56,
state2_n57.K_n57,
state2_n58.K_n58,
state2_n59.K_n59,
state2_n60.K_n60,
state2_n61.K_n61,
state2_n62.K_n62,
state3_n0.In_n0,
state3_n1.In_n1,
state3_n2.In_n2,
state3_n3.In_n3,
state3_n4.In_n4,
state3_n5.In_n5,
state3_n6.In_n6,
state3_n7.In_n7,
state3_n8.In_n8,
state3_n9.In_n9,
state3_n10.In_n10,
state3_n11.In_n11,
state3_n12.In_n12,
state3_n13.In_n13,
state3_n14.In_n14,
state3_n15.In_n15,
state3_n16.In_n16,
state3_n17.In_n17,
state3_n18.In_n18,
state3_n19.In_n19,
state3_n20.In_n20,
state3_n21.In_n21,
state3_n22.In_n22,
state3_n23.In_n23,
state3_n24.In_n24,
state3_n25.In_n25,
state3_n26.In_n26,
state3_n27.In_n27,
state3_n28.In_n28,
state3_n29.In_n29,
state3_n30.In_n30
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
alpha_n7    /100/
alpha_n8    /100/
alpha_n9    /100/
alpha_n10    /100/
alpha_n11    /100/
alpha_n12    /100/
alpha_n13    /100/
alpha_n14    /100/
alpha_n15    /100/
alpha_n16    /100/
alpha_n17    /100/
alpha_n18    /100/
alpha_n19    /100/
alpha_n20    /100/
alpha_n21    /100/
alpha_n22    /100/
alpha_n23    /100/
alpha_n24    /100/
alpha_n25    /100/
alpha_n26    /100/
alpha_n27    /100/
alpha_n28    /100/
alpha_n29    /100/
alpha_n30    /100/
alpha_n31    /100/
alpha_n32    /100/
alpha_n33    /100/
alpha_n34    /100/
alpha_n35    /100/
alpha_n36    /100/
alpha_n37    /100/
alpha_n38    /100/
alpha_n39    /100/
alpha_n40    /100/
alpha_n41    /100/
alpha_n42    /100/
alpha_n43    /100/
alpha_n44    /100/
alpha_n45    /100/
alpha_n46    /100/
alpha_n47    /100/
alpha_n48    /100/
alpha_n49    /100/
alpha_n50    /100/
alpha_n51    /100/
alpha_n52    /100/
alpha_n53    /100/
alpha_n54    /100/
alpha_n55    /100/
alpha_n56    /100/
alpha_n57    /100/
alpha_n58    /100/
alpha_n59    /100/
alpha_n60    /100/
alpha_n61    /100/
alpha_n62    /100/
beta        /0.75/
delta1      /0.9708738/
delta2      /0.9425959/
delta3      /0.9151417/
delta4      /0.8884870/
delta5      /0.8626088/
nu          /0.9/
rho         /0.025/
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




*oligop.optfile = 1;
*option mcp=kestrel;
option iterlim = 40000;
Solve oligop using mcp;