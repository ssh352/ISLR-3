setwd("/Users/yichenghu/Desktop/DS/Old Ds")
Advertising = read.table("Advertising.csv", header=T, sep=',', row.names=1)
str(Advertising)
## Fig 2.1 left panel
with(Advertising, plot(TV, sales))
abline(lm(sales ~ TV, data=Advertising),col=2)

library(fields)
library(rgl) ## for #3D plots
Income2 = read.table("Income2.csv", header=T, sep=',', row.names=1)
names(Income2); dim(Income2); summary(Income2)
fit = with(Income2, Tps(cbind(Education, Seniority), Income, m=3, scale.type="range"))
ngrid = 100
gridedu = seq(10, 22, length.out=ngrid)
gridsen = seq(20, 188, length.out=ngrid)
grid2 = expand.grid(gridedu, gridsen)
grid2$pred = predict(fit, x=as.matrix(grid2))
names(grid2)
with(Income2, plot3d(Education, Seniority, Income, col=2, size=5))
plot3d(grid2$Var1, grid2$Var2, grid2$pred, add=T, alpha=.5)