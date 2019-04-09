#matrix#
x<-c(1,2,3,4)
x<-matrix(x,nrow = 2,ncol = 2)
x=matrix (c(1,2,3,4) ,2,2)
matrix (c(1,2,3,4) ,2,2,byrow =TRUE)
sqrt(x)
x^2
#random samples#
x=rnorm (50)
y=x+rnorm(50,mean=50,sd=0.1)
cor(x,y)
x=rnorm (100)
y=rnorm (100)
plot(x,y)
plot(x,y,xlab=" this is the x-axis",ylab=" this is the y-axis",
       main=" Plot of X vs Y")
pdf (" Figure .pdf ")
plot(x,y,col =" green ")
dev.off ()
#contour example#
x<-seq(-pi,pi,length=50)
y=x
f=outer(x,y,function(x,y)cos(y)/(1+x^2))
contour(x,y,f)
contour (x,y,f,nlevels =45, add=T)
fa=(f-t(f))/2
contour (x,y,fa,nlevels =15)
image(x,y,fa)
persp(x,y,fa)
persp(x,y,fa ,theta =30, phi =20)
#matrix manipulation#
A=matrix (1:16 ,4 ,4)
A[2,3]
A[c(1,3) ,c(2,4) ]
A[1:3 ,2:4]
A[1:2 ,]
A[ ,1:2]
A[-c(1,3) ,]
#read file#
setwd("/Users/yichenghu/Desktop/DS/Old Ds")
dat<-read.csv("Auto.csv",header = T,na.strings = "?")
fix(dat)
dat<-na.omit(dat)
dim(dat)
attach(dat)
plot(cylinders , mpg)
plot(cylinders , mpg , col ="red", varwidth =T)
plot(cylinders , mpg , col ="red", varwidth =T,horizontal =T)
plot(cylinders , mpg , col ="red", varwidth =T, xlab=" cylinders ",
     ylab ="MPG ")
hist(mpg)
hist(mpg ,col =2)
hist(mpg ,col =2, breaks =15)
pairs(Auto)
pairs(~mpg + displacement + horsepower + weight +acceleration , Auto)
plot(horsepower ,mpg)
identify (horsepower,mpg ,name)
