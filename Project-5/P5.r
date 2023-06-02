mydata = read.csv("/Users/jessemaki/Desktop/mydata.csv")
# A: plotting
plot(mydata$x, mydata$y)

#B: Summary of model
model = lm(y~x, data=mydata)
summary(model)

#linear regression line: y = -420.37 + 28.98x

#C:
#p value: 2e-16 < alpha = 0.05, which is enough to reject null hypotheis.
#95 % CI for slope
confint.lm(model)

# D: in part B, we can see that r squared is 0.9354 which is the coefficient of determinat
#E&F
predict.lm(model, newdata = data.frame(x=c(20,150)), level= 0.95, interval="confidence")

#G
# Here we can dtermine coreeelation between x & y to see if there is a linear relationship cor(mydata$x, mydata$y)



