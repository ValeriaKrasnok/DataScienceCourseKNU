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

 
