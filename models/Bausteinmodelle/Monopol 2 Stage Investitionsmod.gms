Set

k technologies /Hydro, Nuclear, BCoal, HCoal, Gas, Oil, Pump /
h market states /exthigh, vhigh, high, inter, low, vlow /

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

alpha(h) demand function intercepts in different market states /
                         exthigh   767.1
                         vhigh     515.6
                         high      408.25
                         inter     291.8
                         low       177.5
                         vlow       85.5
                         /
beta(h) demand function slopes in different market states /
                         exthigh   0.007651133
                         vhigh     0.005269006
                         high      0.004349105
                         inter     0.003379586
                         low       0.002530629
                         vlow      0.001672949
                         /
;
Scalars
b     cost function parameter    /30/
phi   cost function parameter    /50/
;
Variable
q(k,h) quantities produced by each technology k in each market state h
pi     profit
p(h)   price in each market state
welf   overall welfare

positive variable q;

equation

profit   the profit function
price(h)    just pops out the equilibrium Price for each market state
;


profit..  pi =e= sum(h,(alpha(h) - beta(h)*sum(k,q(k,h))) * sum(k,q(k,h))
- sum(k,q(k,h)*c(k)+ b*(  cap(k)/(phi+1)*(q(k,h)/cap(k))**(phi+1) ) ) );

price(h)..    p(h) =e=  (alpha(h) - beta(h)*sum(k,q(k,h))) ;


model quantity /profit,price/;

solve quantity using nlp maximizing pi

display q.l , q.m;