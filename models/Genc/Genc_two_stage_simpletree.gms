Set

t        time     /0,1/
s        scenario /l,h/
i        players  /RWE, EON, Vatten, EnBW /
k        technologies /Hydro, Nuclear, BCoal, HCoal, Gas, Oil, Pump /
m        market states /exthigh, vhigh, high, inter, low, vlow /

;

Alias (i,j);
Alias (k,h);
Alias (n,m);
Scalars

*alphaz   alpha zero                      / 767.1 /
beta     demand function slope           /0.00765113 /

Parameter
c(k) variable kosten     /
                         Hydro    7.6
                         Nuclear  9.5
                         BCoal    10.6
                         HCoal    16.1
                         Gas      33.5
                         Oil      44
                         Pump     80
                         /

capc(k) capacity costs   /
                         Hydro    3500
                         Nuclear  1841
                         BCoal    1074
                         HCoal    971
                         Gas      460
                         Oil      332
                         Pump     100000
                         /
F(k)   scrap values      /
                         Hydro    3400
                         Nuclear  1741
                         BCoal    974
                         HCoal    871
                         Gas      360
                         Oil      232
                         Pump     10
                         /
alphaz(m) demand function intercepts in different market states at time zero /
                         exthigh   767.1
                         vhigh     515.6
                         high      408.25
                         inter     291.8
                         low       177.5
                         vlow       85.5
                         /
*alpha(s)                 /l  767.1
*                         h  805.4 /

nmark(m) how often (within a year) occurs each market state  /
                         exthigh     46
                         vhigh      134
                         high       788
                         inter     2174
                         low       4201
                         vlow      1417
                         /

Table
cap0(i,k)   capacities
       Hydro   Nuclear      BCoal       HCoal        Gas         Oil       Pump
RWE      741      5499      10554        7249        4297        188        793
EON     1320      8473       1425        9461        3808       1779       1110
Vatten     9      1421       6932        1729         870       1429       2883
EnBW     447      4272        453        3288        1083        617        368
;

*Table
*cap1(i,k)   capacities
*       Hydro   Nuclear      BCoal       HCoal        Gas         Oil       Pump
*RWE      741      5499      10554        7249        4297        188        793
*EON     1320      8473       1425        9461        3808       1779       1110
*Vatten     9      1421       6932        1729         870       1429       2883
*EnBW     447      4272        453        3288        1083        617        368
*;

Table
alpha(s,m)
         exthigh      vhigh   high    inter    low     vlow
l         767.1       515.6   408.25   291.8   177.5   85.5
h       805.455       541.38  428.66   306.39  186.37  89.775
;

Variable

u(i,k)

positive Variable
inv(i,k)
q0(i,k,m)
q1(s,i,k,m)
y0(i,k,m)
y1(s,i,k,m)
cap1(i,k)
;

Equations

profit0(i,k,m)     the profit function
profit1(s,i,k,m)
restr0(i,k,m)      the quantity restriction
restr1(s,i,k,m)

invest(i,k)
state(i,k)
kapa(i,k)

;

profit0(i,k,m)..       nmark(m)* (- alphaz(m) + beta*sum(h,q0(i,h,m)) + beta*sum((j,h),q0(j,h,m)) + c(k) + y0(i,k,m)) =g= 0;
profit1(s,i,k,m).. nmark(m)*0.5* (- alpha(s,m) + beta*sum(h,q1(s,i,h,m)) + beta*sum((j,h),q1(s,j,h,m)) + c(k) + y1(s,i,k,m) ) =g= 0;

restr0(i,k,m)..      q0(i,k,m)  -       cap0(i,k)    =g= 0;
restr1(s,i,k,m)..   q1(s,i,k,m) -       cap1(i,k)    =g= 0;

invest(i,k)..      capc(k) - F(k) - u(i,k)       =g= 0;

state(i,k)..      -cap1(i,k)  + cap0(i,k)  + inv(i,k)  =e= 0;

kapa(i,k)..       0.5*(-sum(n, nmark(n)*y1('l',i,k,n)) - sum(n,nmark(n)* y1('h',i,k,n) ) )  + u(i,k)  =g= 0;

model monop  /profit0.q0,  restr0.y0, profit1.q1 , restr1.y1, invest.inv, state.u, kapa.cap1 /

solve monop using mcp;

display q0.l, y0.l, q1.l, y1.l , inv.l, cap1.l