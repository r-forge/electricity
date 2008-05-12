Sets
i        /Rwe, EON , Vatten
*, EON, Vatten, EnBW
/
j        /Hydro, Nuclear, Lignite, Hardcoal, Gas, Oil, Pump /
;

Parameters
alpha_n0   /304.4932/
alpha_n1   /350.7027/
alpha_n2   /261.9375/
alpha_n3   /367.7035/
alpha_n4   /328.0065/
alpha_n5   /288.3095/
alpha_n6   /248.6125/
alpha_n7   /377.8025/
alpha_n8   /358.4324/
alpha_n9   /339.0622/
alpha_n10   /319.6921/
alpha_n11   /300.3219/
alpha_n12   /280.9518/
alpha_n13   /261.5816/
alpha_n14   /242.2114/
alpha_n15   /384.0766/
alpha_n16   /374.4486/
alpha_n17   /364.8207/
alpha_n18   /355.1927/
alpha_n19   /345.5648/
alpha_n20   /335.9369/
alpha_n21   /326.3089/
alpha_n22   /316.681/
alpha_n23   /307.0531/
alpha_n24   /297.4251/
alpha_n25   /287.7972/
alpha_n26   /278.1692/
alpha_n27   /268.5413/
alpha_n28   /258.9134/
alpha_n29   /249.2854/
alpha_n30   /239.6575/
alpha_n31   /388.2453/
alpha_n32   /383.4384/
alpha_n33   /378.6314/
alpha_n34   /373.8245/
alpha_n35   /369.0176/
alpha_n36   /364.2107/
alpha_n37   /359.4038/
alpha_n38   /354.5969/
alpha_n39   /349.79/
alpha_n40   /344.9831/
alpha_n41   /340.1762/
alpha_n42   /335.3693/
alpha_n43   /330.5624/
alpha_n44   /325.7555/
alpha_n45   /320.9486/
alpha_n46   /316.1417/
alpha_n47   /311.3348/
alpha_n48   /306.5279/
alpha_n49   /301.721/
alpha_n50   /296.9141/
alpha_n51   /292.1072/
alpha_n52   /287.3003/
alpha_n53   /282.4933/
alpha_n54   /277.6864/
alpha_n55   /272.8795/
alpha_n56   /268.0726/
alpha_n57   /263.2657/
alpha_n58   /258.4588/
alpha_n59   /253.6519/
alpha_n60   /248.845/
alpha_n61   /244.0381/
alpha_n62   /239.2312/
beta        /0.002793296/
delta1      /0.9708738/
delta2      /0.9425959/
delta3      /0.9151417/
delta4      /0.8884870/
delta5      /0.8626088/
nu          /0.9999/
rho         /0.02/
;



Table K0(i,j)
       Hydro   Nuclear      Lignite      Hardcoal    Gas         Oil       Pump
RWE      741      5499      10554        7249        4297        188        793
EON     1320      8473       1425        9461        3808       1779       1110
Vatten     9      1421       6932        1729         870       1429       2883
*EnBW     447      4272        453        3288        1083        617        368
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
                         Hydro    35
                         Nuclear  1841000
                         Lignite  1074000
                         Hardcoal 971000
                         Gas      460000
                         Oil      1000000000
                         Pump     1000000000
                        /;
