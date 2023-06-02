# Creation of Brass Player data
brass <- c(4.7,4.6,4.3,4.5,5.5,4.9,5.3)
#Creation of Control data
control <- c(4.2,4.7,5.1,4.7,5.0,0,0) data.frame("Brass"=brass, "Control"=control)

# Creating dataframes in long format
Vital<-c(brass,control)
Group<- rep(c("Brass", "control"),c(length(brass),length(control)))
data.frame(Vital, Group)

# t test and 95% confidence interval
t.test(Vital~Group, alternative="greater", conf.level=0.95)

# test assuming equal variance
t.test(Vital~Group, alternative="greater", conf.level=0.95, var.equal=TRUE)

