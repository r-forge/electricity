* GAMS version of the model discussed in "A Stochastic Dynamic Game Model
* of the Finnish Electricity Market" Pineau P.-O. and Murto P. 1999

*BASE CASE: "real" IVO + PVO and strategic third player  
*3 players and 1 investment option, elasticity: -0.6 in base load, -0.9 in peak load
*Investment salvage value - 0% and 3% growth

SETS

T	time periods		/ 1*5 /
N	nodes			/ 1*31 /
P 	players	 		/ 1*3 /
L	generation types 	/ 1*2 /
* 1=hydro/nuclear, 2=thermal
J	load market		/ 1*2 /
* 1=base load, 2=peak load
S	demand growth scenario  / 1*15 /
iter	iteration numbers	/ 1*50 /
;

ALIAS (N,M), (L,LL), (P,PP), (P,PY);

TABLE T_nod(N,T)
*Time period T of node N

	1   2   3   4  5
  1     1   0   0   0  0
  2     0   1   0   0  0
  3     0   1   0   0  0
  4     0   0   1   0  0
  5     0   0   1   0  0
  6     0   0   1   0  0
  7     0   0   1   0  0
  8     0   0   0   1  0 
  9     0   0   0   1  0	
  10    0   0   0   1  0	
  11    0   0   0   1  0
  12    0   0   0   1  0
  13    0   0   0   1  0
  14    0   0   0   1  0
  15    0   0   0   1  0
  16    0   0   0   0  1
  17    0   0   0   0  1
  18    0   0   0   0  1
  19    0   0   0   0  1
  20    0   0   0   0  1
  21    0   0   0   0  1
  22    0   0   0   0  1
  23    0   0   0   0  1
  24    0   0   0   0  1
  25    0   0   0   0  1
  26    0   0   0   0  1
  27    0   0   0   0  1
  28    0   0   0   0  1
  29    0   0   0   0  1
  30    0   0   0   0  1
  31    0   0   0   0  1
;

TABLE Path(N,M)
*Says if node M is in the path going to node N

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

TABLE Cost_A(L,P)
*A parameter for production type L of player P (Cheapest marginal cost FIM/MWh)

       1   2   3      
  1    25  25  25   
  2    90  90  90  
;

TABLE Cost_B(L,P)
*B parameter for production type L of player P (A+B=Highest marginal cost for thermal units)

       1   2   3      
  1    0   0   0      
  2    150 150 150 
;


TABLE Cost_phi(L,P)
*Phi parameter for production type L of player P

 	1   2   3    
  1     1   1   1    
  2     2   2   2    
;

TABLE Cost_I(L,P)
*Investment cost for unit of type L for player P (FIM / MW)

 	1         2         3                 
  1     100000000 100000000 100000000 
  2     1000000   1000000   1000000   
;

TABLE Ini_cap(P,L)
*Initial capacity of type L for player P (node 1, MW)

	1	  2       
  1	2500  	  3000
  2	1200	  1800
  3     1590      5710  
;

TABLE Dem_A(S,J)
*Price for Q=0 (0% or 3% growth per year, 1 period = 1 year)

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

SCALARS

B 	discount factor			/ 0.95 /
Dep	depreciation factor		/ 1 /
cvg	Convergence tolerance   	/ 0.0001 /
stop	Stop (=1) for iterations	/ 0 /
;

PARAMETERS

Q_temp(P,L,J,N) Production of P with L at N
Ex(T)		Exponent associated to each time period  /1 2, 2 4, 3 6, 4 8, 5 10/
Inicap(P,L)	Initial capacity
Prob(N)		Probability of occurence of each node
		/1 1,
		2 0.5, 3 0.5,
		4 0.25, 5 0.25, 6 0.25, 7 0.25, 
		8 0.125, 9 0.125, 10 0.125, 11 0.125, 12 0.125, 13 0.125, 14 0.125, 15 0.125,
		16 0.0625, 17 0.0625, 18 0.0625, 19 0.0625, 20 0.0625, 21 0.0625,
		22 0.0625, 23 0.0625, 24 0.0625, 25 0.0625, 26 0.0625, 27 0.0625,
		28 0.0625, 29 0.0625, 30 0.0625, 31 0.0625/ 
Dem_B(J)	Slope of demand curve 					
		/1  -0.0000034, 
		 2  -0.0000115/
Q_type(L,N)	Quantity produce by each type L at each node (MWh)
Q_load(J,N)	Quantity produce for base or peak load J at each node (MWh)
P_mkt(J,N)	Price at each node (FIM per MWh) for each load period
Q_P(P,J,N)	Total production of P for each load period at each node (MWh)
H(J)		hours of production per year for each load period	/1 7008, 2 1752/
;

POSITIVE VARIABLE

Q(P,L,J,N)	Production of P with type L for market J at node N (MWh)
I(P,L,N)	Investment in type L by player P at node N (MW)
K(P,L,N)	Available capacity of type L for player P at node N (MW)
;

FREE VARIABLE

profit1		Profit for player 1
profit2		Profit for player 2
profit3		Profit for player 3
;

EQUATIONS

Obj1		Objective function for player 1
Obj2		Objective function for player 2
Obj3		Objective function for player 3
I_cap(P,L,N)	Lag in capacity investment for player P type L and at node N
P_rod(P,L,J,N)	Production higher limit for player P type L and at node N
;

Obj1.. profit1 =E= Sum(T, B**Ex(T) * Sum(N$(T_nod(N,T) eQ 1),
					   Prob(N) * Sum(L,

*Revenue of player 1 for each output from type L sold in load period J
	Sum(J, 2 * ( Q('1',L,J,N) * 
    ( Sum(S$(Sce(N,S) eQ 1), Dem_A(S,J)) + Dem_B(J) * ( Sum((PP,LL), Q(PP,LL,J,N) ) ) )

*Cost of output from type L
	- Cost_A(L,'1') * Q('1',L,J,N)
		- (Cost_B(L,'1') * H(J) * K('1',L,N) / (Cost_phi(L,'1')+1) ) * 
			( Q('1',L,J,N) / (H(J) * K('1',L,N)) )**(Cost_phi(L,'1')+1)
	) )

*Cost of investment in type L
	- ( Cost_I(L,'1')*I('1',L,N) * (1 - (Dep*B)**(10-Ex(T))) )

*Closing parentheses of the three first Sums
				)))
;

Obj2.. profit2 =E= Sum(T, B**Ex(T) * Sum(N$(T_nod(N,T) eQ 1),
					   Prob(N) * Sum(L,

*Revenue of player 2 for each output from type L sold in load period J
	Sum(J, 2 * (Q('2',L,J,N) * 
    ( Sum(S$(Sce(N,S) eQ 1), Dem_A(S,J)) + Dem_B(J) * ( Sum((PP,LL), Q(PP,LL,J,N) ) ) )

*Cost of output from type L
	- Cost_A(L,'2') * Q('2',L,J,N)
		- (Cost_B(L,'2') * H(J) * K('2',L,N) / (Cost_phi(L,'2')+1) ) * 
			( Q('2',L,J,N) / (H(J) * K('2',L,N)) )**(Cost_phi(L,'2')+1)
	) )

*Cost of investment in type L
	- (  Cost_I(L,'2')*I('2',L,N) * (1 - (Dep*B)**(10-Ex(T))) )

*Closing parentheses of the three first Sums
				)))
;

Obj3.. profit3 =E= Sum(T, B**Ex(T) * Sum(N$(T_nod(N,T) eQ 1),
					   Prob(N) * Sum(L,

*Revenue of player 3 for each output from type L sold in load period J
	Sum(J, 2 * (Q('3',L,J,N) * 
    ( Sum(S$(Sce(N,S) eQ 1), Dem_A(S,J)) + Dem_B(J) * ( Sum((PP,LL), Q(PP,LL,J,N) ) ) )

*Cost of output from type L
	- Cost_A(L,'3') * Q('3',L,J,N)
		- (Cost_B(L,'3') * H(J) * K('3',L,N) / (Cost_phi(L,'3')+1) ) * 
			( Q('3',L,J,N) / (H(J) * K('3',L,N)) )**(Cost_phi(L,'3')+1)
	) )

*Cost of investment in type L
	- ( Cost_I(L,'3')*I('3',L,N) * (1 - (Dep*B)**(10-Ex(T))) )

*Closing parentheses of the three first Sums
				)))
;


I_cap(PY,L,N).. K(PY,L,N) - Inicap(PY,L) - Sum(M$(Path(N,M) eQ 1),
				               I(PY,L,M) ) =E= 0;

P_rod(PY,L,J,N).. Q(PY,L,J,N) - ( H(J) * K(PY,L,N) ) =L= 0;




MODEL Fin1 / Obj1,I_cap,P_rod /
MODEL Fin2 / Obj2,I_cap,P_rod /
MODEL Fin3 / Obj3,I_cap,P_rod /
;


*Initial production values (for the algorithm)
Q.L(P,L,J,N) = 100000;

*Initial capacity/investment values (for the algorithm)
Inicap(P,L) = Ini_cap(P,L);
K.L(P,L,N) = Ini_cap(P,L);
I.L(P,L,N) = 0;

*Beginning of the algorithm

LOOP(iter$(stop eQ 0),

Q_temp(P,L,J,N) = Q.L(P,L,J,N);


*Fixing all decision variables
K.FX(PY,L,N) = K.L(PY,L,N);
I.FX(PY,L,N) = I.L(PY,L,N);
Q.FX(PY,L,J,N) = Q.L(PY,L,J,N);

*Unfixing player 1's decision variables
K.LO('1',L,N) = 0;
K.UP('1',L,N) = INF;
I.LO('1',L,N) = 0;
I.UP('1',L,N) = INF;
Q.LO('1',L,J,N) = 0;
Q.UP('1',L,J,N) = INF;

SOLVE Fin1 USING NLP MAXIMIZING profit1;

*Fixing all decision variables
K.FX(PY,L,N) = K.L(PY,L,N);
I.FX(PY,L,N) = I.L(PY,L,N);
Q.FX(PY,L,J,N) = Q.L(PY,L,J,N);

*Unfixing player 2's decision variables
K.LO('2',L,N) = 0;
K.UP('2',L,N) = INF;
I.LO('2',L,N) = 0;
I.UP('2',L,N) = INF;
Q.LO('2',L,J,N) = 0;
Q.UP('2',L,J,N) = INF;

SOLVE Fin2 USING NLP MAXIMIZING profit2;

*Fixing all decision variables
K.FX(PY,L,N) = K.L(PY,L,N);
I.FX(PY,L,N) = I.L(PY,L,N);
Q.FX(PY,L,J,N) = Q.L(PY,L,J,N);

*Unfixing player 3's decision variables
K.LO('3',L,N) = 0;
K.UP('3',L,N) = INF;
I.LO('3',L,N) = 0;
I.UP('3',L,N) = INF;
Q.LO('3',L,J,N) = 0;
Q.UP('3',L,J,N) = INF;

SOLVE Fin3 USING NLP MAXIMIZING profit3;

stop$(Sum((P,L,J,N), SQR(Q_temp(P,L,J,N) - Q.L(P,L,J,N) )) lt cvg )=1;
);

Q_type(L,N) = sum((P,J), Q.L(P,L,J,N));
Q_load(J,N) = sum((P,L), Q.L(P,L,J,N));
P_mkt(J,N) = sum(S$(Sce(N,S) eQ 1), Dem_A(S,J))
				 + Dem_B(J)*(Sum((P,L), Q.L(P,L,J,N)) );
Q_P(P,J,N) = sum(L, Q.L(P,L,J,N));


DISPLAY Q_type, Q_P, Q_load, P_mkt;

