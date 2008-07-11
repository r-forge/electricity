library(gdata)
library(RColorBrewer)
library(xtable)

convert <- function(x){
    rownames(x) <- x[,1]
    x <- as.matrix(x[,-1])}

daten<-convert(as.matrix(read.csv2("Mappe2.csv",header=F)))
           
daten.red<-daten[,1:9]
%col=c(1,1,1,1,2,2,2,1,1)      
par(new=T)
matplot(rownames(daten.red),daten.red,type="l",xlab=NA,ylab=NA,bty="l",lwd=c(1,1,1,1,1,2,1,2,2),col=c(1,1,1,1,'white','white','white','white','white') ,lty = c(1,1,1,1,1,1,1,2,2),ylim = c(0,10),xlim = c(0,10))
lines(x=c(3,3),y=c(0,10),type="l",lwd=1,col=4,lty = c(2))
%lines(x=c(3.5,3.5),y=c(0,10),type="l",lwd=1,col=4,lty = c(2))
lines(x=c(0,100),y=c(3,3),type="l",lwd=1,col=4,lty = c(2))
%lines(x=c(0,100),y=c(3.5,3.5),type="l",lwd=1,col=4,lty = c(2))
par(new=F)
