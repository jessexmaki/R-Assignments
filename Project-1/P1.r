# choose your unique seednumber to generate data, e.g. UFID
set.seed(48571578) # generate data
mydata = rnorm(100, 30, 2)
# sample mean of mydata
mean(mydata)

quantile(mydata,0.5,type=6)

# 10% trimmed mean
mean(mydata, trim=0.1)

# 35th percentile
quantile(mydata,0.35,type=6)

# plots data
hist(mydata,col="dodgerblue", breaks=c(22:36), main="R Assignment 1", xlab="Jesse Maki")

# add lines to graph
hist(mydata,col="dodgerblue", breaks=c(22:36), main="R Assignment 1", xlab="Jesse Maki")
abline(v=mean(mydata), col="blue", lwd=2, lty=4)
abline(v=median(mydata),col="red", lwd=2, lty=4)
abline(v=(mean(mydata, trim=0.1)), col="green", lwd=2, lty=4)
abline(v=(quantile(mydata,0.35,type=6)), col="purple", lwd=2, lty=4)

# adds curve
hist(mydata,col="dodgerblue", breaks=c(22:36), main="R Assignment 1", xlab="Jesse Maki", p
lines(density(mydata ), col="red")

#
