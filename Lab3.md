#Laba3
1.Функція add2(x, y), яка повертає суму двох чисел.

```r
> add2<-function(x,y){
+ x+y
+ }
> add2(3,5)
[1] 8
```

2.Функція above(x, n), яка приймає вектор та число n, та повертає всі елементі вектору, які більше n. По замовчуванню n = 10.

```r
> above<-function(x,n=10){
+ x[x>n]
+ }
> v<-c(1,3,12,45,1,56)
> above(v,10)
[1] 12 45 56
```

3.Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його елементи за допомогою exp з n, та повертає елементи вектору, які відповідають умові expression.
Наприклад, my_ifelse(x, “>”, 0) повертає всі елементи x, які більші 0. Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”. Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.

```r
v<-c(1,3,12,45,1,56)
> my_ifelse<-function(x,exp,n){
+ if (exp=="<") x[x<n]
+ else if (exp==">") x[x>n]
+ else if (exp=="<=") x[x<=n]
+ else if (exp==">=") x[x>=n]
+ else if (exp=="==") x[x==n]
+ else x
+ }

> my_ifelse(v,"==",5)
numeric(0)
> my_ifelse(v,">=",3)
[1]  3 12 45 56
> my_ifelse(v,"<=",3)
[1] 1 3 1
> my_ifelse(v,"<",3)
[1] 1 1
```

4.Функція columnmean(x, removeNA), яка розраховує середнє значення (mean) по кожному стовпцю матриці, або data frame. Логічний параметр removeNA вказує, чи видаляти NA значення. По замовчуванню він дорівнює TRUE.

```r
columnmean<- function(x, removeNA=TRUE){
  res<-c()
  for (el in 1:ncol(x)){
    res<-c(res, mean(x[ ,el], na.rm=removeNA))
  }
  return(res)
}

> mdat <- matrix(c(1,2,3, 11,12,13), nrow = 2, ncol = 3, byrow = TRUE,dimnames = list(c("row1","row2"),c("C.1", "C.2", "C.3")))
> mdat
     C.1 C.2 C.3
row1   1   2   3
row2  11  12  13
> columnmean(mdat)
[1] 6 7 8
> df<-data.frame(col1 = c(1,2,3,4,5),col2 = c('a','b','c','d','e'), col3 = c(NA, 3, NA, 5, 8))
> df
  col1 col2 col3
1    1    a   NA
2    2    b    3
3    3    c   NA
4    4    d    5
5    5    e    8
> columnmean(df)
[1] 3.000000       NA 5.333333
> columnmean(df, TRUE)
[1] 3.000000       NA 5.333333
> columnmean(df, FALSE)
[1]  3 NA NA
```