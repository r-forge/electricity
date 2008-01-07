Set

k technologies /Hydro, Nuclear, BCoal, HCoal, Gas, Oil, Pump /

;

Alias (k,h);
Parameters

c(k) variable kosten     /
                         Hydro    10
                         Nuclear  10.3
                         BCoal    13.8
                         HCoal    14.4
                         Gas      19.2
                         Oil      44
                         Pump     80
                         /

kap(k) variable kosten   /
                         Hydro    1000
                         Nuclear  5000
                         BCoal    3000
                         HCoal    6000
                         Gas      3000
                         Oil      1000
                         Pump     1000
                         /

*Table
*k(i,k)   kapazitäten
*         Hydro       Nuclear      BCoal       HCoal        Gas         Oil       Pump
*RWE        741        5499        10554        7249        4297        188        793
*EON        1320        8473        1425        9461        3808        1779       1110
*Vatten        9        1421        6932        1729        870        1429        2883
*EnBW        447        4272        453        3288        1083        617        368



Scalars

alpha    demand function intercept    /  767.1 /
beta     demand function slope       /0.00765113 /

;

positive Variable
q(k)
y(k);

Equations

profit(k)   the profit function
restr(k)    the quantity restriction

;

profit(k).. alpha - 2*beta*sum(h,q(h)) - c(k) - y(k) =g= 0;

restr(k)..   -q(k) + kap(k)                   =g= 0;

model monop  /profit.q, restr.y/

solve monop using mcp;

display q.l, y.l