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
