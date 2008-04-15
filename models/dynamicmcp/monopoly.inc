** Set definitions

Set i    /RWE/;
Set j    /Hydro
, Nuclear
/;
Set t    /0/;
Set s    /1/;

** Parameter definitions

Parameter c(j)           /
                         Hydro    3
                         Nuclear  9.5
                         /;

Table K(i,j)
       Hydro   Nuclear
RWE      600      5499
;


Scalar r                 / 0.03 /;
Scalar nu                / 0.95 /;
Scalar rho               / 0.05 /;
Scalar Pbar              / 100 /;
Scalar beta              / 0.75 /;
Scalar alpha              / 100 /;

** Assignments

** Displays

Display i,j,t,s,c,r,K,nu,rho,Pbar,beta;