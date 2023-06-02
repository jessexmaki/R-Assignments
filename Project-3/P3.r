# Creation of Data
length = c(20.2, 22.9, 23.3, 20.0, 19.4, 22.0, 22.1, 22.0, 21.9, 21.5, 20.9)

# Creation of Histogram
hist(length,main="Histogram For Stem length of Soyabean",xlab="Stem length of Soyabean")

# Creation of Tests
 t.test(length,mu=22,conf.level=0.98,alternative='two.sided')
 
# Creation of QQ Plot
qqnorm(length)
qqline(length, col = "steelblue", lwd = 2)



