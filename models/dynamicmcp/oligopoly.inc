** Set definitions

Set i    /RWE, EON, Vatten, EnBW/;
Set j    /Hydro, Nuclear, BCoal, HCoal, Gas, Oil, Pump/;
Set t    /0*5/;
Set s    /1*4/;

** Parameter definitions

Parameter c(j)           /
                         Hydro    7.6
                         Nuclear  9.5
                         BCoal    10.6
                         HCoal    16.1
                         Gas      33.5
                         Oil      44
                         Pump     80
                         /;

Parameter F(j)           /
                         Hydro    3500000
                         Nuclear  1841000
                         BCoal    1074000
                         HCoal    971000
                         Gas      460000
                         Oil      1000000000
                         Pump     1000000000
                         /;

Table K(i,j)
       Hydro   Nuclear      BCoal       HCoal        Gas         Oil       Pump
RWE      741      5499      10554        7249        4297        188        793
EON     1320      8473       1425        9461        3808       1779       1110
Vatten     9      1421       6932        1729         870       1429       2883
EnBW     447      4272        453        3288        1083        617        368
;

Scalar r                 / 0.03 /;
Scalar nu                / 0.95 /;
Scalar rho               / 0.05 /;
Scalar Pbar              / 100 /;
Scalar beta              / 0.75 /;

** Assignments

** Displays

Display i,j,t,s,c,F,K,r,nu,rho,Pbar,beta;