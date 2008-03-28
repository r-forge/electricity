Set

t        time     /0,1/
s        scenario /l,h/
i        players  /RWE, EON, Vatten, EnBW /
*k        technologies /Hydro, Nuclear, BCoal, HCoal, Gas, Oil, Pump /
p        different price caps / 1*200 /
pri(p)

;

Alias (i,j);
Alias (s,w);
Alias (p,b);

Scalars

alphaz   alpha zero                      / 767.1 /
beta     demand function slope           /0.00765113 /

Parameter
c variable kosten  /10.6 /

pricecap

capc capacity costs   /      130  /

F   scrap values      /    90 /

pc0  /      1000        /

pc1(p)  /
1        1
2        2
3        3
4        4
5        5
6        6
7        7
8        8
9        9
10        10
11        11
12        12
13        13
14        14
15        15
16        16
17        17
18        18
19        19
20        20
21        21
22        22
23        23
24        24
25        25
26        26
27        27
28        28
29        29
30        30
31        31
32        32
33        33
34        34
35        35
36        36
37        37
38        38
39        39
40        40
41        41
42        42
43        43
44        44
45        45
46        46
47        47
48        48
49        49
50        50
51        51
52        52
53        53
54        54
55        55
56        56
57        57
58        58
59        59
60        60
61        61
62        62
63        63
64        64
65        65
66        66
67        67
68        68
69        69
70        70
71        71
72        72
73        73
74        74
75        75
76        76
77        77
78        78
79        79
80        80
81        81
82        82
83        83
84        84
85        85
86        86
87        87
88        88
89        89
90        90
91        91
92        92
93        93
94        94
95        95
96        96
97        97
98        98
99        99
100        100
101        101
102        102
103        103
104        104
105        105
106        106
107        107
108        108
109        109
110        110
111        111
112        112
113        113
114        114
115        115
116        116
117        117
118        118
119        119
120        120
121        121
122        122
123        123
124        124
125        125
126        126
127        127
128        128
129        129
130        130
131        131
132        132
133        133
134        134
135        135
136        136
137        137
138        138
139        139
140        140
141        141
142        142
143        143
144        144
145        145
146        146
147        147
148        148
149        149
150        150
151        151
152        152
153        153
154        154
155        155
156        156
157        157
158        158
159        159
160        160
161        161
162        162
163        163
164        164
165        165
166        166
167        167
168        168
169        169
170        170
171        171
172        172
173        173
174        174
175        175
176        176
177        177
178        178
179        179
180        180
181        181
182        182
183        183
184        184
185        185
186        186
187        187
188        188
189        189
190        190
191        191
192        192
193        193
194        194
195        195
196        196
197        197
198        198
199        199
200        200/

alpha(s)                 /l  100
                          h  150 /
*alpha(s)                 /l  1000
*                          h   1200 /

cap0(i) /RWE     0
         EON     0
         EnBW    0
         Vatten  0 /

*Table
*cap0(i,k)   capacities


*       Hydro   Nuclear      BCoal       HCoal        Gas         Oil       Pump
*RWE      741      5499      10554        7249        4297        188        793
*EON     1320      8473       1425        9461        3808       1779       1110
*EnBW     447      4272        453        3288        1083        617        368


Variable
u(i)
p0
p1(s)
inv(i)
cap1(i)
winl(i)

positive Variable

q0(i)
q1(s,i)
y0(i)
y1(s,i)
psi0
psi1(s)

;

Equations

profit0(i)     the profit function
profit1(s,i)
restr0(i)      the quantity restriction
restr1(s,i)

pricecap0       the price cap
pricecap1(s)

invest(i)
state(i)
kapa(i)

price0        gives back the price (not relevant for result)
price1(s)     gives back the price (not relevant for result)
winloss(i)         Profit
;

profit0(i)..         - alphaz + beta*q0(i) + beta*sum((j),q0(j)) + c + y0(i)- beta*psi0 =g= 0;
profit1(s,i).. 0.5* (- alpha(s)   + beta*q1(s,i)   + beta*sum((j),q1(s,i)) + c + y1(s,i) )- beta*psi1(s)  =g= 0;

restr0(i)..    -  q0(i)  +      cap0(i)    =g= 0;
restr1(s,i)..  - q1(s,i) +       cap1(i)    =g= 0;

pricecap0..    -alphaz + beta*sum(j,q0(j)) + pc0 =g= 0;
pricecap1(s)..    -alpha(s) + beta*sum(j,q1(s,j)) +  pricecap  =g= 0;

invest(i)..      capc - F - u(i)       =e= 0;

state(i)..      -cap1(i)  + cap0(i)  + inv(i)  =e= 0;

kapa(i)..       + sum(w, 0.5*y1(w,i)) - u(i)  =e= 0;

price0..        p0 =e= alphaz-  beta*sum(j,q0(j)) ;
price1(s)..        p1(s) =e= alpha(s)-  beta*sum(j,q1(s,j)) ;
winloss(i)..     winl(i) =e= 0.5*[ (alpha('l') - beta*sum((j),q1('l',j)) )* q1('l',i) - c*q1('l',i) ]+ 0.5*[ (alpha('h') - beta*sum((j),q1('h',j)) )* q1('h',i) - c*q1('h',i) ]  - capc*inv(i) + F*inv(i);

model monop  /profit0.q0, profit1.q1, restr0.y0, restr1.y1, invest, state.u, kapa, pricecap0.psi0, pricecap1.psi1, price0, price1, winloss /

parameter output(p,i);
output(p,i) =0;
parameter win(p,i);
win(p,i) =0;

pri(p) = no;

loop( (p),
         pri(p) = yes;
         pricecap = pc1(p)$pri(p);
         solve monop using mcp;
         output(p,i) = inv.l(i);
         win(p,i) = winl.l(i);
         pri(p) = no;
         );

display output, win;