#Laba1
# Laba1
1.Створити змінні базових (atomic) типів. Базові типи: character, numeric, integer, complex, logical.

char<-"hello"

 print(char)

[1] "hello"


 numer<-0.5

 print(numer)

[1] 0.5

 
 integ<-23
 
 print(integ)

[1] 23


 compl<-2+4i
 
 print(compl)

[1] 2+4i

 
 logic<-TRUE
 
 print(logic)

[1] TRUE


2.Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14, 2.71, 0, 13; 100 значень TRUE.
 v1<-c(5:75)
 v1
 [1]  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32
[29] 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60
[57] 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75

 v2<-c(3.14,2.71,0,13)
 v2
[1]  3.14  2.71  0.00 13.00

 v3<-rep(TRUE,100)
 v3
  [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [17] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [33] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [49] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [65] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [81] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [97] TRUE TRUE TRUE TRUE
 
3.Створити наступну матрицю за допомогою matrix, та за допомогою cbind або rbind
0.5	1.3	3.5
3.9	131	2.8
0	2.2	4.6
2	7	5.1
 matr<-matrix(nrow=4, ncol=3)
 matr
     [,1] [,2] [,3]
[1,]   NA   NA   NA
[2,]   NA   NA   NA
[3,]   NA   NA   NA
[4,]   NA   NA   NA
 x<-c(0.5,3.9,0,2)
 y<-c(1.3,131,2.2,7)
 z<-c(3.5,2.8,4.6,5.1)
 matrix<-cbind(x,y,z)
 matrix
       x     y   z
[1,] 0.5   1.3 3.5
[2,] 3.9 131.0 2.8
[3,] 0.0   2.2 4.6
[4,] 2.0   7.0 5.1

