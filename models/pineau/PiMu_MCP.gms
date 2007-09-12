* GAMS MCP formulation of the model discussed in "A Stochastic Dynamic
* Game Model
* of the Finnish Electricity Market" Pineau P.-O. and Murto P. 1999

* This version has 5 periods, each of which lasts two years. This is the
* the first version that takes into account the fact that there are
* many years in one period

* This version has 3 players, and demand growths of 0 and 3 percent


SETS

P         players                         / 1*3 /
L        generation types         / 1*2 /
* 1=hydro/nuclear, 2=thermal
J        market segments                / 1*2 /
* 1=base load, 2=peak load

N        nodes                        / 1*31 /
S        demand growths scenarios / 1*15 /;


ALIAS (N,M);
ALIAS (N,NN);
ALIAS (P,PP);
ALIAS (J,JJ);
ALIAS (L,LL);




SCALARS

B         discount factor                /0.95/
Nop        number of periods  /5/
Dep        depreciation constant  /0.98/
Noy        number of years in a period  /2/;

PARAMETERS

TotQ(P,N)
Price(J,N)
Qgen(P,L,N)
Dem_A(J,N)
Dem_B(J,N)



Prob(N)        Probability to go through node N
       /1        1
        2        0.5
        3        0.5
        4        0.25
        5        0.25
        6        0.25
        7        0.25
        8        0.125
        9        0.125
        10        0.125
        11        0.125
        12        0.125
        13        0.125
        14        0.125
        15        0.125
        16        0.0625
        17        0.0625
        18        0.0625
        19        0.0625
        20        0.0625
        21        0.0625
        22        0.0625
        23        0.0625
        24        0.0625
        25        0.0625
        26        0.0625
        27        0.0625
        28        0.0625
        29        0.0625
        30        0.0625
        31        0.0625
/


Period(N)        Period of node N
       /1        1
        2        2
        3        2
        4        3
        5        3
        6        3
        7        3
        8        4
        9        4
        10        4
        11        4
        12        4
        13        4
        14        4
        15        4
        16        5
        17        5
        18        5
        19        5
        20        5
        21        5
        22        5
        23        5
        24        5
        25        5
        26        5
        27        5
        28        5
        29        5
        30        5
        31        5
/

Scene(N)        Scenario of node N
       /1        1
        2        2
        3        3
        4        4
        5        5
        6        5
        7        6
        8        7
        9        8
        10        8
        11        9
        12        8
        13        9
        14        9
        15        10
        16        11
        17        12
        18        12
        19        13
        20        12
        21        13
        22        13
        23        14
        24        12
        25        13
        26        13
        27        14
        28        13
        29        14
        30        14
        31        15

/

Demsce_B(J)
/        1        -0.0238
        2        -0.0202/

H(J)
/        1        7008
        2        1752/


;



TABLE Before(N,M)     0-1 table telling which nodes are before node m


     1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31
  1  0 0 0 0 0 0 0 0 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
  2  1 0 0 0 0 0 0 0 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
  3  1 0 0 0 0 0 0 0 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
  4  1 1 0 0 0 0 0 0 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
  5  1 1 0 0 0 0 0 0 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
  6  1 0 1 0 0 0 0 0 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
  7  1 0 1 0 0 0 0 0 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
  8  1 1 0 1 0 0 0 0 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
  9  1 1 0 1 0 0 0 0 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 10  1 1 0 0 1 0 0 0 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 11  1 1 0 0 1 0 0 0 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 12  1 0 1 0 0 1 0 0 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 13  1 0 1 0 0 1 0 0 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 14  1 0 1 0 0 0 1 0 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 15  1 0 1 0 0 0 1 0 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 16  1 1 0 1 0 0 0 1 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 17  1 1 0 1 0 0 0 1 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 18  1 1 0 1 0 0 0 0 1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 19  1 1 0 1 0 0 0 0 1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 20  1 1 0 0 1 0 0 0 0  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 21  1 1 0 0 1 0 0 0 0  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 22  1 1 0 0 1 0 0 0 0  0  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 23  1 1 0 0 1 0 0 0 0  0  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 24  1 0 1 0 0 1 0 0 0  0  0  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 25  1 0 1 0 0 1 0 0 0  0  0  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 26  1 0 1 0 0 1 0 0 0  0  0  0  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 27  1 0 1 0 0 1 0 0 0  0  0  0  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 28  1 0 1 0 0 0 1 0 0  0  0  0  0  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 29  1 0 1 0 0 0 1 0 0  0  0  0  0  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 30  1 0 1 0 0 0 1 0 0  0  0  0  0  0  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
 31  1 0 1 0 0 0 1 0 0  0  0  0  0  0  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

;

TABLE Sce(N,S)
*Indicates to which scenario a node corresponds

        1   2   3   4  5  6  7  8  9 10 11 12 13 14 15
  1     1   0   0   0  0  0  0  0  0 0  0  0  0  0  0
  2     0   1   0   0  0  0  0  0  0 0  0  0  0  0  0
  3     0   0   1   0  0  0  0  0  0 0  0  0  0  0  0
  4     0   0   0   1  0  0  0  0  0 0  0  0  0  0  0
  5     0   0   0   0  1  0  0  0  0 0  0  0  0  0  0
  6     0   0   0   0  1  0  0  0  0 0  0  0  0  0  0
  7     0   0   0   0  0  1  0  0  0 0  0  0  0  0  0
  8     0   0   0   0  0  0  1  0  0 0  0  0  0  0  0
  9     0   0   0   0  0  0  0  1  0 0  0  0  0  0  0
  10    0   0   0   0  0  0  0  1  0 0  0  0  0  0  0
  11    0   0   0   0  0  0  0  0  1 0  0  0  0  0  0
  12    0   0   0   0  0  0  0  1  0 0  0  0  0  0  0
  13    0   0   0   0  0  0  0  0  1 0  0  0  0  0  0
  14    0   0   0   0  0  0  0  0  1 0  0  0  0  0  0
  15    0   0   0   0  0  0  0  0  0 1  0  0  0  0  0
  16    0   0   0   0  0  0  0  0  0 0  1  0  0  0  0
  17    0   0   0   0  0  0  0  0  0 0  0  1  0  0  0
  18    0   0   0   0  0  0  0  0  0 0  0  1  0  0  0
  19    0   0   0   0  0  0  0  0  0 0  0  0  1  0  0
  20    0   0   0   0  0  0  0  0  0 0  0  1  0  0  0
  21    0   0   0   0  0  0  0  0  0 0  0  0  1  0  0
  22    0   0   0   0  0  0  0  0  0 0  0  0  1  0  0
  23    0   0   0   0  0  0  0  0  0 0  0  0  0  1  0
  24    0   0   0   0  0  0  0  0  0 0  0  1  0  0  0
  25    0   0   0   0  0  0  0  0  0 0  0  0  1  0  0
  26    0   0   0   0  0  0  0  0  0 0  0  0  1  0  0
  27    0   0   0   0  0  0  0  0  0 0  0  0  0  1  0
  28    0   0   0   0  0  0  0  0  0 0  0  0  1  0  0
  29    0   0   0   0  0  0  0  0  0 0  0  0  0  1  0
  30    0   0   0   0  0  0  0  0  0 0  0  0  0  1  0
  31    0   0   0   0  0  0  0  0  0 0  0  0  0  0  1
;


TABLE Demsce_A(S,J)
* Growth is 0 or 3 procent per year, so 0 or 6.09 procent per 2 years

       1     2
  1   267   422
  2   283   448
  3   267   422
  4   300   475
  5   283   448
  6   267   422
  7   318   504
  8   300   475
  9   283   448
  10  267   422
  11  338   535
  12  318   504
  13  300   475
  14  283   448
  15  267   422
;




TABLE Cost_A(L,P)   A parameter for production type L of player P

       1   2   3
  1    25  25  25
  2    90  90  90
;



TABLE Cost_B(L,P)   B parameter for production type L of player

       1   2   3
  1    0   0   0
  2    150 150 150
;


TABLE Cost_phi(L,P)   Phi parameter for production type L of player P

         1   2   3
  1      1   1   1
  2      2   2   2
;

TABLE Invpar(L,P)     Investment cost parameter for type L of player P
*Investment cost for unit of type L for player P (FIM / MW)


*         1         2         3
*  1     100000000 100000000 100000000
*  2     2000000   2000000   2000000
*;

*for experimenting:
         1          2         3
  1      100000000  100000000 100000000
  2      2000000    2000000   2000000
;



TABLE Kinit(L,P)       Initial capacity of type L of player P

*The real ones:
        1           2           3
  1     3250        1950        90
  2     4000        2800        3710
;

*for experimenting:
*        1        2        3
*  1        31        15        10
*  2        31        18        23
*;





EQUATIONS

Gradq(P,L,J,N)                Derivative of the profit w.r.t. q
Gradi(P,L,N)                Derivative of the profit w.r.t. I
Constrq(P,L,J,N)        Constraint for q to be less than capacity
;


POSITIVE VARIABLES

Q(P,L,J,N)        Production of P with L for market J at node N
I(P,L,N)        Investment in type L by player P at node N
LAM(P,L,J,N)    Shadow value for the production constraint
;



Q.LO(P,L,J,N) = 0;
I.LO(P,L,N) = 0;
LAM.LO(P,L,J,N) = 0;

Dem_A(J,N) = sum(S$(Sce(N,S) eq 1),Demsce_A(S,J));

Dem_B(J,N) = - Demsce_B(J)/H(J) ;



Gradq(P,L,J,N) .. B**(Noy*Period(N)) * Prob(N) * Noy * (Cost_A(L,P)+Cost_B(L,P)*
        ( Q(P,L,J,N)/
           (H(J)*(Kinit(L,P)+Sum(M$(Before(N,M) eq 1),I(P,L,M)))))**Cost_phi(L,P)
            - (Dem_A(J,N)-Dem_B(J,N)*sum((LL,PP),Q(PP,LL,J,N)))
            - sum(LL,Q(P,LL,J,N) * (-Dem_B(J,N)))) + LAM(P,L,J,N) =G= 0
;



* This form assumes that the profits are gained and investments are paid
* at the end of each period. That is fixed in the exponents of B and Dep in
* the derivative of the actual investment cost function.

Gradi(P,L,N) .. B**(Noy*Period(N)) * Prob(N) * Invpar(L,P) *
        (1-(B*Dep)**(Noy*Nop-Noy*Period(N)))
        +sum(M$(Before(M,N) eq 1),B**(Noy*Period(M))*Prob(M)*
        sum(J,(Noy * (-H(J)*Cost_B(L,P)*Cost_Phi(L,P)/
        (Cost_phi(L,P)+1)) * ( Q(P,L,J,M)/(H(J)*(Kinit(L,P)+
        Sum(NN$(Before(M,NN) eq 1),I(P,L,NN)))))**(Cost_phi(L,P)+1) )  ) )
        - sum(M$(Before(M,N) eq 1),sum(J,H(J)*LAM(P,L,J,M))) =G= 0
;




Constrq(P,L,J,N) .. - Q(P,L,J,N) + H(J)*(Kinit(L,P)
        + sum(M$(Before(N,M) eq 1),I(P,L,M))) =G= 0
;




MODEL        FINLAND /Gradq.q, Gradi.i, Constrq.lam/;

 Q.L(P,L,J,N) = 1e+7;
 I.L(P,L,N) = 10;
 LAM.L(P,L,J,N)=3;

option iterlim = 10000000;
option reslim = 10000000;
option mcp = miles;
* option limrow = 100;
FINLAND.optfile = 1;


SOLVE FINLAND USING MCP;
* $LIBINCLUDE pathsolve FINLAND 2

TotQ(P,N) = sum((L,J),Q.L(P,L,J,N));
Qgen(P,L,N) = sum(J,Q.L(P,L,J,N));
Price(J,N) = Dem_A(J,N) - Dem_B(J,N) * sum((P,L),Q.L(P,L,J,N));


display Qgen ;
display TotQ ;
display Price ;

display Dem_A ;
display Dem_B ;


