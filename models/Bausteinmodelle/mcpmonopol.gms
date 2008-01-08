Scalars

c        variable kosten                 /10.3/
k        kapazität                    /  30000   /
alpha    demand function intercept       /  767.1 /
beta     demand function slope           /0.00765113 /
;

positive Variable
q
y;

Equations

profit   the profit function
restr    the quantity restriction

;

profit.. - alpha + 2*beta*q + c + y =g= 0;

restr..   -q + k                   =g= 0;

model monop  /profit.q, restr.y/

solve monop using mcp;

display q.l, y.l

