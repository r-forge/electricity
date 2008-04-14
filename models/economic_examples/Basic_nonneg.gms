Set

t        time     /0,1/
s        scenario /l,h/
i        players  /RWE, EON, Vatten, EnBW /
;

Alias (i,j);
Alias (s,w);

Scalars

beta     demand function slope           /0.00765113 /

Parameter
c variable kosten  /10.6 /

gamma capacity costs   /    40  /

pc1  / 73  /

alpha(s)                 /l  100
                          h  150 /

cap0(i) /RWE     0
         EON     0
         EnBW    0
         Vatten  0 /

Variable
u(i)
p1(s)

winl(i)
capaci

positive Variable

q1(s,i)
y1(s,i)
psi1(s)
inv(i)
cap1(i)
jota(i)
;

Equations


profit1(s,i)   the profit function

restr1(s,i)    the quantity restriction

pricecap1(s)   the price cap

nonneg(i)     profits should be nonnegative

invest(i)
state(i)
kapa(i)

price1(s)     gives back the price (not relevant for result)
winloss(i)    Profit
capacities    gives totel capacities
;

profit1(s,i)..  0.5*(- alpha(s) + beta*q1(s,i) + beta*sum((j),q1(s,j)) + c  )+ y1(s,i)- beta*psi1(s) - jota(i)*0.5*(pc1 -c)  =g= 0;

restr1(s,i)..  - q1(s,i) +       cap1(i)    =g= 0;

pricecap1(s)..  -alpha(s) + beta*sum(j,q1(s,j)) + pc1 =g= 0;

invest(i)..      gamma  - u(i)+ jota(i)*gamma  =g= 0;

state(i)..      cap1(i)  - cap0(i)  - inv(i)  =e= 0;

kapa(i)..       - sum(w, y1(w,i)) + u(i)  =g= 0;

price1(s)..     p1(s) =e= alpha(s)-  beta*sum(j,q1(s,j)) ;

nonneg(i)..      sum(w, 0.5*( (min(pc1,alpha(w)-  beta*sum(j,q1(w,j))))*q1(w,i)- c*q1(w,i)  ))-inv(i)*gamma =g= 0;

winloss(i)..     winl(i) =e= + 0.5*[ (alpha('l') - beta*sum((j),q1('l',j)) )* q1('l',i) - c*q1('l',i) ]+ 0.5*[ (alpha('h') - beta*sum((j),q1('h',j)) )* q1('h',i) - c*q1('h',i) ]  - gamma*inv(i) ;

capacities..    capaci =e= sum(j, cap1(j))

model monop  /profit1.q1, restr1.y1, invest.inv, state.u, kapa.cap1, pricecap1.psi1, price1, nonneg.jota, winloss, capacities /

solve monop using mcp;

display  q1.l, y1.l, inv.l, cap1.l, capaci.l , p1.l, winl.l