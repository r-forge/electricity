Set

t        time     /0,1/
s        scenario /l,h/
i        players  /RWE, EoN, EnBW, Vatten   /
*
;

Alias (i,j);
Alias (s,w);

Scalars

beta     demand function slope           /0.00765113 /

Parameter
c variable kosten  /10.6 /

gamma capacity costs   /    40  /

problem Peak Load Pricing or Uncertainty? / 1   /

alpha(s)                 /l  100
                          h  150 /

K0(i) /  RWE     0
         EoN     0
         EnBW    0
         Vatten  0   /

PC  / 1000 /


Variable

u(i)
capaci
ph
pl
In(i)

positive Variable

qh(i)
ql(i)
K1(i)
lambdah(i)
lambdal(i)
psil
jota(s)

Equations

*profith(i)
profitl(i)
invest(i)
capacity(i)
constrainth(i)
constraintl(i)
state(i)

priceh
pricel
pricecapl
nonneg1(s)

capacities    gives totel capacities

;

*profith(i).. -problem*[ PC -c ] + lambdah(i)      =g= 0;
*  alpha('h') -  2*beta*qh(i)   -c
profitl(i).. -problem*[ alpha('l') -  beta*ql(i) - beta*sum(j, ql(j))  -c ] + lambdal(i)- beta*psil       =g= 0;
*

invest(i)..         gamma - u(i) =g= 0 ;
*    gamma*jota(i)   lambdah(i) +
capacity(i)..       u(i) - (38.4 + lambdal(i)) =g= 0 ;

*constrainth(i)..   - qh(i)+ K1(i) =g= 0;
constraintl(i)..   - ql(i) + K1(i) =g= 0;

pricecapl..       - alpha('l') + beta*sum(j,ql(j)) + PC =g= 0;

state(i)..          K1(i) - In(i) - K0(i) =e= 0  ;

*pricecap(s)..       - alpha(s) + beta*sum(j,q(j,s)) + PC =g= 0;

*priceh..      - ph+ alpha('h') - beta*sum(j,qh(j)) =e= 0;
pricel..      - pl+ alpha('l') - beta*sum(j,ql(j)) =e= 0;

*nonneg(i)..    sum(w, problem*[ p(w)*q(i,w)- c*q(i,w) ]) - gamma*In(i) =g= 0;
*nonneg(i)..    problem*[ p('h')*q(i,'h')- c*q(i,'h') ] - gamma*In(i) =g= 0;
*nonneg(i)..    problem*[ (alpha('h') - beta*sum(j,q(j,'h')))*q(i,'h')- c*q(i,'h') ] - gamma*In(i) =g= 0;
*nonneg(i)..    sum(w, problem*u(i)*q(i,w)) - gamma*In(i) =g= 0;
*nonneg1(s)..    alpha(s)- beta*sum(j,q(j,s)) - c - gamma  =g= 0  ;
*
capacities..    capaci =e= sum(j, K1(j)) ;

model simple / profitl.ql, invest.In, pricel, capacity.K1, pricecapl.psil,  constraintl.lambdal, state, capacities /
* nonneg1.jota,  , jota.l    pricecap.psi,  psi.l ,   profith.qh,   priceh,  constrainth.lambdah,
solve simple using mcp;
*  qh.l,  lambdah.l,   ph.l,
display  ql.l, In.l, K1.l,  lambdal.l, u.l, capaci.l, pl.l , psil.l