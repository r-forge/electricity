Set
t        time     /0,1/
s        scenario /l,h/
i        players  /RWE /
k        technologies /flexible,inflexible/
;

Alias (i,j);
Alias (k,h);
Alias (s,w);

Parameter

alphaz   alpha zero                      / 767.1 /
beta     demand function slope           /0.00765113 /

Parameter
c(k) variable kosten  / flexible   10
                        inflexible 25  /

capc(k) capacity costs   / flexible      30
                           inflexible    15 /



pc0  /     1000     /

pc1  / 1000  /

alpha(s)                 /l  100
                          h  150 /


Table
cap0(i,k)   capacities
                 flexible       inflexible
RWE              10              10

Variable
u(i,k)
p0
p1(s)
quant0(i)
quant1(s,i)

positive Variable
inv(i,k)
q0(i,k)
q1(s,i,k)
y0(i,k)
y1(s,i,k)
psi0
psi1(s)
cap1(i,k) ;

Equations
profit0(i,k)     the profit function
profit1(s,i,k)
restr0(i,k)      the quantity restriction
restr1(s,i,k)

pricecap0       the price cap
pricecap1(s)

invest(i,k)
state(i,k)
kapa(i,k)

price0        gives back the price (not relevant for result)
price1(s)      gives back the price (not relevant for result)
quantity0(i)   gives back the quantities (not relevant for result)
quantity1(s,i) gives back the quantities (not relevant for result);
*  +  +
profit0(i,k)..    - alphaz + 2*beta*sum(h,q0(i,h))      + c(k) + y0(i,k)- beta*psi0 =g= 0;

profit1(s,i,k).. 0.5*(- alpha(s) + 2*beta*sum(h,q1(s,i,h))   + c(k) ) + y1(s,i,k)- beta*psi1(s) =g= 0;

restr0(i,k)..      -q0(i,k)  +       cap0(i,k)        =g= 0;
restr1(s,i,k)..   -q1(s,i,k) +       cap1(i,k)        =g= 0;

pricecap0..    -alphaz + beta*sum((j,h),q0(j,h)) + pc0 =g= 0;
pricecap1(s)..  -alpha(s) + beta*sum((j,h),q1(s,j,h)) + pc1 =g= 0;

invest(i,k)..      capc(k)  - u(i,k)            =g= 0;

state(i,k)..      -cap1(i,k)  + cap0(i,k)  + inv(i,k)    =e= 0;

kapa(i,k)..      + sum((w), y1(w,i,k)) - u(i,k)  =g= 0;

price0..        p0 =e= alphaz-  beta*sum((j,h),q0(j,h)) ;
price1(s)..        p1(s) =e= alpha(s)-  beta*sum((j,h),q1(s,j,h)) ;
quantity0(i)..      quant0(i) =e=  sum(h, q0(i,h))  ;
quantity1(s,i)..    quant1(s,i) =e= sum(h, q1(s,i,h)) ;

model monop  /profit0.q0,  restr0.y0, profit1.q1 , restr1.y1, pricecap0.psi0,pricecap1.psi1, invest.inv, state.u, kapa.cap1, price0, price1, quantity0, quantity1 /

solve monop using mcp;

display q0.l, y0.l, q1.l, y1.l , inv.l, cap1.l, p0.l, p1.l, quant0.l, quant1.l,  u.l