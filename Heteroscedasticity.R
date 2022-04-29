#homo
#The "base" model is Y=0.5 + 0.5X1 + e
x <- 1:1000
#make error (constant variance of error)
y <- NULL
err <- rnormn=1000,mean=(0.5*x + 0.5),sd=100)
y <- 0.5 + 0.5*x + error
summary(lm(y~x))
plot(x=x,y=y)

#hetero
#The "base" model is Y= 0.5 + 0.5X1 + e
X <- 1:1000
error <- rnorm(n =1000, mean=(0.5*X + 0.5),sd = 0.6 * X)
Y <- 0.5 + 0.5*X + error
# estimate a simple regression model
reg <- lm(Y ~ X)
# plot the data
plot(x = X, y = Y, pch = 19, col = "steelblue", cex = 0.8)

# add the regression line to the plot
abline(reg, col = "darkred",    lwd = 1.5)
