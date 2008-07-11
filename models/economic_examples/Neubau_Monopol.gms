Set

t        time     /0,1/
s        scenario /l,h/
i        players  /RWE, EoN, EnBW, Vatten /
*
;

Alias (i,j);
Alias (s,w);

Scalars

beta     demand function slope     /0.00765113 /

Parameter
c variable kosten  /10.6 /

gamma capacity costs   / 40  /

PC  / 60   /

problem Peak Load Pricing or Uncertainty? / 1   /

alpha(s)                 /l   100
                          h   150 /

K0(i) /  RWE     0
        EoN     0
         EnBW    0
         Vatten  0
/

Variable

u(i)
capaci
p(s)
In(i)

positive Variable

q(i,s)
K1(i)
lambda(i,s)
psi(s)
jota(s)

Equations

profit(i,s)
invest(i)
capacity(i)
constraint(i,s)
state(i)

price(s)
pricecap(s)
nonneg1(s)

capacities    gives totel capacities

;
profit(i,s).. -problem*[ alpha(s)   -  beta*q(i,s)      - beta*sum(j, q(j,s))  -c ] + lambda(i,s)- beta*psi(s)     =g= 0;
*    - jota(i)*problem*((alpha(s) - beta*sum(j,q(j,s)))-c)       + beta*jota(s)
invest(i)..         gamma - u(i) =g= 0 ;
*    gamma*jota(i)
capacity(i)..       u(i) - sum(w, lambda(i,w) )=g= 0 ;

constraint(i,s)..   - q(i,s) + K1(i) =g= 0;

state(i)..          K1(i) - In(i) - K0(i) =e= 0  ;

pricecap(s)..       - alpha(s) + beta*sum(j,q(j,s)) + PC =g= 0;

price(s)..      - p(s)+ alpha(s) - beta*sum(j,q(j,s)) =e= 0;

*nonneg(i)..    sum(w, problem*[ p(w)*q(i,w)- c*q(i,w) ]) - gamma*In(i) =g= 0;
*nonneg(i)..    problem*[ p('h')*q(i,'h')- c*q(i,'h') ] - gamma*In(i) =g= 0;
*nonneg(i)..    problem*[ (alpha('h') - beta*sum(j,q(j,'h')))*q(i,'h')- c*q(i,'h') ] - gamma*In(i) =g= 0;
*nonneg(i)..    sum(w, problem*u(i)*q(i,w)) - gamma*In(i) =g= 0;
*nonneg1(s)..    alpha(s)- beta*sum(j,q(j,s)) - c - gamma  =g= 0  ;
*
capacities..    capaci =e= sum(j, K1(j)) ;

model simple / profit.q, invest.In,price, capacity.K1, constraint.lambda, state , pricecap.psi,   capacities /
* nonneg1.jota,  , jota.l
solve simple using mcp;

display q.l, In.l, K1.l, lambda.l, u.l, capaci.l, psi.l , p.l