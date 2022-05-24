#homo
#The "base" model is Y=0.5 + 0.5X1 + e
x <- 1:1000
#make error (constant variance of error)
y <- NULL
err <- rnorm(n=1000,mean=(0.5*x + 0.5),sd=108)
y <- 0.5 + 0.5*x + error
summary(lm(y~x))
homo <- data.frame(x,y)
ggplot(homo,aes(x,y,group=1)) + geom_point() + labs(x="",y="")

#hetero
#The "base" model is Y= 0.5 + 0.5X1 + e
X <- 1:1000
error <- rnorm(n =1000, mean=(0.5*X + 0.5),sd = 0.2* X)
Y <- 0.5 + 0.5*X + error
# estimate a simple regression model
hete <- data.frame(X,Y)
ggplot(hete,aes(X,Y,group=1)) + geom_point() + labs(x="",y="")
