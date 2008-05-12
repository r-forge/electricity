Sets
i        /Rwe, EON, Vatten, EnBW/
j        /Hydro, Nuclear, Lignite, Hardcoal, Gas, Oil, Pump /
;

Parameters
alpha_n0    /304.5997/
alpha_n1    /336.8846/
alpha_n2    /26275.8895/
beta        /0.0025/
nu          /0.99/
rho         /0.02/
;


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
                         Hydro    3500000
                         Nuclear  1841000
                         Lignite  1074000
                         Hardcoal 971000
                         Gas      460000
                         Oil      1000000000
                         Pump     1000000000
                        /;