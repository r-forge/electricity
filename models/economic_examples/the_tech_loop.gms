Set
t        time     /0,1/
s        scenario /l,h/
i        players  /RWE, EON, Vatten, EnBW /
k        technologies /flexible,inflexible/
p        different price caps / 1*200 /
pri(p)
;

Alias (i,j);
Alias (k,h);
Alias (s,w);
Alias (p,b);

Parameter

alphaz   alpha zero                      / 767.1 /
beta     demand function slope           /0.00765113 /

Parameter
c(k) variable kosten  / flexible   10
                        inflexible 25  /

capc(k) capacity costs   / flexible      30
                           inflexible    15 /

pricecap

pc0  /     1000     /

alpha(s)                 /l  100
                          h  150 /

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

Table
cap0(i,k)   capacities
                 flexible       inflexible
RWE              10              10
EON              10              10
EnBW             10              10
Vatten           10              10



Variable
u(i,k)
p0
p1(s)
quant0(i)
quant1(s,i)

positive Variable
inv(i,k)
q0(i,k)
q1(s,i,k)
y0(i,k)
y1(s,i,k)
psi0
psi1(s)
cap1(i,k) ;

Equations
profit0(i,k)     the profit function
profit1(s,i,k)
restr0(i,k)      the quantity restriction
restr1(s,i,k)

pricecap0       the price cap
pricecap1(s)

invest(i,k)
state(i,k)
kapa(i,k)

price0        gives back the price (not relevant for result)
price1(s)      gives back the price (not relevant for result)
quantity0(i)   gives back the quantities (not relevant for result)
quantity1(s,i) gives back the quantities (not relevant for result);
*
profit0(i,k)..    - alphaz+ beta*sum(h,q0(i,h))   + beta*sum((j,h),q0(j,h)) + c(k) + y0(i,k)- beta*psi0 =g= 0;

profit1(s,i,k).. 0.5*(- alpha(s) + beta*sum(h,q1(s,i,h))   + beta*sum((j,h),q1(s,j,h)) + c(k) ) + y1(s,i,k)- beta*psi1(s) =g= 0;

restr0(i,k)..      -q0(i,k)  +       cap0(i,k)        =g= 0;
restr1(s,i,k)..   -q1(s,i,k) +       cap1(i,k)        =g= 0;

pricecap0..    -alphaz + beta*sum((j,h),q0(j,h)) + pc0 =g= 0;
pricecap1(s)..  -alpha(s) + beta*sum((j,h),q1(s,j,h)) +  pricecap =g= 0;

invest(i,k)..      capc(k)  - u(i,k)            =g= 0;

state(i,k)..      -cap1(i,k)  + cap0(i,k)  + inv(i,k)    =e= 0;

kapa(i,k)..      + sum((w), y1(w,i,k)) - u(i,k)  =g= 0;

price0..        p0 =e= alphaz-  beta*sum((j,h),q0(j,h)) ;
price1(s)..        p1(s) =e= alpha(s)-  beta*sum((j,h),q1(s,j,h)) ;
quantity0(i)..      quant0(i) =e=  sum(h, q0(i,h))  ;
quantity1(s,i)..    quant1(s,i) =e= sum(h, q1(s,i,h)) ;

model monop  /profit0.q0,  restr0.y0, profit1.q1 , restr1.y1, pricecap0.psi0,pricecap1.psi1, invest.inv, state.u, kapa.cap1, price0, price1, quantity0, quantity1 /

parameter output1(p,i);
output1(p,i) =0;
parameter output2(p,i);
output2(p,i) =0;

pri(p) = no;

loop( (p),
         pri(p) = yes;
         pricecap = pc1(p)$pri(p);
         solve monop using mcp;
         output1(p,i) = inv.l(i,'flexible');
         output2(p,i) = inv.l(i,'inflexible');
         pri(p) = no;
         );

display output1, output2;
