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
profit_n7(i,j) .. -0.125*delta2*(alpha_n7 - beta*sum((l,m),q_n7,m)) - c(j)) + lambda_n7(i,j) =g= 0;
profit_n8(i,j) .. -0.125*delta2*(alpha_n8 - beta*sum((l,m),q_n8,m)) - c(j)) + lambda_n8(i,j) =g= 0;
profit_n9(i,j) .. -0.125*delta2*(alpha_n9 - beta*sum((l,m),q_n9,m)) - c(j)) + lambda_n9(i,j) =g= 0;
profit_n10(i,j) .. -0.125*delta2*(alpha_n10 - beta*sum((l,m),q_n10,m)) - c(j)) + lambda_n10(i,j) =g= 0;
profit_n11(i,j) .. -0.125*delta2*(alpha_n11 - beta*sum((l,m),q_n11,m)) - c(j)) + lambda_n11(i,j) =g= 0;
profit_n12(i,j) .. -0.125*delta2*(alpha_n12 - beta*sum((l,m),q_n12,m)) - c(j)) + lambda_n12(i,j) =g= 0;
profit_n13(i,j) .. -0.125*delta2*(alpha_n13 - beta*sum((l,m),q_n13,m)) - c(j)) + lambda_n13(i,j) =g= 0;
profit_n14(i,j) .. -0.125*delta2*(alpha_n14 - beta*sum((l,m),q_n14,m)) - c(j)) + lambda_n14(i,j) =g= 0;
profit_n15(i,j) .. -0.0625*delta2*(alpha_n15 - beta*sum((l,m),q_n15,m)) - c(j)) + lambda_n15(i,j) =g= 0;
profit_n16(i,j) .. -0.0625*delta2*(alpha_n16 - beta*sum((l,m),q_n16,m)) - c(j)) + lambda_n16(i,j) =g= 0;
profit_n17(i,j) .. -0.0625*delta2*(alpha_n17 - beta*sum((l,m),q_n17,m)) - c(j)) + lambda_n17(i,j) =g= 0;
profit_n18(i,j) .. -0.0625*delta2*(alpha_n18 - beta*sum((l,m),q_n18,m)) - c(j)) + lambda_n18(i,j) =g= 0;
profit_n19(i,j) .. -0.0625*delta2*(alpha_n19 - beta*sum((l,m),q_n19,m)) - c(j)) + lambda_n19(i,j) =g= 0;
profit_n20(i,j) .. -0.0625*delta2*(alpha_n20 - beta*sum((l,m),q_n20,m)) - c(j)) + lambda_n20(i,j) =g= 0;
profit_n21(i,j) .. -0.0625*delta2*(alpha_n21 - beta*sum((l,m),q_n21,m)) - c(j)) + lambda_n21(i,j) =g= 0;
profit_n22(i,j) .. -0.0625*delta2*(alpha_n22 - beta*sum((l,m),q_n22,m)) - c(j)) + lambda_n22(i,j) =g= 0;
profit_n23(i,j) .. -0.0625*delta2*(alpha_n23 - beta*sum((l,m),q_n23,m)) - c(j)) + lambda_n23(i,j) =g= 0;
profit_n24(i,j) .. -0.0625*delta2*(alpha_n24 - beta*sum((l,m),q_n24,m)) - c(j)) + lambda_n24(i,j) =g= 0;
profit_n25(i,j) .. -0.0625*delta2*(alpha_n25 - beta*sum((l,m),q_n25,m)) - c(j)) + lambda_n25(i,j) =g= 0;
profit_n26(i,j) .. -0.0625*delta2*(alpha_n26 - beta*sum((l,m),q_n26,m)) - c(j)) + lambda_n26(i,j) =g= 0;
profit_n27(i,j) .. -0.0625*delta2*(alpha_n27 - beta*sum((l,m),q_n27,m)) - c(j)) + lambda_n27(i,j) =g= 0;
profit_n28(i,j) .. -0.0625*delta2*(alpha_n28 - beta*sum((l,m),q_n28,m)) - c(j)) + lambda_n28(i,j) =g= 0;
profit_n29(i,j) .. -0.0625*delta2*(alpha_n29 - beta*sum((l,m),q_n29,m)) - c(j)) + lambda_n29(i,j) =g= 0;
profit_n30(i,j) .. -0.0625*delta2*(alpha_n30 - beta*sum((l,m),q_n30,m)) - c(j)) + lambda_n30(i,j) =g= 0;
profit_n31(i,j) .. -0.03125*delta2*(alpha_n31 - beta*sum((l,m),q_n31,m)) - c(j)) + lambda_n31(i,j) =g= 0;
profit_n32(i,j) .. -0.03125*delta2*(alpha_n32 - beta*sum((l,m),q_n32,m)) - c(j)) + lambda_n32(i,j) =g= 0;
profit_n33(i,j) .. -0.03125*delta2*(alpha_n33 - beta*sum((l,m),q_n33,m)) - c(j)) + lambda_n33(i,j) =g= 0;
profit_n34(i,j) .. -0.03125*delta2*(alpha_n34 - beta*sum((l,m),q_n34,m)) - c(j)) + lambda_n34(i,j) =g= 0;
profit_n35(i,j) .. -0.03125*delta2*(alpha_n35 - beta*sum((l,m),q_n35,m)) - c(j)) + lambda_n35(i,j) =g= 0;
profit_n36(i,j) .. -0.03125*delta2*(alpha_n36 - beta*sum((l,m),q_n36,m)) - c(j)) + lambda_n36(i,j) =g= 0;
profit_n37(i,j) .. -0.03125*delta2*(alpha_n37 - beta*sum((l,m),q_n37,m)) - c(j)) + lambda_n37(i,j) =g= 0;
profit_n38(i,j) .. -0.03125*delta2*(alpha_n38 - beta*sum((l,m),q_n38,m)) - c(j)) + lambda_n38(i,j) =g= 0;
profit_n39(i,j) .. -0.03125*delta2*(alpha_n39 - beta*sum((l,m),q_n39,m)) - c(j)) + lambda_n39(i,j) =g= 0;
profit_n40(i,j) .. -0.03125*delta2*(alpha_n40 - beta*sum((l,m),q_n40,m)) - c(j)) + lambda_n40(i,j) =g= 0;
profit_n41(i,j) .. -0.03125*delta2*(alpha_n41 - beta*sum((l,m),q_n41,m)) - c(j)) + lambda_n41(i,j) =g= 0;
profit_n42(i,j) .. -0.03125*delta2*(alpha_n42 - beta*sum((l,m),q_n42,m)) - c(j)) + lambda_n42(i,j) =g= 0;
profit_n43(i,j) .. -0.03125*delta2*(alpha_n43 - beta*sum((l,m),q_n43,m)) - c(j)) + lambda_n43(i,j) =g= 0;
profit_n44(i,j) .. -0.03125*delta2*(alpha_n44 - beta*sum((l,m),q_n44,m)) - c(j)) + lambda_n44(i,j) =g= 0;
profit_n45(i,j) .. -0.03125*delta2*(alpha_n45 - beta*sum((l,m),q_n45,m)) - c(j)) + lambda_n45(i,j) =g= 0;
profit_n46(i,j) .. -0.03125*delta2*(alpha_n46 - beta*sum((l,m),q_n46,m)) - c(j)) + lambda_n46(i,j) =g= 0;
profit_n47(i,j) .. -0.03125*delta2*(alpha_n47 - beta*sum((l,m),q_n47,m)) - c(j)) + lambda_n47(i,j) =g= 0;
profit_n48(i,j) .. -0.03125*delta2*(alpha_n48 - beta*sum((l,m),q_n48,m)) - c(j)) + lambda_n48(i,j) =g= 0;
profit_n49(i,j) .. -0.03125*delta2*(alpha_n49 - beta*sum((l,m),q_n49,m)) - c(j)) + lambda_n49(i,j) =g= 0;
profit_n50(i,j) .. -0.03125*delta2*(alpha_n50 - beta*sum((l,m),q_n50,m)) - c(j)) + lambda_n50(i,j) =g= 0;
profit_n51(i,j) .. -0.03125*delta2*(alpha_n51 - beta*sum((l,m),q_n51,m)) - c(j)) + lambda_n51(i,j) =g= 0;
profit_n52(i,j) .. -0.03125*delta2*(alpha_n52 - beta*sum((l,m),q_n52,m)) - c(j)) + lambda_n52(i,j) =g= 0;
profit_n53(i,j) .. -0.03125*delta2*(alpha_n53 - beta*sum((l,m),q_n53,m)) - c(j)) + lambda_n53(i,j) =g= 0;
profit_n54(i,j) .. -0.03125*delta2*(alpha_n54 - beta*sum((l,m),q_n54,m)) - c(j)) + lambda_n54(i,j) =g= 0;
profit_n55(i,j) .. -0.03125*delta2*(alpha_n55 - beta*sum((l,m),q_n55,m)) - c(j)) + lambda_n55(i,j) =g= 0;
profit_n56(i,j) .. -0.03125*delta2*(alpha_n56 - beta*sum((l,m),q_n56,m)) - c(j)) + lambda_n56(i,j) =g= 0;
profit_n57(i,j) .. -0.03125*delta2*(alpha_n57 - beta*sum((l,m),q_n57,m)) - c(j)) + lambda_n57(i,j) =g= 0;
profit_n58(i,j) .. -0.03125*delta2*(alpha_n58 - beta*sum((l,m),q_n58,m)) - c(j)) + lambda_n58(i,j) =g= 0;
profit_n59(i,j) .. -0.03125*delta2*(alpha_n59 - beta*sum((l,m),q_n59,m)) - c(j)) + lambda_n59(i,j) =g= 0;
profit_n60(i,j) .. -0.03125*delta2*(alpha_n60 - beta*sum((l,m),q_n60,m)) - c(j)) + lambda_n60(i,j) =g= 0;
profit_n61(i,j) .. -0.03125*delta2*(alpha_n61 - beta*sum((l,m),q_n61,m)) - c(j)) + lambda_n61(i,j) =g= 0;
profit_n62(i,j) .. -0.03125*delta2*(alpha_n62 - beta*sum((l,m),q_n62,m)) - c(j)) + lambda_n62(i,j) =g= 0;



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
