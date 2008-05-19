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
Parameter alpha_n3(s)   /
    State1   86.8435
    State2   216.0392
    State3   332.0019
    State4   447.5392
    State5   568.1369
    State6   1132.546
/;
Parameter alpha_n4(s)   /
    State1   80.2312
    State2   198.9708
    State3   308.7235
    State4   426.8281
    State5   547.1063
    State6   1089.427
/;
Parameter alpha_n5(s)   /
    State1   73.6189
    State2   181.9024
    State3   285.4451
    State4   406.117
    State5   526.0757
    State6   1046.308
/;
Parameter alpha_n6(s)   /
    State1   67.0066
    State2   164.8339
    State3   262.1666
    State4   385.4059
    State5   505.045
    State6   1003.189
/;
Parameter alpha_n7(s)   /
    State1   88.6792
    State2   220.7291
    State3   338.6223
    State4   454.3423
    State5   575.7271
    State6   1147.915
/;
Parameter alpha_n8(s)   /
    State1   85.4527
    State2   212.4006
    State3   327.2636
    State4   444.2364
    State5   565.4652
    State6   1126.875
/;
Parameter alpha_n9(s)   /
    State1   82.2263
    State2   204.072
    State3   315.9049
    State4   434.1304
    State5   555.2033
    State6   1105.835
/;
Parameter alpha_n10(s)   /
    State1   78.9998
    State2   195.7435
    State3   304.5461
    State4   424.0244
    State5   544.9414
    State6   1084.795
/;
Parameter alpha_n11(s)   /
    State1   75.7733
    State2   187.4149
    State3   293.1874
    State4   413.9184
    State5   534.6796
    State6   1063.755
/;
Parameter alpha_n12(s)   /
    State1   72.5469
    State2   179.0864
    State3   281.8287
    State4   403.8124
    State5   524.4177
    State6   1042.715
/;
Parameter alpha_n13(s)   /
    State1   69.3204
    State2   170.7578
    State3   270.47
    State4   393.7065
    State5   514.1558
    State6   1021.675
/;
Parameter alpha_n14(s)   /
    State1   66.0939
    State2   162.4293
    State3   259.1113
    State4   383.6005
    State5   503.8939
    State6   1000.635
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