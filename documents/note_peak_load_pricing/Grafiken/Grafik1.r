library(gdata)
library(RColorBrewer)
library(xtable)

convert <- function(x){
    rownames(x) <- x[,1]
    x <- as.matrix(x[,-1])}
    
daten<-convert(as.matrix(read.csv2("Mappe1.csv",header=F)))

daten.red<-daten[,1:5]

par(new=T)
matplot(rownames(daten.red),daten.red,type="l",xlab=NA,ylab=NA,bty="l",lwd=1,col=c(1,1,1,1,2) ,lty = c(1,1,2,2,1),ylim = c(0,10))
lines(x=c(4.5,4.5),y=c(0,10),type="l",lwd=1,col=4, lty = 2)
lines(x=c(6,6),y=c(0,10),type="l",lwd=1,col=4,lty = 2)
lines(x=c(	9,9),y=c(0,10),type="l",lwd=1,col=4,lty = 2)
points(x=c(5,7), y=c(5,3),pch=5,col=2)
points(x=c(2.5,4.5,5,9,3.33333333,6), y=c(2.5,5.5,0,1,1.66666666,4),pch=1,col=4)
par(new=F)
  
  

 
