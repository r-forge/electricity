Sets
i        /Rwe,EON
, Vatten, EnBW
/
j        /Hydro, Nuclear, Lignite, Hardcoal, Gas, Oil, Pump /
s        /State1,State2,State3,State4,State5,State6/
;


Parameters
delta1      /0.9285994/
delta2      /0.8622969/
delta3      /0.8007284/
nu          /0.99/
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
    State1   87.9635
    State2   218.5451
    State3   337.1902
    State4   459.3664
    State5   585.5349
    State6   1166.686
/;
Parameter alpha_n2(s)   /
    State1   73.178
    State2   180.3789
    State3   285.1381
    State4   413.055
    State5   538.509
    State6   1070.269
/;
Parameter alpha_n3(s)   /
    State1   95.3235
    State2   237.0324
    State3   364.7517
    State4   493.45
    State5   627.2892
    State6   1250.265
/;
Parameter alpha_n4(s)   /
    State1   88.7112
    State2   219.964
    State3   341.4732
    State4   472.7389
    State5   606.2585
    State6   1207.146
/;
Parameter alpha_n5(s)   /
    State1   82.0989
    State2   202.8955
    State3   318.1948
    State4   452.0278
    State5   585.2279
    State6   1164.026
/;
Parameter alpha_n6(s)   /
    State1   75.4866
    State2   185.8271
    State3   294.9164
    State4   431.3167
    State5   564.1973
    State6   1120.907
/;
Parameter alpha_n7(s)   /
    State1   101.822
    State2   253.2655
    State3   389.3796
    State4   525.4973
    State5   667.4044
    State6   1330.361
/;
Parameter alpha_n8(s)   /
    State1   98.5955
    State2   244.9369
    State3   378.0208
    State4   515.3913
    State5   657.1425
    State6   1309.321
/;
Parameter alpha_n9(s)   /
    State1   95.369
    State2   236.6084
    State3   366.6621
    State4   505.2853
    State5   646.8807
    State6   1288.281
/;
Parameter alpha_n10(s)   /
    State1   92.1425
    State2   228.2798
    State3   355.3034
    State4   495.1793
    State5   636.6188
    State6   1267.241
/;
Parameter alpha_n11(s)   /
    State1   88.9161
    State2   219.9513
    State3   343.9447
    State4   485.0734
    State5   626.3569
    State6   1246.201
/;
Parameter alpha_n12(s)   /
    State1   85.6896
    State2   211.6227
    State3   332.586
    State4   474.9674
    State5   616.095
    State6   1225.161
/;
Parameter alpha_n13(s)   /
    State1   82.4631
    State2   203.2942
    State3   321.2273
    State4   464.8614
    State5   605.8331
    State6   1204.121
/;
Parameter alpha_n14(s)   /
    State1   79.2367
    State2   194.9656
    State3   309.8685
    State4   454.7554
    State5   595.5712
    State6   1183.081
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
                         Hydro    3500
                         Nuclear  1841
                         Lignite  1074
                         Hardcoal 971
                         Gas      460
                         Oil      1000000000
                         Pump     1000000000
                        /;