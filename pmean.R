> getwd()
> setwd("rprog_data_specdata/")
> getwd()
> list.files(path="specdata", pattern=".csv")
> file.list <- list.files(path="specdata", pattern=".csv")
> length(file.list)
```R
```
1. Написати функцію pmean, яка обчислює середнє значення (mean)
забруднення сульфатами або нітратами серед заданого переліка
моніторів. Ця функція приймає три аргументи: «directory», «pollutant»,
«id». Directory – папка, в якій розміщені дані, pollutant – вид забруднення,
id – перелік моніторів. Аргумент id має значення за замовчуванням 1:332.
Функція повинна ігнорувати NA значення
```R
```
pmean <- function(directory, pollutant, id=1:332){
     filelist <- list.files(path=directory, pattern=".csv", full.names=TRUE)
     values <- numeric()
     for (i in id){
     data <- read.csv(filelist[i])
     values <- c(values, data[[pollutant]])
     }
     mean(values, na.rm=TRUE)
}
```R
```
2. Написати функцію complete, яка виводить кількість повних спостережень
(the number of completely observed cases) для кожного файлу. Функція
приймає два аргументи: «Directory» та «id» та повертає data frame, в
якому перший стовпчик – ім’я файлу, а другий – кількість повних
спостережень.
```R
```
complete <- function(directory, id=1:332 ){
   file.list <- list.files(path=directory, pattern=".csv", full.names=TRUE)
   nobs <- numeric()
   for (i in id){
   data <- read.csv(file.list[i])
   nobs <- c(nobs, sum(complete.cases(data)))
   }
   data.frame(id, nobs)
}
```R
```
Написати функцію corr, яка приймає два аргументи: directory (папка, де
знаходяться файли спостережень) та threshold (порогове значення, за
замовчуванням дорівнює 0) та обчислює кореляцію між сульфатами та
нітратами для моніторів, кількість повних спостережень для яких більше
порогового значення. Функція повинна повернути вектор значень
кореляцій. Якщо ні один монітор не перевищує порогового значення,
функція повинна повернути numeric вектор довжиною 0. Для обчислення
кореляції між сульфатами та нітратами використовуйте вбудовану функцію 
«cor» з параметрами за замовчуванням.
```R
```
>corr <- function(directory, threshold = 0) {
   files <- list.files( path = directory)
   cr <- c() 
   for(i in 1:length(files)){
     data <- read.csv( paste(directory, "/", files[i], sep="") )
     data <- data[complete.cases(data),]
     if ( nrow(data) > threshold ) {
       cr <- c(cr, cor(data$sulfate, data$nitrate) ) 
     }
   }
   return( cr )
 }
head(cr)
summary(cr)
length(cr)
```R
```

