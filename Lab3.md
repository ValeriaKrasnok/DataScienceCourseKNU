В лабораторній роботі необхідно написати наступні функції на мові R та вивести
результат роботи цих функцій на довільних даних:
  1. Функція add2(x, y), яка повертає суму двох чисел.
```R
```
add2 <- function(x, y) {
        x + y
}
##created a function add2 for making the sum of 2 values
##for example we can use 2 values 10 and 15 for using add2 function
> add2(10,15)
[1] 25
```R
```
2. Функція above(x, n), яка приймає вектор та число n, та повертає всі
елементі вектору, які більше n. По замовчуванню n = 10.
```R
```
above <- function(x,n=10) {
  x[x > n]
}

z<-c(145,78,10,2,1,96,3,454)
> z
[1] 145  78  10   2   1  96   3 454
> above(z)
[1] 145  78  96 454
##was used function above() for the new vector z
```R
```
3.Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його
елементи за допомогою exp з n, та повертає елементи вектору, які
відповідають умові expression. Наприклад, my_ifelse(x, “>”, 0) повертає всі
елементи x, які більші 0. Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”.
Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.
```R
```
my_ifelse<-function(z,exp,n){
  if(exp==">"){
    res=z[z>n]
  }else if(exp=="<"){
    res=z[z<n]
  }else if(exp=="=="){
    res=z[z==n]
  }else if(exp=="<="){
    res=z[z<=n]
  } else if (exp==">="){
    res=z[z>=n]
  } 
  else { 
    res=z
  }
  res
}
##was created function my_ifelse with different conditions such as “<”, “>”, “<=”, “>=”, “==”.With help of button "run" this function was printed in console.
##for illustration of this function was created new vector q
> q <- c(100,785,45,963,478,256,12,0,36,968,78,15,12)
> q
[1] 100 785  45 963 478 256  12   0  36 968  78  15  12
##go through all the options of function on example of vector q
> my_ifelse(q,exp=">",100)
[1] 785 963 478 256 968
> my_ifelse(q,exp="<",100)
[1] 45 12  0 36 78 15 12
> my_ifelse(q,exp="<=",100)
[1] 100  45  12   0  36  78  15  12
> my_ifelse(q,exp=">=",100)
[1] 100 785 963 478 256 968
> my_ifelse(q,exp="==",100)
[1] 100
##for example, if someone want to print this function with another condition that was not condition of my_ifelse, function will print all values of vector q.
> my_ifelse(q,exp="=",121)
[1] 100 785  45 963 478 256  12   0  36 968  78  15  12
```R
```
4.Функція columnmean(x, removeNA), яка розраховує середнє значення
(mean) по кожному стовпцю матриці, або data frame. Логічний параметр
removeNA вказує, чи видаляти NA значення. По замовчуванню він
дорівнює TRUE.
```R
```
  columnmeans <- function(w,removeNA=TRUE){
    n <- ncol(w)
    v <- numeric(n)
      for (i in 1:n) {
     v[i] <- mean(w[ ,i], na.rm=removeNA)
    }
    v
    }
##was created new function columnmeans for finding mean of each column
##for using this function was created data frame with 3 columns.In the result we would to find 3 values of coloumn mean
> x <- c(145,89,74,23,56,89,41,2,3,145,NA,47,56)
> x
[1] 145  89  74  23  56  89  41   2   3 145  NA  47  56
> y <-c(145,896,234,74,589,NA,785,0,NA,123,45,NA,78)
> y
[1] 145 896 234  74 589  NA 785   0  NA 123  45  NA  78
> z <- c(74,458,632,10,NA,478,569,0,10,478,663,NA,10)
> z
[1]  74 458 632  10  NA 478 569   0  10 478 663  NA  10
> w <- data.frame(x,y,z)
> w
x   y   z
1  145 145  74
2   89 896 458
3   74 234 632
4   23  74  10
5   56 589  NA
6   89  NA 478
7   41 785 569
8    2   0   0
9    3  NA  10
10 145 123 478
11  NA  45 663
12  47  NA  NA
13  56  78  10
##columnmean function of "w" data frame has a view as below
> columnmeans(w)
[1]  64.16667 296.90000 307.45455
##above we get 3 mean values of columns in data frame w
 
