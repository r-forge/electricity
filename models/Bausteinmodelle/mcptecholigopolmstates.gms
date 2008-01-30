Set

i  players  / RWE, EON, Vatten, EnBW /
k  technologies /Hydro, Nuclear, BCoal, HCoal, Gas, Oil, Pump /
m  market states /exthigh, vhigh, high, inter, low, vlow /

;

Alias (i,j);
Alias (k,h);

Parameters

c(k) variable kosten     /
                         Hydro    7.6
                         Nuclear  9.5
                         BCoal    10.6
                         HCoal    16.1
                         Gas      33.5
                         Oil      44
                         Pump     80
                         /

alpha(m) demand function intercepts in different market states /
                         exthigh   767.1
                         vhigh     515.6
                         high      408.25
                         inter     291.8
                         low       177.5
                         vlow       85.5
                         /
beta(m) demand function slopes in different market states /
                         exthigh   0.007651133
                         vhigh     0.005269006
                         high      0.004349105
                         inter     0.003379586
                         low       0.002530629
                         vlow      0.001672949
                         /

v(m) how often (within a year) occurs each market state  /
                         exthigh     46
                         vhigh      134
                         high       788
                         inter     2174
                         low       4201
                         vlow      1417
                         /
*Table
*c(i,k)   variable Costs
*          Hydro    Nuclear     BCoal      HCoal       Gas         Oil       Pump
*RWE         7.6        9.5      10.6       16.1      33.5          44         80
*EON         7.6        9.5      10.6       16.1      33.5          44         80
*Vatten      7.6        9.5      10.6       16.1      33.5          44         80
*EnBW        7.6        9.5      10.6       16.1      33.5          44         80


Table
cap(i,k)   capacities
       Hydro   Nuclear      BCoal       HCoal        Gas         Oil       Pump
RWE      741      5499      10554        7249        4297        188        793
EON     1320      8473       1425        9461        3808       1779       1110
Vatten     9      1421       6932        1729         870       1429       2883
EnBW     447      4272        453        3288        1083        617        368

;

Variable
p(m)
Menge(m)
Mengep(i,m)

positive Variable
q(i,k,m)
y(i,k,m);

Equations

profit(i,k,m)   the profit function
restr(i,k,m)    the quantity restriction
price(m)        gives back the price (not relevant for result)
Mengeg(m)       gives back total quantitiy (not relevant for result)
Mengepg(i,m)    gives back player´s quantity (not relevant for result)

;

profit(i,k,m)..  v(m)*[-alpha(m) + beta(m)*sum(h,q(i,h,m))+ beta(m)*sum((j,h),q(j,h,m)) + c(k)] + y(i,k,m) =g= 0;

restr(i,k,m)..   -q(i,k,m) + cap(i,k)                   =g= 0;

price(m)..        p(m) =e= alpha(m)-  beta(m)*sum((j,h),q(j,h,m)) ;

Mengeg(m)..      Menge(m) =e= sum((j,h),q(j,h,m));

Mengepg(i,m)..   Mengep(i,m) =e= sum(h,q(i,h,m));

model monop  /profit.q, restr.y, price, Mengeg, Mengepg/

solve monop using mcp;

display q.l, y.l, p.l, Menge.l, Mengep.l