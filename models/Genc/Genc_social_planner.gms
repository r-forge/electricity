Set
t        time     /0,1/
s        scenario /l,h/
*i        players  /RWE, EON, Vatten, EnBW /
k        technologies /Hydro, Nuclear, BCoal, HCoal, Gas, Oil, Pump /
m        market states /exthigh, vhigh, high, inter, low, vlow /
;

*Alias (i,j);
Alias (k,h);
Alias (n,m);
Alias (s,w);

Scalar
ro        decreciation factor     /0.95/
e        discount factor         /0.9 /

Parameter
c(k) variable kosten     /
                         Hydro    7.6
                         Nuclear  9.5
                         BCoal    10.6
                         HCoal    16.1
                         Gas      33.5
                         Oil      44
                         Pump     80 /
gamma(k) capacity costs   /
                         Hydro    35000000000
                         Nuclear  1841000
                         BCoal    1074000
                         HCoal    971000
                         Gas      460000
                         Oil      1000000000
                         Pump     1000000000    /


F(k)   scrap values      /
                         Hydro     3395000
                         Nuclear   1785770
                         BCoal     1041780
                         HCoal     941870
                         Gas       446200
                         Oil       10
                         Pump      10
                         /
alphaz(m) demand function intercepts in different market states at time zero /
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
cap0(k) starting cacities of welfare maximizer (sum of cap of all players)   /
                         Hydro            2517
                         Nuclear         19665
                         BCoal           19364
                         HCoal           21727
                         Gas             10058
                         Oil              4013
                         Pump             5154    /
*Table
*cap0(i,k)   capacities
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
u(k)
p0(m)
p1(m,s)

positive Variable
inv(k)
q0(k,m)
q1(s,k,m)
y0(k,m)
y1(s,k,m)
cap1(k) ;

Equations
profit0(k,m)     the profit function
profit1(s,k,m)
restr0(k,m)      the quantity restriction
restr1(s,k,m)

invest(k)
state(k)
kapa(k)

price0(m)        gives back the price (not relevant for result)
price1(m,s)      gives back the price (not relevant for result) ;

profit0(k,m)..       v(m)* (- alphaz(m) + beta(m)*sum(h,q0(h,m)) + c(k)  )+ y0(k,m)            =g= 0;
profit1(s,k,m)..  v(m)*0.5*e* (- alpha(s,m) + beta(m)*sum(h,q1(s,h,m)) + c(k) ) + y1(s,k,m)     =g= 0;

restr0(k,m)..     - q0(k,m)  +       cap0(k)        =g= 0;
restr1(s,k,m)..   -q1(s,k,m) +       cap1(k)        =g= 0;

invest(k)..      gamma(k) - e*F(k) - u(k)           =g= 0;

state(k)..      -cap1(k)  + ro*cap0(k)  + inv(k)    =e= 0;

kapa(k)..      +sum((w,n), y1(w,k,n))  - u(k)  =g= 0;

price0(m)..        p0(m) =e= alphaz(m)-  beta(m)*sum((h),q0(h,m)) ;
price1(m,s)..      p1(m,s) =e= alpha(s,m)-  beta(m)*sum((h),q1(s,h,m)) ;

model monop  /profit0.q0,  restr0.y0, profit1.q1 , restr1.y1, invest.inv, state.u, kapa.cap1, price0, price1 /

solve monop using mcp;

display q0.l, y0.l, q1.l, y1.l , inv.l, cap1.l, p0.l, p1.l