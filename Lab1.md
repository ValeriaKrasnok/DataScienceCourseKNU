1. Створити змінні базових (atomic) типів. Базові типи: character, numeric,
integer, complex, logical.
```R
```
> x1="helloworld"
> print(x1)
[1] "helloworld"
> ##character data type
> x2=178.5
> ##numeric data type
  > print(x2)
[1] 178.5
> x3=100:125
> ##integer data type
  > print(x3)
[1] 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119
[21] 120 121 122 123 124 125
> x4=8+4i
> ##complex data type
  > print(x4)
[1] 8+4i
> x5= TRUE
> ##logic type data
  > print(x5)
[1] TRUE
```R
```
2. Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14,
2.71, 0, 13; 100 значень TRUE.
```R
```
> x6<-5:75
##integer data type
> print(x6)
[1]  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
[27] 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56
[53] 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75
> x7<-c(3.14,2.71,0,13)
> ##numeric data type from 5 to 75
  > print(x7)
[1]  3.14  2.71  0.00 13.00
> x8<-rep(TRUE,100)
##was used repeat function 
> print(x8)
[1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
[17] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
[33] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
[49] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
[65] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
[81] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
[97] TRUE TRUE TRUE TRUE
```R
```
3. Створити наступну матрицю за допомогою matrix, та за допомогою cbind
або rbind
```R
```
> m<-c(0.5,1.3,3.5,3.9,131,2.8,0,2.2,4.6,2,7,5.1)
> print(m)
[1]   0.5   1.3   3.5   3.9 131.0   2.8   0.0   2.2   4.6   2.0   7.0   5.1
> dim(m)<-c(4,3)
> m
[,1]  [,2] [,3]
[1,]  0.5   1.3  3.5
[2,]  3.9 131.0  2.8
[3,]  0.0   2.2  4.6
[4,]  2.0   7.0  5.1
##dim function was used for creating matrix where number of raws are 4 and numer of columns are 3
> xx<-c(0.5,3.9,0,2) ##number type of data
> xx
[1] 0.5 3.9 0.0 2.0
> yy<-c(1.3,131,2.2,7) ##number type of data 
> yy
[1]   1.3 131.0   2.2   7.0
> zz<-c(3.5,2.8,4.6,5.1) ##number type of data
> zz
[1] 3.5 2.8 4.6 5.1
> cbind(xx,yy,zz)
##cbind function helped to build matrix by columnes values 
xx    yy  zz
[1,] 0.5   1.3 3.5
[2,] 3.9 131.0 2.8
[3,] 0.0   2.2 4.6
[4,] 2.0   7.0 5.1
```R
```
4. Створити довільний список (list), в який включити всі базові типи.
```R
```
> x9<-list("helloworld",125.2,7+5i,TRUE,70:89)
##list function helped to combine all basic types in one vector
> x9
[[1]]
[1] "helloworld"

[[2]]
[1] 125.2

[[3]]
[1] 7+5i

[[4]]
[1] TRUE

[[5]]
[1] 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89
```R
```
5. Створити фактор з трьома рівнями «baby», «child», «adult».
```R
```
> x10<-factor(c("baby","child","adult"))
> x10
[1] baby  child adult
Levels: adult baby child
##factor function was used to represent categorical data 
```R
```
6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA
```R
```
> x11<-c(1, 2, 3, 4, NA, 6, 7, NA, 9,NA,11)
> x11
[1]  1  2  3  4 NA  6  7 NA  9 NA 11
> is.na(x11)
[1] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE
##is.na function - is there any NA in the data?
> sum(is.na(x11))
[1] 3
> ##number of NA in vector x11
  > which(is.na(x11))
[1]  5  8 10
##which function showed indexes and positions of NA values where index of the first NA is 5
```R
```
7. Створити довільний data frame та вивести в консоль.
```R
```
> x12<-data.frame(foo=1:6,bar=c(T,T,F,T,F,T))
> x12
foo   bar
1   1  TRUE
2   2  TRUE
3   3 FALSE
4   4  TRUE
5   5 FALSE
6   6  TRUE
> nrow(x12)
[1] 6
> ncol(x12)
[1] 2
##data.frame function helped to build spreadsheet with column names and to combine different types of data
```R
```
8. Змінити імена стовпців цього data frame.
```R
```
> names(x12)<-c("xxx","zzz")
##names function helped to rename column names.In our example from "foo" and "bar" to "xxx"and "zzz"
> x12
xxx   zzz
1   1  TRUE
2   2  TRUE
3   3 FALSE
4   4  TRUE
5   5 FALSE
6   6  TRUE
```R
```
