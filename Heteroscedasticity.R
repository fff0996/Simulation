#homoscedasticity
#The "base" model is Y=0.5 + 0.5X1 + e
X <- 1:1000
#make error (constant variance of error)
Y <- NULL
error <- rnorm(n=1000,mean= 0,sd=55)
Y <- 0.5 + 0.5*X + error
summary(lm(Y~X))
homo <- data.frame(X,Y)
ggplot(homo,aes(X,Y,group=1)) + geom_point() + labs(x="",y="")

#high degree heteroscedasticity
#The "base" model is Y= 0.5 + 0.5X1 + e
X <- 1:1000
error <- rnorm(n =1000, mean=0,sd = 0.1* X)
Y <- 0.5 + 0.5*X + error
# estimate a simple regression model
hete <- data.frame(X,Y)
ggplot(hete,aes(X,Y,group=1)) + geom_point() + labs(x="",y="")

#middle degree heteroscedasticity
#The "base" model is Y= 0.5 + 0.5X1 + e
X <- 1:1000
error <- rnorm(n=1000,mean=0,sd=0.07*X + 10)
Y <- 0.5 + 0.5*X + error
# estimate a simple regression model
hete <- data.frame(X,Y)
ggplot(hete,aes(X,Y,group=1)) + geom_point() + labs(x="",y="")


#Decrease heterscedasticity
#The "base" model is Y = 0.5 + 0.5*X1 + e
X <- 1:1000
x <- rev(X)
error <- rnorm(n =1000, mean=0,sd = 0.1* x)
Y <- 0.5 + 0.5*X + error
# estimate a simple regression model
hete <- data.frame(X,Y)
ggplot(hete,aes(X,Y,group=1)) + geom_point() + labs(x="",y="")

