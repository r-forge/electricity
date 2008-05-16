Sets
i        /Player1, Player2, Player3/
j        /Tech1, Tech2/
s        /State1,State2/
;



Parameters
nu          /0.95/
rho         /0.025/
;

Parameter pm(s)  /
         State1  0.2
         State2  0.8
/;

Parameter alpha_n0(s)  /
         State1  100
         State2  90
/;

Parameter alpha_n1(s)  /
         State1  105
         State2  95
/;

Parameter alpha_n2(s)  /
         State1  95
         State2  92
/;

Parameter beta(s)  /
         State1  0.75
         State2  0.6
/;

Table K0(i,j)
                      Tech1      Tech2
          Player1      5        10
          Player2      5        10
          Player3      5        10
;


Parameter c(j)           /
                         Tech1    3
                         Tech2  2
                         /;

Parameter F(j)          /
                         Tech1   100
                         Tech2 200
                        /;