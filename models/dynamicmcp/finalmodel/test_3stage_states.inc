aSets
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
nu          /0.8/
rho         /0.02/
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