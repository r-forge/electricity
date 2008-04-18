Sets
j        technologies
;

Alias(j,l)

Parameters
alpha    demand function intercept
beta     demand function slope
c(j)     variable costs
K(j)     capacities
;

Set j /Hydro, Nuclear/;

Parameters
alpha    /100/
beta     /0.75/
;


Parameter c(j)           /
                         Hydro    3
                         Nuclear  2
                         /;

Parameter K(j)          /
                         Hydro   55
                         Nuclear 20
                        /;


Positive Variables
q(j)       quantity
lambda(j)  capacity constraint
;

Equations
profit(j)           profit function
capacity(j)        capacity constraint t=0
;


profit(j) .. -alpha + 2*beta*sum(l,q(l)) + c(j) + lambda(j) =g= 0;
capacity(j) .. -q(j) + K(j) =g= 0;



model monop /profit.q, capacity.lambda/;


Solve monop using mcp;

Display q.l, lambda.l;
