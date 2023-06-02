# Part A #

#Created vector of 15 values for part A
mydata=c(6,9,7,3,6,7,9,6,3,6,6,7,1,9,1)

#i (Those equal to six)
mydata==6

#ii (Those greater than or equal to 6)
mydata>=6

#iii (those less than 6 + 2)
mydata<6+2

#iv (Those equal to six)
mydata!=6

# Part B #

#creation of array
b<-array(c(3,6,7,9,6,3,6,6,7,1,9,1))

#i those less than or equal to 6 divided by 2, plus 4
b1<-b==6/2+4

#ii those less than or equal to 6 divided by 2, plus 4, after increasign every element in
b2<-b+2<=6/2+4

# Part C # 

#c confirmation of locations of elements equal to 0 in the 10 x 10 identity matrix I10
c<-diag(,10)==0
c==0

# Part D #

#d Check wheter any of th evalues of the logical array created in (b) are true. If they ar
d1<-any(b1)
d2<-all(b1)
d3<-any(b2)
d4<-all(b2)
c(d1,d2,d3,d4)

# Part E #

#e By extracting the diagonal elements of the logical matrix created in (c), use any to co
e<-any(diag(c))

#the mean number of cars passing in 120 min is 107
#(a) probability of more than 100 cars pass her on any given Saturday
1-ppois(100,107)

#(b) probability that no cars pass
dpois(0,107)

#(c) Plot of the relevant Poisson mass function over the values in 60 <= x <= 150
barplot(
      dpois(60:150, 107),
      main = "Number of cars distribution",
      xlab = "x cars",
      ylab = "Pr(X = x)",
      names.arg = seq(60,150,1),
space=0 )

