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

PC  / 1000  /

problem Peak Load Pricing or Uncertainty? / 1   /

alpha(s)                 /l  100
                          h  150 /

K0(i) /  RWE     10
         EON     10
         EnBW    10
         Vatten  10 /

Variable

u(i)
capaci
tau(s)
p(s)

positive Variable

q(i,s)
In(i)
K1(i)
lambda(i,s)
psi(s)
jota(i)

Equations

profit(i,s)
invest(i)
capacity(i)
constraint(i,s)
state(i)

price(s)
pricecap(s)
nonneg(i)

capacities    gives totel capacities

;

profit(i,s).. -problem*[ alpha(s) - beta*sum(j, q(j,s)) - beta*q(i,s)    -c ] + lambda(i,s)- beta*psi(s)- jota(i)*problem*(p(s)-c)   =g= 0;
*
invest(i)..         gamma - u(i)+ gamma*jota(i) =g= 0 ;
*
capacity(i)..       u(i) - sum(w, lambda(i,w) ) =g= 0 ;

constraint(i,s)..   - q(i,s) + K1(i) =g= 0;

state(i)..          K1(i) - In(i) - K0(i) =e= 0  ;

pricecap(s)..       - p(s) + PC =g= 0;

price(s)..      - p(s)+ alpha(s) - beta*sum(j,q(j,s)) =e= 0;

nonneg(i)..    sum(w, problem*[ p(w)*q(i,w)- c*q(i,w) ]) - gamma*In(i) =g= 0;

capacities..    capaci =e= sum(j, K1(j)) ;

model simple / profit.q, invest.In, capacity.K1, constraint.lambda, state , pricecap.psi, price, nonneg.jota,   capacities /
*
solve simple using mcp;

display q.l, In.l, K1.l, lambda.l, u.l, capaci.l, p.l