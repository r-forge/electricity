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
    State1 110
    State2 105
/;
Parameter alpha_n2(s)  /
    State1 95
    State2 90
/;



Parameter beta(s)  /
    State1 3
    State2 3
/;


Parameter pm(s)  /
         State1  0.4
         State2  0.6
/;


Parameters
delta1      /0.98/
delta2      /1/
*nu          /0.95/
rho         /0.02/
;



Table K0(i,j)
                      Tech1     Tech2
          Player1      3        8
          Player2      2        1
          Player3      0        5
;


Parameter c(j)           /
                         Tech1    2
                         Tech2    1
                         /;

Parameter F(j)          /
                         Tech1   2
                         Tech2   5
                        /;