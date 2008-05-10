Sets
i        players
j        technologies
;


Alias(i,n)
Alias(j,m)

Parameters
alpha    demand function intercept
beta     demand function slope
K0(i,j)  capacity  t=0
c(j)     variable costs
F(j)     capacity costs
;


Equations
profit0(i,j)          profit function t=0
profit1(i,j)          profit function t=1
capacity0(i,j)        capacity constraint t=0
capacity1(i,j)        capacity constraint t=1
state(i,j)            state equation
state2(i,j)           state equation (K1)
state3(i,j)           state equation (I)
;

Positive Variables
q0(i,j)          quantity t=0
q1(i,j)          quantity t=1
lambda0(i,j)     capacity constraint t=0
lambda1(i,j)     capacity constraint t=1
K1(i,j)          capacity
In0(i,j)         investments t=0
;

Free Variable
phi(i,j)   state
;

profit0(i,j) .. -alpha + beta*sum((n,m),q0(n,m)) + beta*sum(n,q0(n,j))+ c(j) + lambda0(i,j) =g= 0;
profit1(i,j) .. -alpha + beta*sum((n,m),q1(n,m)) + beta*sum(n,q1(n,j))+ c(j) + lambda1(i,j) =g= 0;

capacity0(i,j) .. -q0(i,j) + K0(i,j) =g= 0;
capacity1(i,j) .. -q1(i,j) + K1(i,j) =g= 0;

state(i,j) .. K1(i,j) - K0(i,j) - In0(i,j) =e= 0;
state2(i,j) .. - lambda1(i,j) + phi(i,j) =g= 0;
state3(i,j) .. F(j) - phi(i,j) =g= 0;


model oligop /profit0.q0, profit1.q1, capacity0.lambda0, capacity1.lambda1,
             state, state2.K1, state3.In0/;

Sets
i        /Rwe, EON, Vatten, EnBW/
j        /Hydro, Nuclear, Lignite, Hardcoal, Gas, Oil, Pump /
;

Parameters
alpha    /74905/
beta     /245.75/
;

Parameter c(j)           /
                         Hydro    7.6
                         Nuclear  9.5
                         Lignite  10.6
                         Hardcoal 16.1
                         Gas      33.5
                         Oil      44
                         Pump     80
                         /;

Parameter F(j)          /
                         Hydro    3500000
                         Nuclear  1841000
                         Lignite  1074000
                         Hardcoal 971000
                         Gas      460000
                         Oil      1000000000
                         Pump     1000000000
                        /;

Table K0(i,j)
       Hydro   Nuclear      Lignite      Hardcoal    Gas         Oil       Pump
RWE      741      5499      10554        7249        4297        188        793
EON     1320      8473       1425        9461        3808       1779       1110
Vatten     9      1421       6932        1729         870       1429       2883
EnBW     447      4272        453        3288        1083        617        368
;


Solve oligop using mcp;

Display q0.l, q1.l,In0.l, K0, K1.l,lambda0.l,lambda1.l;