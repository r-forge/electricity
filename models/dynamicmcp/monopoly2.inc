** Set definitions

Set i    /RWE/;
Set j    /Hydro
, Nuclear
/;
Set t    /0,1/;
Set s    /1/;

** Parameter definitions

Parameter c(j)           /
                         Hydro    3
                         Nuclear  9.5
                         /;

Parameter F(j)           /
                         Hydro    10
                         Nuclear  30
                         /;

Table K0(i,j)
       Hydro   Nuclear
RWE      60      5499
;


Scalar r                 / 0.03 /;
Scalar nu                / 0.95 /;
Scalar rho               / 0.05 /;
Scalar Pbar              / 100 /;
Scalar beta              / 0.75 /;
Scalar alpha              / 100 /;

** Assignments

tfirst(t) = YES$(ORD(t) EQ 1)

** Displays

Display i,j,t,s,c,r,K0,nu,rho,Pbar,beta;