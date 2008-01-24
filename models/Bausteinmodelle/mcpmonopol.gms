Set

t        time   /0,1/

Scalars

c        variable kosten                 /10.3/
*k0       Anfangskapazität               /  30000   /
alpha    demand function intercept       /  767.1 /
beta     demand function slope           /0.00765113 /


Parameter

k(t)     /0  3000
          1  5000/

;

positive Variable
q(t)
y(t);

Equations

profit(t)   the profit function
restr(t)    the quantity restriction

;

profit(t).. - alpha + 2*beta*q(t) + c + y(t) =g= 0;

restr(t)..   -q(t) + k(t)                   =g= 0;

model monop  /profit.q, restr.y/

solve monop using mcp;

display q.l, y.l
