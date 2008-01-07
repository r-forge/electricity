Scalars

c        variable kosten                 /10.3/
k        kapazit�t                    /  30000   /
alpha    demand function intercept       /  767.1 /
beta     demand function slope           /0.00765113 /
;
Variable
q
positive Variable
y;

Equations

profit   the profit function
restr    the quantity restriction

;

profit.. alpha - 2*beta*q - c - y =e= 0;

restr..   -q + k                   =g= 0;

model monop  /profit.q, restr.y/

solve monop using mcp;

display q.l, y.l


