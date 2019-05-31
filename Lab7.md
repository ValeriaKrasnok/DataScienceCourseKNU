prepare_set <- function(olympics.csv) {
df <- read.csv("olympics.csv", skip = 1, header = TRUE, encoding="UTF-8",
stringsAsFactors = FALSE)
names(df) <- c("Country", "Summer","Gold", "Silver", "Bronze", "Total", "Winter", "Gold.1", "Silver.1", "Bronze.1","Total.1", "Games", "Gold.2", "Silver.2", "Bronze.2", "Combined.total")
df
}
> prepare_set(olympics.csv)
    Country Summer Gold Silver Bronze
1                              Afghanistan (AFG)     13    0      0      2
2                                  Algeria (ALG)     12    5      2      8
3                                Argentina (ARG)     23   18     24     28
4                                  Armenia (ARM)      5    1      2      9
5                        Australasia (ANZ) [ANZ]      2    3      4      5
6                      Australia (AUS) [AUS] [Z]     25  139    152    177
7                                  Austria (AUT)     26   18     33     35
8                               Azerbaijan (AZE)      5    6      5     15
9                                  Bahamas (BAH)     15    5      2      5
10                                 Bahrain (BRN)      8    0      0      1
11                          Barbados (BAR) [BAR]     11    0      0      1
12                                 Belarus (BLR)      5   12     24     39
13                                 Belgium (BEL)     25   37     52     53
14                                 Bermuda (BER)     17    0      0      1
15                       Bohemia (BOH) [BOH] [Z]      3    0      1      3
16                                Botswana (BOT)      9    0      1      0
17                                  Brazil (BRA)     21   23     30     55
18               British West Indies (BWI) [BWI]      1    0      0      2
19                            Bulgaria (BUL) [H]     19   51     85     78
20                                 Burundi (BDI)      5    1      0      0
21                                Cameroon (CMR)     13    3      1      1
22                                  Canada (CAN)     25   59     99    121
23                               Chile (CHI) [I]     22    2      7      4
24                             China (CHN) [CHN]      9  201    146    126
25                                Colombia (COL)     18    2      6     11
26                              Costa Rica (CRC)     14    1      1      2
27                       Ivory Coast (CIV) [CIV]     12    0      1      0
28                                 Croatia (CRO)      6    6      7     10
29                                Cuba (CUB) [Z]     19   72     67     70
30                                  Cyprus (CYP)      9    0      1      0
31                    Czech Republic (CZE) [CZE]      5   14     15     15
32                    Czechoslovakia (TCH) [TCH]     16   49     49     45
33                             Denmark (DEN) [Z]     26   43     68     68
34                            Djibouti (DJI) [B]      7    0      0      1
35                      Dominican Republic (DOM)     13    3      2      1
36                                 Ecuador (ECU)     13    1      1      0
37                         Egypt (EGY) [EGY] [Z]     21    7      9     10
38                                 Eritrea (ERI)      4    0      0      1
39                                 Estonia (EST)     11    9      9     15
40                                Ethiopia (ETH)     12   21      7     17
41                                 Finland (FIN)     24  101     84    117
42                      France (FRA) [O] [P] [Z]     27  202    223    246
43                                   Gabon (GAB)      9    0      1      0
44                                 Georgia (GEO)      5    6      5     14
45                       Germany (GER) [GER] [Z]     15  174    182    217
46            United Team of Germany (EUA) [EUA]      3   28     54     36
47                      East Germany (GDR) [GDR]      5  153    129    127
48                      West Germany (FRG) [FRG]      5   56     67     81
49                             Ghana (GHA) [GHA]     13    0      1      3
50                 Great Britain (GBR) [GBR] [Z]     27  236    272    272
51                              Greece (GRE) [Z]     27   30     42     39
52                                 Grenada (GRN)      8    1      0      0
53                               Guatemala (GUA)     13    0      1      0
54                            Guyana (GUY) [GUY]     16    0      0      1
55                               Haiti (HAI) [J]     14    0      1      1
56                         Hong Kong (HKG) [HKG]     15    1      1      1
57                                 Hungary (HUN)     25  167    144    165
58                                 Iceland (ISL)     19    0      2      2
59                               India (IND) [F]     23    9      6     11
60                               Indonesia (INA)     14    6     10     11
61                                Iran (IRI) [K]     15   15     20     25
62                                    Iraq (IRQ)     13    0      0      1
63                                 Ireland (IRL)     20    9      8     12
64                                  Israel (ISR)     15    1      1      5
65                           Italy (ITA) [M] [S]     26  198    166    185
66                           Jamaica (JAM) [JAM]     16   17     30     20
67                                   Japan (JPN)     21  130    126    142
68                              Kazakhstan (KAZ)      5   16     17     19
69                                   Kenya (KEN)     13   25     32     29
70                             North Korea (PRK)      9   14     12     21
71                             South Korea (KOR)     16   81     82     80
72                                  Kuwait (KUW)     12    0      0      2
73                              Kyrgyzstan (KGZ)      5    0      1      2
74                                  Latvia (LAT)     10    3     11      5
75                                 Lebanon (LIB)     16    0      2      2
76                           Liechtenstein (LIE)     16    0      0      0
77                               Lithuania (LTU)      8    6      5     10
78                          Luxembourg (LUX) [O]     22    1      1      0
79                               Macedonia (MKD)      5    0      0      1
80                          Malaysia (MAS) [MAS]     12    0      3      3
81                               Mauritius (MRI)      8    0      0      1
82                                  Mexico (MEX)     22   13     21     28
83                                 Moldova (MDA)      5    0      2      5
84                                Mongolia (MGL)     12    2      9     13
85                              Montenegro (MNE)      2    0      1      0
86                                 Morocco (MAR)     13    6      5     11
87                              Mozambique (MOZ)      9    1      0      1
88                                 Namibia (NAM)      6    0      4      0
89                         Netherlands (NED) [Z]     25   77     85    104
90          Netherlands Antilles (AHO) [AHO] [I]     13    0      1      0
91                       New Zealand (NZL) [NZL]     22   42     18     39
92                                   Niger (NIG)     11    0      0      1
93                                 Nigeria (NGR)     15    3      8     12
94                              Norway (NOR) [Q]     24   56     49     43
95                                Pakistan (PAK)     16    3      3      4
96                                  Panama (PAN)     16    1      0      2
97                                Paraguay (PAR)     11    0      1      0
98                                Peru (PER) [L]     17    1      3      0
99                             Philippines (PHI)     20    0      2      7
100                                 Poland (POL)     20   64     82    125
101                               Portugal (POR)     23    4      8     11
102                            Puerto Rico (PUR)     17    0      2      6
103                                  Qatar (QAT)      8    0      0      4
104                                Romania (ROU)     20   88     94    119
105                           Russia (RUS) [RUS]      5  132    121    142
106                   Russian Empire (RU1) [RU1]      3    1      4      3
107                     Soviet Union (URS) [URS]      9  395    319    296
108                     Unified Team (EUN) [EUN]      1   45     38     29
109                           Saudi Arabia (KSA)     10    0      1      2
110                                Senegal (SEN)     13    0      1      0
111                           Serbia (SRB) [SRB]      3    1      2      4
112            Serbia and Montenegro (SCG) [SCG]      3    2      4      3
113                              Singapore (SIN)     15    0      2      2
114                         Slovakia (SVK) [SVK]      5    7      9      8
115                               Slovenia (SLO)      6    4      6      9
116                           South Africa (RSA)     18   23     26     27
117                              Spain (ESP) [Z]     22   37     59     35
118                        Sri Lanka (SRI) [SRI]     16    0      2      0
119                                  Sudan (SUD)     11    0      1      0
120                           Suriname (SUR) [E]     11    1      0      1
121                             Sweden (SWE) [Z]     26  143    164    176
122                            Switzerland (SUI)     27   47     73     65
123                                  Syria (SYR)     12    1      1      1
124            Chinese Taipei (TPE) [TPE] [TPE2]     13    2      7     12
125                             Tajikistan (TJK)      5    0      1      2
126                         Tanzania (TAN) [TAN]     12    0      2      0
127                               Thailand (THA)     15    7      6     11
128                                   Togo (TOG)      9    0      0      1
129                                  Tonga (TGA)      8    0      1      0
130              Trinidad and Tobago (TRI) [TRI]     16    2      5     11
131                                Tunisia (TUN)     13    3      3      4
132                                 Turkey (TUR)     21   39     25     24
133                                 Uganda (UGA)     14    2      3      2
134                                Ukraine (UKR)      5   33     27     55
135                   United Arab Emirates (UAE)      8    1      0      0
136          United States (USA) [P] [Q] [R] [Z]     26  976    757    666
137                                Uruguay (URU)     20    2      2      6
138                             Uzbekistan (UZB)      5    5      5     10
139                              Venezuela (VEN)     17    2      2      8
140                                Vietnam (VIE)     14    0      2      0
141                         Virgin Islands (ISV)     11    0      1      0
142                       Yugoslavia (YUG) [YUG]     16   26     29     28
143 Independent Olympic Participants (IOP) [IOP]      1    0      1      2
144                           Zambia (ZAM) [ZAM]     12    0      1      1
145                         Zimbabwe (ZIM) [ZIM]     12    3      4      1
146                       Mixed team (ZZX) [ZZX]      3    8      5      4
147                                       Totals     27 4809   4775   5130
    Total Winter Gold.1 Silver.1 Bronze.1 Total.1 Games Gold.2 Silver.2
1       2      0      0        0        0       0    13      0        0
2      15      3      0        0        0       0    15      5        2
3      70     18      0        0        0       0    41     18       24
4      12      6      0        0        0       0    11      1        2
5      12      0      0        0        0       0     2      3        4
6     468     18      5        3        4      12    43    144      155
7      86     22     59       78       81     218    48     77      111
8      26      5      0        0        0       0    10      6        5
9      12      0      0        0        0       0    15      5        2
10      1      0      0        0        0       0     8      0        0
11      1      0      0        0        0       0    11      0        0
12     75      6      6        4        5      15    11     18       28
13    142     20      1        1        3       5    45     38       53
14      1      7      0        0        0       0    24      0        0
15      4      0      0        0        0       0     3      0        1
16      1      0      0        0        0       0     9      0        1
17    108      7      0        0        0       0    28     23       30
18      2      0      0        0        0       0     1      0        0
19    214     19      1        2        3       6    38     52       87
20      1      0      0        0        0       0     5      1        0
21      5      1      0        0        0       0    14      3        1
22    279     22     62       56       52     170    47    121      155
23     13     16      0        0        0       0    38      2        7
24    473     10     12       22       19      53    19    213      168
25     19      1      0        0        0       0    19      2        6
26      4      6      0        0        0       0    20      1        1
27      1      0      0        0        0       0    12      0        1
28     23      7      4        6        1      11    13     10       13
29    209      0      0        0        0       0    19     72       67
30      1     10      0        0        0       0    19      0        1
31     44      6      7        9        8      24    11     21       24
32    143     16      2        8       15      25    32     51       57
33    179     13      0        1        0       1    39     43       69
34      1      0      0        0        0       0     7      0        0
35      6      0      0        0        0       0    13      3        2
36      2      0      0        0        0       0    13      1        1
37     26      1      0        0        0       0    22      7        9
38      1      0      0        0        0       0     4      0        0
39     33      9      4        2        1       7    20     13       11
40     45      2      0        0        0       0    14     21        7
41    302     22     42       62       57     161    46    143      146
42    671     22     31       31       47     109    49    233      254
43      1      0      0        0        0       0     9      0        1
44     25      6      0        0        0       0    11      6        5
45    573     11     78       78       53     209    26    252      260
46    118      3      8        6        5      19     6     36       60
47    409      6     39       36       35     110    11    192      165
48    204      6     11       15       13      39    11     67       82
49      4      1      0        0        0       0    14      0        1
50    780     22     10        4       12      26    49    246      276
51    111     18      0        0        0       0    45     30       42
52      1      0      0        0        0       0     8      1        0
53      1      1      0        0        0       0    14      0        1
54      1      0      0        0        0       0    16      0        0
55      2      0      0        0        0       0    14      0        1
56      3      4      0        0        0       0    19      1        1
57    476     22      0        2        4       6    47    167      146
58      4     17      0        0        0       0    36      0        2
59     26      9      0        0        0       0    32      9        6
60     27      0      0        0        0       0    14      6       10
61     60     10      0        0        0       0    25     15       20
62      1      0      0        0        0       0    13      0        0
63     29      6      0        0        0       0    26      9        8
64      7      6      0        0        0       0    21      1        1
65    549     22     37       34       43     114    48    235      200
66     67      7      0        0        0       0    23     17       30
67    398     20     10       17       18      45    41    140      143
68     52      6      1        3        3       7    11     17       20
69     86      3      0        0        0       0    16     25       32
70     47      8      0        1        1       2    17     14       13
71    243     17     26       17       10      53    33    107       99
72      2      0      0        0        0       0    12      0        0
73      3      6      0        0        0       0    11      0        1
74     19     10      0        4        3       7    20      3       15
75      4     16      0        0        0       0    32      0        2
76      0     18      2        2        5       9    34      2        2
77     21      8      0        0        0       0    16      6        5
78      2      8      0        2        0       2    30      1        3
79      1      5      0        0        0       0    10      0        0
80      6      0      0        0        0       0    12      0        3
81      1      0      0        0        0       0     8      0        0
82     62      8      0        0        0       0    30     13       21
83      7      6      0        0        0       0    11      0        2
84     24     13      0        0        0       0    25      2        9
85      1      2      0        0        0       0     4      0        1
86     22      6      0        0        0       0    19      6        5
87      2      0      0        0        0       0     9      1        0
88      4      0      0        0        0       0     6      0        4
89    266     20     37       38       35     110    45    114      123
90      1      2      0        0        0       0    15      0        1
91     99     15      0        1        0       1    37     42       19
92      1      0      0        0        0       0    11      0        0
93     23      0      0        0        0       0    15      3        8
94    148     22    118      111      100     329    46    174      160
95     10      2      0        0        0       0    18      3        3
96      3      0      0        0        0       0    16      1        0
97      1      1      0        0        0       0    12      0        1
98      4      2      0        0        0       0    19      1        3
99      9      4      0        0        0       0    24      0        2
100   271     22      6        7        7      20    42     70       89
101    23      7      0        0        0       0    30      4        8
102     8      6      0        0        0       0    23      0        2
103     4      0      0        0        0       0     8      0        0
104   301     20      0        0        1       1    40     88       94
105   395      6     49       40       35     124    11    181      161
106     8      0      0        0        0       0     3      1        4
107  1010      9     78       57       59     194    18    473      376
108   112      1      9        6        8      23     2     54       44
109     3      0      0        0        0       0    10      0        1
110     1      5      0        0        0       0    18      0        1
111     7      2      0        0        0       0     5      1        2
112     9      3      0        0        0       0     6      2        4
113     4      0      0        0        0       0    15      0        2
114    24      6      2        2        1       5    11      9       11
115    19      7      2        4        9      15    13      6       10
116    76      6      0        0        0       0    24     23       26
117   131     19      1        0        1       2    41     38       59
118     2      0      0        0        0       0    16      0        2
119     1      0      0        0        0       0    11      0        1
120     2      0      0        0        0       0    11      1        0
121   483     22     50       40       54     144    48    193      204
122   185     22     50       40       48     138    49     97      113
123     3      0      0        0        0       0    12      1        1
124    21     11      0        0        0       0    24      2        7
125     3      4      0        0        0       0     9      0        1
126     2      0      0        0        0       0    12      0        2
127    24      3      0        0        0       0    18      7        6
128     1      1      0        0        0       0    10      0        0
129     1      1      0        0        0       0     9      0        1
130    18      3      0        0        0       0    19      2        5
131    10      0      0        0        0       0    13      3        3
132    88     16      0        0        0       0    37     39       25
133     7      0      0        0        0       0    14      2        3
134   115      6      2        1        4       7    11     35       28
135     1      0      0        0        0       0     8      1        0
136  2399     22     96      102       84     282    48   1072      859
137    10      1      0        0        0       0    21      2        2
138    20      6      1        0        0       1    11      6        5
139    12      4      0        0        0       0    21      2        2
140     2      0      0        0        0       0    14      0        2
141     1      7      0        0        0       0    18      0        1
142    83     14      0        3        1       4    30     26       32
143     3      0      0        0        0       0     1      0        1
144     2      0      0        0        0       0    12      0        1
145     8      1      0        0        0       0    13      3        4
146    17      0      0        0        0       0     3      8        5
147 14714     22    959      958      948    2865    49   5768     5733
    Bronze.2 Combined.total
1          2              2
2          8             15
3         28             70
4          9             12
5          5             12
6        181            480
7        116            304
8         15             26
9          5             12
10         1              1
11         1              1
12        44             90
13        56            147
14         1              1
15         3              4
16         0              1
17        55            108
18         2              2
19        81            220
20         0              1
21         1              5
22       173            449
23         4             13
24       145            526
25        11             19
26         2              4
27         0              1
28        11             34
29        70            209
30         0              1
31        23             68
32        60            168
33        68            180
34         1              1
35         1              6
36         0              2
37        10             26
38         1              1
39        16             40
40        17             45
41       174            463
42       293            780
43         0              1
44        14             25
45       270            782
46        41            137
47       162            519
48        94            243
49         3              4
50       284            806
51        39            111
52         0              1
53         0              1
54         1              1
55         1              2
56         1              3
57       169            482
58         2              4
59        11             26
60        11             27
61        25             60
62         1              1
63        12             29
64         5              7
65       228            663
66        20             67
67       160            443
68        22             59
69        29             86
70        22             49
71        90            296
72         2              2
73         2              3
74         8             26
75         2              4
76         5              9
77        10             21
78         0              4
79         1              1
80         3              6
81         1              1
82        28             62
83         5              7
84        13             24
85         0              1
86        11             22
87         1              2
88         0              4
89       139            376
90         0              1
91        39            100
92         1              1
93        12             23
94       143            477
95         4             10
96         2              3
97         0              1
98         0              4
99         7              9
100      132            291
101       11             23
102        6              8
103        4              4
104      120            302
105      177            519
106        3              8
107      355           1204
108       37            135
109        2              3
110        0              1
111        4              7
112        3              9
113        2              4
114        9             29
115       18             34
116       27             76
117       36            133
118        0              2
119        0              1
120        1              2
121      230            627
122      113            323
123        1              3
124       12             21
125        2              3
126        0              2
127       11             24
128        1              1
129        0              1
130       11             18
131        4             10
132       24             88
133        2              7
134       59            122
135        0              1
136      750           2681
137        6             10
138       10             21
139        8             12
140        0              2
141        0              1
142       29             87
143        2              3
144        1              2
145        1              8
146        4             17
147     6078          17579
> 
> olympics <- prepare_set(olympics.csv)
> olympics
4. Необхідно привести назви країн до виду "Afghanistan", "Algeria" і т.п. Для
цього можна використати функцію str_split бібліотеки stringr. В назві країн
не повинно бути пробілів на початку та в кінці.








prepare_set <- function(file_name) {
    df <- read.csv(file_name, skip = 1, header = TRUE,                                   encoding="UTF-8", stringsAsFactors = FALSE)
    names(df) <- c("Country", "Summer","Gold", "Silver", "Bronze",                            "Total", "Winter", "Gold.1", "Silver.1",                                  "Bronze.1","Total.1", "Games", "Gold.2", "Silver.2",                      "Bronze.2", "Combined.total")
    df
}

olympics <- prepare_set("olympics.csv")
> head(olympics)
                    Country Summer Gold Silver Bronze Total Winter Gold.1
1         Afghanistan (AFG)     13    0      0      2     2      0      0
2             Algeria (ALG)     12    5      2      8    15      3      0
3           Argentina (ARG)     23   18     24     28    70     18      0
4             Armenia (ARM)      5    1      2      9    12      6      0
5   Australasia (ANZ) [ANZ]      2    3      4      5    12      0      0
6 Australia (AUS) [AUS] [Z]     25  139    152    177   468     18      5
  Silver.1 Bronze.1 Total.1 Games Gold.2 Silver.2 Bronze.2 Combined.total
1        0        0       0    13      0        0        2              2
2        0        0       0    15      5        2        8             15
3        0        0       0    41     18       24       28             70
4        0        0       0    11      1        2        9             12
5        0        0       0     2      3        4        5             12
6        3        4      12    43    144      155      181            480



> prepare_set <- function(file_name) {
+     df <- read.csv(file_name, skip = 1, header = TRUE,                                   encoding="UTF-8", stringsAsFactors = FALSE)
+     names(df) <- c("Country", "Summer","Gold", "Silver", "Bronze", 
+                    "Total", "Winter", "Gold.1", "Silver.1",
+                    "Bronze.1","Total.1", "Games", "Gold.2", "Silver.2",
+                    "Bronze.2", "Combined.total")
+     country_names <- strsplit(df$Country, "(", fixed = TRUE)
+     df$Country <- sapply(country_names, "[", 1)
+     df
+ }
> 
> olympics <- prepare_set("olympics.csv")
> olympics$Country
  [1] "Afghanistan "                      "Algeria "                         
  [3] "Argentina "                        "Armenia "                         
  [5] "Australasia "                      "Australia "                       
  [7] "Austria "                          "Azerbaijan "                      
  [9] "Bahamas "                          "Bahrain "                         
 [11] "Barbados "                         "Belarus "                         
 [13] "Belgium "                          "Bermuda "                         
 [15] "Bohemia "                          "Botswana "                        
 [17] "Brazil "                           "British West Indies "             
 [19] "Bulgaria "                         "Burundi "                         
 [21] "Cameroon "                         "Canada "                          
 [23] "Chile "                            "China "                           
 [25] "Colombia "                         "Costa Rica "                      
 [27] "Ivory Coast "                      "Croatia "                         
 [29] "Cuba "                             "Cyprus "                          
 [31] "Czech Republic "                   "Czechoslovakia "                  
 [33] "Denmark "                          "Djibouti "                        
 [35] "Dominican Republic "               "Ecuador "                         
 [37] "Egypt "                            "Eritrea "                         
 [39] "Estonia "                          "Ethiopia "                        
 [41] "Finland "                          "France "                          
 [43] "Gabon "                            "Georgia "                         
 [45] "Germany "                          "United Team of Germany "          
 [47] "East Germany "                     "West Germany "                    
 [49] "Ghana "                            "Great Britain "                   
 [51] "Greece "                           "Grenada "                         
 [53] "Guatemala "                        "Guyana "                          
 [55] "Haiti "                            "Hong Kong "                       
 [57] "Hungary "                          "Iceland "                         
 [59] "India "                            "Indonesia "                       
 [61] "Iran "                             "Iraq "                            
 [63] "Ireland "                          "Israel "                          
 [65] "Italy "                            "Jamaica "                         
 [67] "Japan "                            "Kazakhstan "                      
 [69] "Kenya "                            "North Korea "                     
 [71] "South Korea "                      "Kuwait "                          
 [73] "Kyrgyzstan "                       "Latvia "                          
 [75] "Lebanon "                          "Liechtenstein "                   
 [77] "Lithuania "                        "Luxembourg "                      
 [79] "Macedonia "                        "Malaysia "                        
 [81] "Mauritius "                        "Mexico "                          
 [83] "Moldova "                          "Mongolia "                        
 [85] "Montenegro "                       "Morocco "                         
 [87] "Mozambique "                       "Namibia "                         
 [89] "Netherlands "                      "Netherlands Antilles "            
 [91] "New Zealand "                      "Niger "                           
 [93] "Nigeria "                          "Norway "                          
 [95] "Pakistan "                         "Panama "                          
 [97] "Paraguay "                         "Peru "                            
 [99] "Philippines "                      "Poland "                          
[101] "Portugal "                         "Puerto Rico "                     
[103] "Qatar "                            "Romania "                         
[105] "Russia "                           "Russian Empire "                  
[107] "Soviet Union "                     "Unified Team "                    
[109] "Saudi Arabia "                     "Senegal "                         
[111] "Serbia "                           "Serbia and Montenegro "           
[113] "Singapore "                        "Slovakia "                        
[115] "Slovenia "                         "South Africa "                    
[117] "Spain "                            "Sri Lanka "                       
[119] "Sudan "                            "Suriname "                        
[121] "Sweden "                           "Switzerland "                     
[123] "Syria "                            "Chinese Taipei "                  
[125] "Tajikistan "                       "Tanzania "                        
[127] "Thailand "                         "Togo "                            
[129] "Tonga "                            "Trinidad and Tobago "             
[131] "Tunisia "                          "Turkey "                          
[133] "Uganda "                           "Ukraine "                         
[135] "United Arab Emirates "             "United States "                   
[137] "Uruguay "                          "Uzbekistan "                      
[139] "Venezuela "                        "Vietnam "                         
[141] "Virgin Islands "                   "Yugoslavia "                      
[143] "Independent Olympic Participants " "Zambia "                          
[145] "Zimbabwe "                         "Mixed team "                      
[147] "Totals"                           
> library(stringr)
> prepare_set <- function(file_name) {
+     df <- read.csv(file_name, skip = 1, header = TRUE,                                   encoding="UTF-8", stringsAsFactors = FALSE)
+     names(df) <- c("Country", "Summer","Gold", "Silver", "Bronze", 
+                    "Total", "Winter", "Gold.1", "Silver.1",
+                    "Bronze.1","Total.1", "Games", "Gold.2", "Silver.2",
+                    "Bronze.2", "Combined.total")
+     country_names <- strsplit(df$Country, "(", fixed = TRUE)
+     df$Country <- sapply(country_names, "[", 1)
+     df$Country <- str_trim(df$Country)
+     
+     df
+ }
> 
> olympics <- prepare_set("olympics.csv")
> olympics$Country
  [1] "Afghanistan"                      "Algeria"                         
  [3] "Argentina"                        "Armenia"                         
  [5] "Australasia"                      "Australia"                       
  [7] "Austria"                          "Azerbaijan"                      
  [9] "Bahamas"                          "Bahrain"                         
 [11] "Barbados"                         "Belarus"                         
 [13] "Belgium"                          "Bermuda"                         
 [15] "Bohemia"                          "Botswana"                        
 [17] "Brazil"                           "British West Indies"             
 [19] "Bulgaria"                         "Burundi"                         
 [21] "Cameroon"                         "Canada"                          
 [23] "Chile"                            "China"                           
 [25] "Colombia"                         "Costa Rica"                      
 [27] "Ivory Coast"                      "Croatia"                         
 [29] "Cuba"                             "Cyprus"                          
 [31] "Czech Republic"                   "Czechoslovakia"                  
 [33] "Denmark"                          "Djibouti"                        
 [35] "Dominican Republic"               "Ecuador"                         
 [37] "Egypt"                            "Eritrea"                         
 [39] "Estonia"                          "Ethiopia"                        
 [41] "Finland"                          "France"                          
 [43] "Gabon"                            "Georgia"                         
 [45] "Germany"                          "United Team of Germany"          
 [47] "East Germany"                     "West Germany"                    
 [49] "Ghana"                            "Great Britain"                   
 [51] "Greece"                           "Grenada"                         
 [53] "Guatemala"                        "Guyana"                          
 [55] "Haiti"                            "Hong Kong"                       
 [57] "Hungary"                          "Iceland"                         
 [59] "India"                            "Indonesia"                       
 [61] "Iran"                             "Iraq"                            
 [63] "Ireland"                          "Israel"                          
 [65] "Italy"                            "Jamaica"                         
 [67] "Japan"                            "Kazakhstan"                      
 [69] "Kenya"                            "North Korea"                     
 [71] "South Korea"                      "Kuwait"                          
 [73] "Kyrgyzstan"                       "Latvia"                          
 [75] "Lebanon"                          "Liechtenstein"                   
 [77] "Lithuania"                        "Luxembourg"                      
 [79] "Macedonia"                        "Malaysia"                        
 [81] "Mauritius"                        "Mexico"                          
 [83] "Moldova"                          "Mongolia"                        
 [85] "Montenegro"                       "Morocco"                         
 [87] "Mozambique"                       "Namibia"                         
 [89] "Netherlands"                      "Netherlands Antilles"            
 [91] "New Zealand"                      "Niger"                           
 [93] "Nigeria"                          "Norway"                          
 [95] "Pakistan"                         "Panama"                          
 [97] "Paraguay"                         "Peru"                            
 [99] "Philippines"                      "Poland"                          
[101] "Portugal"                         "Puerto Rico"                     
[103] "Qatar"                            "Romania"                         
[105] "Russia"                           "Russian Empire"                  
[107] "Soviet Union"                     "Unified Team"                    
[109] "Saudi Arabia"                     "Senegal"                         
[111] "Serbia"                           "Serbia and Montenegro"           
[113] "Singapore"                        "Slovakia"                        
[115] "Slovenia"                         "South Africa"                    
[117] "Spain"                            "Sri Lanka"                       
[119] "Sudan"                            "Suriname"                        
[121] "Sweden"                           "Switzerland"                     
[123] "Syria"                            "Chinese Taipei"                  
[125] "Tajikistan"                       "Tanzania"                        
[127] "Thailand"                         "Togo"                            
[129] "Tonga"                            "Trinidad and Tobago"             
[131] "Tunisia"                          "Turkey"                          
[133] "Uganda"                           "Ukraine"                         
[135] "United Arab Emirates"             "United States"                   
[137] "Uruguay"                          "Uzbekistan"                      
[139] "Venezuela"                        "Vietnam"                         
[141] "Virgin Islands"                   "Yugoslavia"                      
[143] "Independent Olympic Participants" "Zambia"                          
[145] "Zimbabwe"                         "Mixed team"                      
[147] "Totals"                          
> 




prepare_set <- function(file_name) {
    df <- read.csv(file_name, skip = 1, header = TRUE, encoding="UTF-8", stringsAsFactors = FALSE)
    names(df) <- c("Country", "Summer","Gold", "Silver", "Bronze", 
                   "Total", "Winter", "Gold.1", "Silver.1",
                   "Bronze.1","Total.1", "Games", "Gold.2", "Silver.2",
                   "Bronze.2", "Combined.total")
    country_names <- strsplit(df$Country, "(", fixed = TRUE)
    df$Country <- sapply(country_names, "[", 1)
    df$Country <- str_trim(df$Country)
    df$ID <- str_sub(sapply(country_names, "[", 2),1,3)
    df <- df[-which(df$Country == "Totals"), ]
    df
}
> olympics <- prepare_set("olympics.csv")
> head(olympics)
      Country Summer Gold Silver Bronze Total Winter Gold.1 Silver.1 Bronze.1
1 Afghanistan     13    0      0      2     2      0      0        0        0
2     Algeria     12    5      2      8    15      3      0        0        0
3   Argentina     23   18     24     28    70     18      0        0        0
4     Armenia      5    1      2      9    12      6      0        0        0
5 Australasia      2    3      4      5    12      0      0        0        0
6   Australia     25  139    152    177   468     18      5        3        4
  Total.1 Games Gold.2 Silver.2 Bronze.2 Combined.total  ID
1       0    13      0        0        2              2 AFG
2       0    15      5        2        8             15 ALG
3       0    41     18       24       28             70 ARG
4       0    11      1        2        9             12 ARM
5       0     2      3        4        5             12 ANZ
6      12    43    144      155      181            480 AUS


Питання 1
Котра країна виграла найбільшу кількість золотих нагород на літніх іграх?
Функція повинна повернути одне текстове значення.
```R
```
answer_one <- function() {
    olympics[which.max(olympics$Gold),  "Country"]
}
> answer_one <- function() {
+     olympics[which.max(olympics$Gold),  "Country"]
+ }
> answer_one()
[1] "United States"
>
