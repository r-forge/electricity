Set

t        time     /0,1/
s        scenario /l,h/
i        players  /RWE, EON, Vatten, EnBW /
k        technologies /Hydro, Nuclear, BCoal, HCoal, Gas, Oil, Pump /

;

Alias (i,j);
Alias (k,h);

Scalars

alphaz   alpha zero                      / 767.1 /
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

*alpha(s)                 /l  767.1
*                         h  805.4 /
alpha(s)                 /l  1000
                          h   1200 /

Table
cap0(i,k)   capacities
       Hydro   Nuclear      BCoal       HCoal        Gas         Oil       Pump
RWE      741      5499      10554        7249        4297        188        793
EON     1320      8473       1425        9461        3808       1779       1110
Vatten     9      1421       6932        1729         870       1429       2883
EnBW     447      4272        453        3288        1083        617        368
;

Variable

u(i,k)

positive Variable
inv(i,k)
q0(i,k)
q1(s,i,k)
y0(i,k)
y1(s,i,k)
cap1(i,k)
;

Equations

profit0(i,k)     the profit function
profit1(s,i,k)
restr0(i,k)      the quantity restriction
restr1(s,i,k)

invest(i,k)
state(i,k)
kapa(i,k)

;

profit0(i,k)..         - alphaz + beta*sum(h,q0(i,h)) + beta*sum((j,h),q0(j,h)) + c(k) + y0(i,k) =g= 0;
profit1(s,i,k).. 0.5* (- alpha(s) + beta*sum(h,q1(s,i,h)) + beta*sum((j,h),q1(s,j,h)) + c(k) + y1(s,i,k) ) =g= 0;

restr0(i,k)..      q0(i,k)  -       cap0(i,k)    =g= 0;
restr1(s,i,k)..   q1(s,i,k) -       cap1(i,k)    =g= 0;

invest(i,k)..      capc(k) - F(k) - u(i,k)       =g= 0;

state(i,k)..      -cap1(i,k)  + cap0(i,k)  + inv(i,k)  =e= 0;

kapa(i,k)..       0.5*(-y1('l',i,k) - y1('h',i,k))  + u(i,k)  =g= 0;

model monop  /profit0.q0, profit1.q1, restr0.y0, restr1.y1, invest.inv, state.u, kapa.cap1 /

solve monop using mcp;

display q0.l,q1.l, y0.l,y1.l, inv.l, cap1.l