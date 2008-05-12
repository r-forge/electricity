Sets
i        /Player1, Player2, Player3/
j        /Tech1, Tech2/
;


Parameters
alpha_n0    /100/
alpha_n1    /105/
alpha_n2    /95/
beta        /0.75/
nu          /0.95/
rho         /0.025/
;

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