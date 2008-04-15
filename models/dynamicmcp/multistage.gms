$Title Generation Capacity Investments in Oligopolistic Electricity Markets

$Ontext
Robert Ferstl, Anton Burger
$Offtext

*** M O D E L ******************************************************************

** Set declarations

Set
i                players
j                technologies
t                time
tfirst(t)        first period in the model
s                scenarios
;

Alias(j,l);

** Parameter declarations

Parameters

c(j)             variable costs
F(j)             investment costs (Euro)
K0(i,j)          initial capacities (MWh)
F(j)             investment costs
*alpha(s,t)       intercepts of demand function
;

Scalars

r                interest rate
nu               salvage value parameter
rho              depreciation rate
Pbar             price cap (Euro per MWh)
beta             slope of demand function
alpha            intercept of demand function
;

** Variable declarations

Positive variable
q(i,j,t)       production quantity
lambda1(i,j,t) production constraint
phi2(i,j,t)    state equation
K(i,j,t)       capacities
In(i,j,t)      investments
;


** Equation declaration

Equations
profit(i,j,t)              profit function
production(i,j,t)          production constraint
state(i,j,t)               state equation
state2(i,j,t)              state equation (K)
state3(i,j,t)              state equation (In)
;

** Equation definition

profit(i,j,t) .. -alpha + 2*beta*(sum(l,q(i,l,t))) + c(j) + lambda1(i,j,t) =g= 0;
production(i,j,t) .. -q(i,j,t) + K0(i,j) =g= 0;
*state(i,j,t+1) .. -K(i,j,t+1) + In(i,j,t) + K(i,j,t)  =e= 0;
* + K0(i,j)$tfirst(t-1)
state(i,j,t) .. -K(i,j,t+1) + K0(i,j)$tfirst(t) =g= 0;
state2(i,j,t) .. -lambda1(i,j,t) - phi2(i,j,t) =g= 0;
*state3(i,j,t) .. phi2(i,j,t) =g= 0;

*+ K(i,j,t) + In(i,j,t) +

** Model definition

*Model dynamicmcp1  /profit.q, production.lambda1/
Model dynamicmcp2  /profit.q, production.lambda1, state.phi2, state2.K/

*     , state3.In

*** D A T A ********************************************************************

*$include "C:\Dokumente und Einstellungen\Edith\Eigene Dateien\models\dynamicmcp\monopoly.inc" ;
$include "C:\Dokumente und Einstellungen\Edith\Eigene Dateien\models\dynamicmcp\monopoly2.inc" ;
*$include "C:\Dokumente und Einstellungen\Edith\Eigene Dateien\models\dynamicmcp\oligopoly.inc"

*** S O L U T I O N ************************************************************

** Solve

Solve dynamicmcp2 using mcp;

** Displays

Display q.l,K0,tfirst;

