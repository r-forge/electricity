Sets
i        /Rwe,EON, Vatten, EnBW/
j        /Hydro, Nuclear, Lignite, Hardcoal, Gas, Oil, Pump /
s        /State1,State2,State3,State4,State5,State6/
;


Parameters
delta1      /0.9285994/
nu          /0.95/
rho         /0.025/
;

Parameter alpha_n0(s)   /
    State1   76.01015
    State2   188.1717
    State3   293.5511
    State4   411.5195
    State5   530.2094
    State6   1055.167
/;
Parameter alpha_n1(s)   /
    State1   83.859
    State2   208.3839
    State3   321.3385
    State4   437.1443
    State5   556.9036
    State6   1109.707
/;
Parameter alpha_n2(s)   /
    State1   69.0734
    State2   170.2177
    State3   269.2863
    State4   390.8329
    State5   509.8777
    State6   1013.290
/;

Parameter beta(s)   /
    State1   0.0014
    State2   0.0029
    State3   0.0038
    State4   0.0047
    State5   0.0058
    State6   0.0115
/;
Parameter pm(s)   /
    State1   0.06975682
    State2   0.3428474
    State3   0.2998059
    State4   0.1812992
    State5   0.07592191
    State6   0.03036876
/;

Table K0(i,j)
       Hydro   Nuclear      Lignite      Hardcoal    Gas         Oil       Pump
RWE      741      5499      10554        7249        4297        188        793
EON     1320      8473       1425        9461        3808       1779       1110
Vatten     9      1421       6932        1729         870       1429       2883
EnBW     447      4272        453        3288        1083        617        368
;


Parameter c(j)           /
                         Hydro    0.0076
                         Nuclear  0.0095
                         Lignite  0.010
                         Hardcoal 0.0161
                         Gas      0.0335
                         Oil      0.044
                         Pump     0.080
                         /;



Parameter F(j)          /
                         Hydro    3
                         Nuclear  1841
                         Lignite  1074
                         Hardcoal 971
                         Gas      460
                         Oil      1000000000
                         Pump     1000000000
                        /;