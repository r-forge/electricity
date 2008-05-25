library("electricity")
library("xtable")

data(load)
data(eex)

pr <- c(t(eex$prices))
totload <- c(t(load$Germany + load$Austria))
pr <- cbind(pr,totload)

pr <- pr[-which(is.na(pr[,1])),]

int <- c(0,20,40,60,80,100,100000)

prvol_int <- list()
vol_int <- vector()
pr_int <- vector()
no_int <- vector()
pct_int <- vector()
vol_int <- vector()
volsd_int <- vector()

for (i in (2:length(int)-1)) {
  prvol_int[[i]] <- pr[which(int[i]<=pr[,1]&pr[,1]<int[i+1]),]
  vol_int[i] <-mean(pr[which(int[i]<=pr[,1]&pr[,1]<int[i+1]),2])
  volsd_int[i] <-sd(pr[which(int[i]<=pr[,1]&pr[,1]<int[i+1]),2])
  pr_int[i] <- mean(pr[which(int[i]<=pr[,1]&pr[,1]<int[i+1]),1])
  no_int[i] <- length(pr[which(int[i]<=pr[,1]&pr[,1]<int[i+1]),1])
  pct_int[i] <- no_int[i]/length(pr[,1])
}

prtable <- cbind(round(pr_int,2),round(vol_int,2),volsd_int,no_int,round(pct_int*100,2))
colnames(prtable) <- c("Average price","Average quantitiy","Sd quantity","Number of prices","Percentage of total prices")

# create scenarios

gamma_t <- function(t) h/sqrt(2^(1-t)*(sum((2*seq(1,2^(t-1))-1)^2)))
gammat_t <- function(t) c((2*sort(seq(1,2^(t-1)),decreasing=T)-1)
                        *gamma_t(t),-(2*seq(1,2^(t-1))-1)*gamma_t(t))
alpha_t <- function(t) if(t==0) D else D*(1+rho)^t+gammat_t(t)

rho <- 0.06
e = 0.2

sink(file="gamsscen.txt")

i=0
cat("Parameter alpha_n",i,"(s)   /\n",sep="")
for (j in 1:6){
   mu <- prtable[j,2]
   h <- prtable[j,3] 
   p <- prtable[j,1]
   beta <- round(mu/p*e)
  
   alpha_0 <- mu + beta*p
   D <- alpha_0

cat("    State",j,"   ",alpha_0/beta,"\n",sep="")
}
cat("/;\n")

for (i in 1:2	){
cat("Parameter alpha_n",i,"(s)   /\n",sep="")
for (j in 1:6){
   mu <- prtable[j,2]
   h <- prtable[j,3] 
   p <- prtable[j,1]
   beta <- round(mu/p*e)
  
   alpha_0 <- mu + beta*p
   D <- alpha_0

cat("    State",j,"   ",round(alpha_t(1)[i]/beta,4),"\n",sep="")
}
cat("/;\n")
}

for (i in 3:6	){
cat("Parameter alpha_n",i,"(s)   /\n",sep="")
for (j in 1:6){
   mu <- prtable[j,2]
   h <- prtable[j,3] 
   p <- prtable[j,1]
   beta <- round(mu/p*e)
  
   alpha_0 <- mu + beta*p
   D <- alpha_0

cat("    State",j,"   ",round(alpha_t(2)[i-2]/beta,4),"\n",sep="")
}
cat("/;\n")
}

for (i in 7:14	){
cat("Parameter alpha_n",i,"(s)   /\n",sep="")
for (j in 1:6){
   mu <- prtable[j,2]
   h <- prtable[j,3] 
   p <- prtable[j,1]
   beta <- round(mu/p*e)
  
   alpha_0 <- mu + beta*p
   D <- alpha_0

cat("    State",j,"   ",round(alpha_t(3)[i-6]/beta,4),"\n",sep="")
}
cat("/;\n")
}

for (i in 15:30	){
cat("Parameter alpha_n",i,"(s)   /\n",sep="")
for (j in 1:6){
   mu <- prtable[j,2]
   h <- prtable[j,3] 
   p <- prtable[j,1]
   beta <- round(mu/p*e)
  
   alpha_0 <- mu + beta*p
   D <- alpha_0

cat("    State",j,"   ",round(alpha_t(4)[i-14]/beta,4),"\n",sep="")
}
cat("/;\n")
}
for (i in 31:62	){
cat("Parameter alpha_n",i,"(s)   /\n",sep="")
for (j in 1:6){
   mu <- prtable[j,2]
   h <- prtable[j,3] 
   p <- prtable[j,1]
   beta <- round(mu/p*e)
  
   alpha_0 <- mu + beta*p
   D <- alpha_0

cat("    State",j,"   ",round(alpha_t(5)[i-30]/beta,4),"\n",sep="")
}
cat("/;\n")
}


cat("Parameter beta(s)","   /\n",sep="")
for (j in 1:6){
   mu <- prtable[j,2]
   h <- prtable[j,3] 
   p <- prtable[j,1]
   beta <- round(mu/p*e)
  
   alpha_0 <- mu + beta*p
   D <- alpha_0

cat("    State",j,"   ",round(1/beta,4),"\n",sep="")
}
cat("/;\n")

cat("Parameter pm(s)","   /\n",sep="")
for (j in 1:6){
   mu <- prtable[j,2]
   h <- prtable[j,3] 
   p <- prtable[j,1]
   beta <- round(mu/p*e)
  
   alpha_0 <- mu + beta*p
   D <- alpha_0

cat("    State",j,"   ",pct_int[j],"\n",sep="")
}
cat("/;\n")

sink()

