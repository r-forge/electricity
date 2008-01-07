Set

i  players  /RWE,EON,Vatten, EnBW /

;

Alias (i,j);
Parameters

c(i) variable kosten     /
                         RWE        10
                         EON        15
                         Vatten      9
                         EnBW       44
                         /

k(i)   kapazitäten       /
                         RWE        100000
                         EON        1320
                         Vatten        9
                         EnBW        447
                         /


Scalars

alpha    demand function intercept    /  767.1 /
beta     demand function slope       /0.00765113 /

;
Variable
q(i)
positive Variable
y(i);

Equations

profit(i)   the profit function
restr(i)    the quantity restriction

;

profit(i).. alpha - beta*q(i)- beta*sum(j,q(j)) - c(i) - y(i) =e= 0;

restr(i)..   -q(i) + k(i)                   =g= 0;

model monop  /profit.q, restr.y/

solve monop using mcp;

display q.l, y.l