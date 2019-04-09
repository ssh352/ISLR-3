##install.packages(c("ISLR", "MASS", "ROCR", "akima", "boot", "car",
                   "class", "e1071" , "gam", "gbm", "glmnet", "leaps",
                   "pls", "randomForest", "tree"))##
#All packages used in ISLR#
                   library(ISLR)
                   search() ## show search path
                   ls("package:ISLR")
                   names(Wage); dim(Wage) ## variable names and dataset dimensions
                   str(Wage) ## show variable structures
                   head(Wage)
                   levels(Wage$education)
                   plot(Wage$age, Wage$wage)
                   with(Wage, plot(age, wage))
                   attach(Wage) ## use search() to check
                   par(mfrow=c(1,3)) ## (also see ISLR Section 7.8)
                   plot(age, wage, xlab='Age', ylab='Wage', col='grey') ## first panel
                   agegrid = seq(10,80,1)
                   lines(agegrid, predict(loess(wage ~ age), agegrid), col="blue", lwd=4)
                   plot(year, wage, xlab='Year', ylab='Wage', col='grey') ## second panel
                   abline(lm(wage ~ year), col = "blue", lwd=3)
                   plot(education, wage, xlab='Education Level', ylab='Wage', col=2:6, xaxt='n') ## third panel
                   axis(1, at=1:5, labels=1:5)
                   detach() ## use search() to check
