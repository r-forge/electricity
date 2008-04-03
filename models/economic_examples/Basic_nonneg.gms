Set

t        time     /0,1/
s        scenario /l,h/
i        players  /RWE, EON, Vatten, EnBW /
*k        technologies /Hydro, Nuclear, BCoal, HCoal, Gas, Oil, Pump /
;

Alias (i,j);
Alias (s,w);

Scalars

alphaz   alpha zero                      / 767.1 /
beta     demand function slope           /0.00765113 /

Parameter
c variable kosten  /10.6 /

capc capacity costs   /      130  /

F   scrap values      /    90 /

pc0  /     1000     /

pc1  / 20  /

alpha(s)                 /l  100
                          h  150 /
*alpha(s)                 /l  1000
*                          h   1200 /

cap0(i) /RWE     2000
         EON     1500
         EnBW     500
         Vatten   500 /

*Table
*cap0(i,k)   capacities


*       Hydro   Nuclear      BCoal       HCoal        Gas         Oil       Pump
*RWE      741      5499      10554        7249        4297        188        793
*EON     1320      8473       1425        9461        3808       1779       1110
*EnBW     447      4272        453        3288        1083        617        368


Variable
u(i)
p0
p1(s)

winl(i)

positive Variable

q0(i)
q1(s,i)
y0(i)
y1(s,i)
psi0
psi1(s)
inv(i)
cap1(i)
jota(i)
;

Equations

profit0(i)     the profit function
profit1(s,i)
restr0(i)      the quantity restriction
restr1(s,i)

pricecap0       the price cap
pricecap1(s)

nonneg(i)     profits should be nonnegative

invest(i)
state(i)
kapa(i)

price0        gives back the price (not relevant for result)
price1(s)     gives back the price (not relevant for result)
winloss(i)    Profit
;
*
profit0(i)..         - alphaz + beta*q0(i)  + beta*sum((j),q0(j)) + c + y0(i)- beta*psi0 =g= 0;
profit1(s,i)..  0.5*(- alpha(s) + beta*q1(s,i) + beta*sum((j),q1(s,j)) + c  )+ y1(s,i)- beta*psi1(s) - jota(i)*0.5*(pc1 -c)  =g= 0;

restr0(i)..    -  q0(i)  +      cap0(i)    =g= 0;
restr1(s,i)..  - q1(s,i) +       cap1(i)    =g= 0;

pricecap0..    -alphaz + beta*sum(j,q0(j)) + pc0 =g= 0;
pricecap1(s)..  -alpha(s) + beta*sum(j,q1(s,j)) + pc1 =g= 0;

invest(i)..      capc - F - u(i)- jota(i)*(F-capc)  =g= 0;

state(i)..      cap1(i)  - cap0(i)  - inv(i)  =e= 0;

kapa(i)..       - sum(w, y1(w,i)) + u(i)  =g= 0;

price0..        p0 =e= alphaz-  beta*sum(j,q0(j)) ;
price1(s)..        p1(s) =e= alpha(s)-  beta*sum(j,q1(s,j)) ;

nonneg(i)..     sum(w, 0.5*(pc1-c)*q1(w,i)) + inv(i)*(-capc+F) =g= 0;

winloss(i)..     winl(i) =e= + 0.5*[ (alpha('l') - beta*sum((j),q1('l',j)) )* q1('l',i) - c*q1('l',i) ]+ 0.5*[ (alpha('h') - beta*sum((j),q1('h',j)) )* q1('h',i) - c*q1('h',i) ]  - capc*inv(i) + F*inv(i)

model monop  /profit0.q0, profit1.q1, restr0.y0, restr1.y1, invest.inv, state.u, kapa.cap1, pricecap0.psi0, pricecap1.psi1, price0, price1, nonneg.jota, winloss /

solve monop using mcp;

display q0.l, q1.l, y0.l, y1.l, inv.l, cap1.l , p0.l, p1.l, winl.l