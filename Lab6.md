```R
```
1. Створити матрицю mat з 5 стовпцями та 10 строками за допомогою
matrix з випадковими даними (функція rnorm(50)).
```R
```
> mat <- matrix(rnorm(50), 10,5)
##was created mat with help of function matrix with random values
> mat
[,1]        [,2]        [,3]         [,4]         [,5]
[1,] -0.281691703 -0.17807799 -0.07196429 -0.518140632  0.508167291
[2,]  0.182379693 -1.56392114 -1.48600356 -0.072883540  0.452065497
[3,] -1.259509930  0.24656849 -1.57519541  2.127973077  0.008847789
[4,]  1.371689826 -0.79932004 -0.50944294 -0.898414709  0.501849677
[5,]  0.898691546  0.94971926  2.33045013 -2.215284801  0.207479918
[6,]  0.366147773  1.41185324  0.93292362 -0.546697563 -0.463356150
[7,]  0.001921326  0.79049850 -0.14580029 -1.987545370 -1.110550973
[8,]  1.831444072  0.08011577  1.46654037 -0.007065457 -0.605395919
[9,] -0.533305515  0.63091964 -0.92325020 -0.590775931 -0.914728525
[10,]  0.389134252  0.92548369 -0.44298234  1.550165507  1.122814922
##showed how works matrix function
```R
```
2. Знайти максимальне значення в кожному стовпці.
```R
```
> apply(mat, 2, max)
[1] 1.831444 1.411853 2.330450 2.127973 1.122815
##with help of apply function was founded max values of all column of matrix mat
##in function value 2 mean column
```R
```
3. Знайти середнє (mean) значення кожного стовпця.
```R
```
apply(mat, 2, mean)
[1]  0.29669013  0.24938394 -0.04247249 -0.31586694 -0.02928065
##with help of apply function was founded mean values of all column of matrix mat
##in function value 2 means column
```R
```
4. Знайти мінімальне значення в кожному рядку.
```R
```
> apply(mat, 1, min)
[1] -0.5181406 -1.5639211 -1.5751954 -0.8984147 -2.2152848 -0.5466976
[7] -1.9875454 -0.6053959 -0.9232502 -0.4429823
##above an example of using columnmin function where 1 means that we use rows of matrix
```R
```
5. Відсортувати кожен стовбець таблиці.
```R
```
apply(mat,2,sort)
[,1]        [,2]        [,3]         [,4]         [,5]
[1,] -1.259509930 -1.56392114 -1.57519541 -2.215284801 -1.110550973
[2,] -0.533305515 -0.79932004 -1.48600356 -1.987545370 -0.914728525
[3,] -0.281691703 -0.17807799 -0.92325020 -0.898414709 -0.605395919
[4,]  0.001921326  0.08011577 -0.50944294 -0.590775931 -0.463356150
[5,]  0.182379693  0.24656849 -0.44298234 -0.546697563  0.008847789
[6,]  0.366147773  0.63091964 -0.14580029 -0.518140632  0.207479918
[7,]  0.389134252  0.79049850 -0.07196429 -0.072883540  0.452065497
[8,]  0.898691546  0.92548369  0.93292362 -0.007065457  0.501849677
[9,]  1.371689826  0.94971926  1.46654037  1.550165507  0.508167291
[10,]  1.831444072  1.41185324  2.33045013  2.127973077  1.122814922
##function apply helped to sort values in each column of matrix mat
```R
```
6. Знайти кількість значень < 0 для кожного стовпця. Використати свою
функцію.
```R
```
> apply(mat,2,function(x) sum(x<0))
[1] 3 3 7 8 4
##with help of function apply was founded numbers of values that less than zero
```R
```
7. Вивести вектор з булевими значеннями TRUE та FALSE. TRUE, якщо в
стовпці є елементи >2, FALSE – якщо немає.
```R
```
> apply(mat,2,function(x) sum(x>2))
[1] 0 0 1 1 0
##was showed that function apply return values that more than 2
> apply(mat,2,function(x) sum(x>2)>0)
[1] FALSE FALSE  TRUE  TRUE FALSE
##return logical values where TRUE-when column has values more than 2 and FALSE- when column doesn't consist values that more than 2
```R
```
8. Створить список list1 <- list(observationA = c(1:5, 7:3), observationB = matrix(1:6, nrow=2)). Для цього списку знайдіть sum за допомогою lapply.
```R
```
> list1 <- list(observationA = c(1:5, 7:3), observationB = matrix(1:6, nrow=2))
##was created list1 with help of some cinditions of different observations
> list1
$observationA
[1] 1 2 3 4 5 7 6 5 4 3

$observationB
[,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
##print observations
> lapply(list1, mean)
$observationA
[1] 4

$observationB
[1] 3.5

> lapply(list1, sum)
$observationA
[1] 40

$observationB
[1] 21
##with help of function lapply was found sum of A and B observations
```R
```
9. Для кожного елементу списку list1 знайдіть максимальне та мінімальне
значення (range) за допомогою lapply та sapply.
```R
```
> lapply(list1, min)
$observationA
[1] 1
$observationB
[1] 1
##used lapply function
> sapply(list1, min)
observationA observationB 
1            1 
##used sapply function
##we can see that lapply and sapply functions have the same result
> lapply(list1, max)
$observationA
[1] 7
$observationB
[1] 6
##was used lapply function
> sapply(list1, max)
observationA observationB 
7            6 
##was used sapply function
##each of this functions have the same result
```R
10.Для вбудованого набору даних InsectSprays знайти середнє count для
кожного spray.
```R
```
> s <- split(InsectSprays, InsectSprays$spray)
> s
$A
   count spray
1     10     A
2      7     A
3     20     A
4     14     A
5     14     A
6     12     A
7     10     A
8     23     A
9     17     A
10    20     A
11    14     A
12    13     A

$B
   count spray
13    11     B
14    17     B
15    21     B
16    11     B
17    16     B
18    14     B
19    17     B
20    17     B
21    19     B
22    21     B
23     7     B
24    13     B

$C
   count spray
25     0     C
26     1     C
27     7     C
28     2     C
29     3     C
30     1     C
31     2     C
32     1     C
33     3     C
34     0     C
35     1     C
36     4     C

$D
   count spray
37     3     D
38     5     D
39    12     D
40     6     D
41     4     D
42     3     D
43     5     D
44     5     D
45     5     D
46     5     D
47     2     D
48     4     D

$E
   count spray
49     3     E
50     5     E
51     3     E
52     5     E
53     3     E
54     6     E
55     1     E
56     1     E
57     3     E
58     2     E
59     6     E
60     4     E

$F
   count spray
61    11     F
62     9     F
63    15     F
64    22     F
65    15     F
66    16     F
67    13     F
68    10     F
69    26     F
70    26     F
71    24     F
72    13     F



