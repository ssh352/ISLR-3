library(quantreg) ## quantile regression package
library(ISLR)
str(Auto)
with(Auto, plot(horsepower, mpg))
## Repeat this 100 times (i.e., 100 replicates)
with(Auto, plot(horsepower, mpg))
for(ii in 1:10) {
  subidx = sample.int(392, 50)
  Autosub = Auto[subidx,]
  mod = rq(mpg ~ horsepower + I(horsepower^2), data=Autosub, tau=.5)
  idx = order(Autosub$horsepower)
  points(Autosub$horsepower[idx], fitted(mod)[idx], type='l')
}
mod = rq(mpg ~ horsepower + I(horsepower^2), data=Auto, tau=.5)
idx = order(Auto$horsepower)
points(Auto$horsepower[idx], fitted(mod)[idx], type='l', lwd=3, col=2)