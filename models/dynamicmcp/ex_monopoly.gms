Parameters
alpha    demand function intercept
beta     demand function slope
K        capacity constraint
c        variable costs
;

Positive Variables
q          quantity
lambda     capacity constraint
;

Equations
profit             profit function
capacity           capacity constraint t=0
;


profit .. -alpha + 2*beta*q + c + lambda =g= 0;
capacity .. -q + K =g= 0;



model monop /profit.q, capacity.lambda/;


Parameters
alpha    /100/
beta     /0.75/
K        /55/
c        /3/
;

Solve monop using mcp;

Display q.l, lambda.l;

K = 70;
Solve monop using mcp;

Display q.l, lambda.l;