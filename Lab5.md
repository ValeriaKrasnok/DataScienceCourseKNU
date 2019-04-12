df <- read.csv("D:/Documents/rprog_data_specdata/specdata/001.csv")


df0 <- function(df) {
  df1 <- df + 1
  print(df1)
  return(df1)
}

for (i in 1:332) {
  
}
```R
```
1. Написати функцію pmean, яка обчислює середнє значення (mean)
забруднення сульфатами або нітратами серед заданого переліка
моніторів. Ця функція приймає три аргументи: «directory», «pollutant»,
«id». Directory – папка, в якій розміщені дані, pollutant – вид забруднення,
id – перелік моніторів. Аргумент id має значення за замовчуванням 1:332.
Функція повинна ігнорувати NA значення. 
```R
```
pmean <- 
pmean("specdata", "sulfate", 1:10)
nm <- list.files(path="path/to/file")
do.call(rbind, lapply(nm, function(x) read.table(file=x)[, 2]))

dataFiles <- lapply(Sys.glob("specdata"), read.csv)

my.path <- list("directory»", "pollutant", "id")
my.data <- list()
for (i in 1:length(my.path)){
  my.data[[i]] <- read.csv(my.path[[i]])
}

```R
```
df <- read.csv("D:/Documents/rprog_data_specdata/specdata")


pmean <- function(df, sulfate, id = 1:332) {
    for (i in id) {
        mean <- c(mean,...)
    }
        
        }
