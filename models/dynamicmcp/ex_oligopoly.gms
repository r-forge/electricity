Sets
i        players
;

Alias(i,m)

Parameters
alpha    demand function intercept
beta     demand function slope
K(i)     capacity constraint
c        variable costs
;

Positive Variables
q(i)          quantity
lambda(i)     capacity constraint
;

Equations
profit(i)             profit function
capacity(i)           capacity constraint t=0
;

profit(i) .. -alpha + beta*sum(m,q(m)) + beta*q(i) + c + lambda(i) =g= 0;
capacity(i) .. -q(i) + K(i) =g= 0;

model monop /profit.q, capacity.lambda/;

Sets
i        /Player1, Player2/
;

Parameters
alpha    /100/
beta     /0.75/
c        /3/
;

Parameter K(i)    /Player1      40
                   Player2      60
                 /;

Solve monop using mcp;

Display q.l, lambda.l;
