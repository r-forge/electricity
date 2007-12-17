Set

k technologies /Hydro, Nuclear, BCoal, HCoal, Gas, Oil, Pump /

Parameters
c(k) variable kosten     /
                         Hydro    10
                         Nuclear  10.3
                         BCoal    13.8
                         HCoal    14.4
                         Gas      19.2
                         Oil      44
                         Pump     80
                         /

cap(k) kapazitäten       /
                         Hydro    10180
                         Nuclear  21098
                         BCoal    21930
                         HCoal    34121
                         Gas      21767
                         Oil       6655
                         Pump     13063
                         /

*alpha(h) demand function intercepts in different market states /
*                         exthigh   767.1
*                         vhigh     515.6
*                         high      408.25
*                         inter     291.8
*                         low       177.5
*                         vlow       85.5
*                         /
*beta(h) demand function slopes in different market states /
*                         exthigh   0.007651133
*                         vhigh     0.005269006
*                         high      0.004349105
*                         inter     0.003379586
*                         low       0.002530629
*                         vlow      0.001672949
*                         /
*nmark(h) how often (within a year) occurs each market state  /
*                         exthigh     46
*                         vhigh      134
*                         high       788
*                         inter     2174
*                         low       4201
*                         vlow      1417
*                         /
;
Scalars
alpha    demand function intercept       /767.1  /
beta     demand function slope           /0.007651133 /
b        cost function parameter    /30/
phi      cost function parameter    /50/
;
Variable
q(k) quantities produced by each technology k
pi   profit
p    price

positive variable q;

equation

profit   the profit function
price    just pops out the equilibrium Price for each market state
;


profit..  pi =e=  (alpha - beta*sum(k,q(k))) * sum(k,q(k))
                 - sum(k, q(k)*c(k)+ b*(q(k)/cap(k))**(phi) );

price..    p =e=  (alpha - beta*sum(k,q(k))) ;


model quantity /profit,price/;

solve quantity using nlp maximizing pi

display q.l , q.m;