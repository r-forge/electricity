Set

*i  players  /1*2/

Scalars

c        variable kosten                 /10.3/
k1        kapazitšt                       /  25000   /
*k2                                        /  25000   /
alpha    demand function intercept       /100270 /
beta     demand function slope           /130 /
;
Variable


positive variables

q1     quantities produced by each technology k
q2
;

equation

profit1   the profit function
profit2

;

profit1..  l1 +c =e= alpha - 2*beta*q1 - beta*q2 ;

profit2..  l2 +c =e= alpha - 2*beta*q2 - beta*q1 ;

Model comp /profit1, profit2/;

Solve comp using MCP;

Display q1.l, q2.l