library(ISLR)
str(Smarket)
head(Smarket)
## Fig 1.2 first panel
with(Smarket, plot(Direction, Lag1,
                   xlab="Today's Direction", ylab="Percentage change in S&P",
                   main='Yesterday', col=2:3))

tmp = prcomp(NCI60$data, scale=T)
str(tmp)
pchcode = as.numeric(as.factor(NCI60$labs)) %% 4 + 20
pchcode[pchcode==22] = 24
pchcode[pchcode==20] = 22
colcode = as.numeric(as.factor(NCI60$labs)) %% 7+2
plot(tmp$x[,1], tmp$x[,2], pch=pchcode, col=colcode, bg=colcode)