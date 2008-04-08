$Title Generation Capacity Investments in Oligopolistic Electricity Markets

$Ontext
Robert Ferstl, Anton Burger
$Offtext


Set

i  players               /RWE, EON, Vatten, EnBW/
j  technologies          /Hydro, Nuclear, BCoal, HCoal, Gas, Oil, Pump/
t time                   /1*5/;


Parameters

c(j) variable costs              /
                                 Hydro    7.6
                                 Nuclear  9.5
                                 BCoal    10.6
                                 HCoal    16.1
                                 Gas      33.5
                                 Oil      44
                                 Pump     80
                                 /

beta demand function slope       / 0.75 /

delta discount rate              / 0.03 /;




display i, j, t;
display c, beta;