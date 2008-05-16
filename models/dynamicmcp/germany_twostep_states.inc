Sets
i        /Rwe, EON, Vatten, EnBW/
j        /Hydro, Nuclear, Lignite, Hardcoal, Gas, Oil, Pump /
s        /State1,State2/
;

Parameters
nu          /0.99/
rho         /0.02/
;


Parameter pm(s)  /
         State1  0.2
         State2  0.8
/;

Parameter alpha_n0(s)  /
         State1  310.5997
         State2  308
/;

Parameter alpha_n1(s)  /
         State1  336
         State2  326
/;

Parameter alpha_n2(s)  /
         State1  295
         State2  285
/;

Parameter beta(s)  /
         State1  0.0025
         State2  0.0020
/;



Table K0(i,j)
       Hydro   Nuclear      Lignite      Hardcoal    Gas         Oil       Pump
RWE      741      5499      10554        7249        4297        188        793
EON     1320      8473       1425        9461        3808       1779       1110
Vatten     9      1421       6932        1729         870       1429       2883
EnBW     447      4272        453        3288        1083        617        368
;



Parameter c(j)           /
                         Hydro    7.6
                         Nuclear  9.5
                         Lignite  10.6
                         Hardcoal 16.1
                         Gas      33.5
                         Oil      44
                         Pump     80
                         /;



Parameter F(j)          /
                         Hydro    350
                         Nuclear  1841000
                         Lignite  1074000
                         Hardcoal 971000
                         Gas      460000
                         Oil      1000000000
                         Pump     1000000000
                        /;