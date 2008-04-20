Parameters
alpha    demand function intercept
beta     demand function slope
K        capacity constraint
c        variable costs
pc       pricecap
;

Positive Variables
q          quantity
lambda     capacity constraint
psi        price cap constraint
;

Equations
profit             profit function
capacity           capacity constraint t=0
pricecap           price cap
;


profit .. -alpha + 2*beta*q + c + lambda - psi*beta =g= 0;
capacity .. -q + K =g= 0;
pricecap .. -alpha + beta*q + pc =g= 0;


model monop /profit.q, capacity.lambda, pricecap.psi/;


Parameters
alpha    /100/
beta     /0.75/
K        /70/
c        /3/
pc       /48/
;

Solve monop using mcp;

Parameter totprofit total profit;
totprofit = (alpha-beta*q.l)*q.l - c*q.l;

Display q.l, lambda.l, totprofit;

