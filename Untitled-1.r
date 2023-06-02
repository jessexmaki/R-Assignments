```{r setup, include=FALSE}
# choose your unique seednumber to generate data, e.g. UFID
set.seed(48571578) # generate data
mydata = rnorm(100, 30, 2)
# sample mean of mydata
mean(mydata)
```

```{r}# used prefered method to calculate median as seen in lecture
quantile(mydata,0.5,type=6)
```

```{r}
# 10% trimmed mean
mean(mydata, trim=0.1)
```


```{r}
# 35th percentile
quantile(mydata,0.35,type=6)
```

```{r}
hist(mydata,col="dodgerblue", breaks=c(22:36), main="R Assignment 1", xlab="Jesse Maki")
```
