Set

i  players  /RWE,EON,Vatten, EnBW /
k  technologies /Hydro, Nuclear, BCoal, HCoal, Gas, Oil, Pump /

;

Alias (i,j);
Alias (k,h);

Parameters

Table
c(i,k)   variable Costs
          Hydro    Nuclear     BCoal      HCoal       Gas         Oil       Pump
RWE         7.6        9.5      10.6       16.1      33.5          44         80
EON         7.6        9.5      10.6       16.1      33.5          44         80
Vatten      7.6        9.5      10.6       16.1      33.5          44         80
EnBW        7.6        9.5      10.6       16.1      33.5          44         80


Table
cap(i,k)   capacities
       Hydro   Nuclear      BCoal       HCoal        Gas         Oil       Pump
RWE      741      5499      10554        7249        4297        188        793
EON     1320      8473       1425        9461        3808       1779       1110
Vatten     9      1421       6932        1729         870       1429       2883
EnBW     447      4272        453        3288        1083        617        368


Scalars

alpha    demand function intercept    /  767.1 /
beta     demand function slope       /0.00765113 /

;

positive Variable
q(i,k)
y(i,k);

Equations

profit(i,k)   the profit function
restr(i,k)    the quantity restriction

;

profit(i,k).. -alpha + beta*sum(h,q(i,h))+ beta*sum((j,h),q(j,h)) + c(i,k) + y(i,k) =g= 0;

restr(i,k)..   -q(i,k) + cap(i,k)                   =g= 0;

model monop  /profit.q, restr.y/

solve monop using mcp;

display q.l, y.l