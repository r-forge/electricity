Sets
i        /Player1, Player2, Player3/
j        /Tech1, Tech2/
s        /State1, State2/
;

Parameter alpha_n0(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n1(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n2(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n3(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n4(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n5(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n6(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n7(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n8(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n9(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n10(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n11(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n12(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n13(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n14(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n15(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n16(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n17(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n18(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n19(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n20(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n21(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n22(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n23(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n24(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n25(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n26(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n27(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n28(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n29(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n30(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n31(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n32(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n33(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n34(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n35(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n36(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n37(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n38(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n39(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n40(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n41(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n42(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n43(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n44(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n45(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n46(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n47(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n48(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n49(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n50(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n51(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n52(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n53(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n54(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n55(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n56(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n57(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n58(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n59(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n60(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n61(s)  /
    State1 100
    State2 110
/;
Parameter alpha_n62(s)  /
    State1 100
    State2 110
/;


Parameter beta(s)  /
    State1 0.75
    State2 0.6
/;


Parameter pm(s)  /
         State1  0.4
         State2  0.6
/;


Parameters
delta1      /0.9708738/
delta2      /0.9425959/
delta3      /0.9151417/
delta4      /0.8884870/
delta5      /0.8626088/
nu          /0.9/
rho         /0.075/
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