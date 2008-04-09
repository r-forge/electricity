t <- 0:5


F0 <- c(3500000, 1841000, 1074000, 971000, 460000, 1000000000, 1000000000)
names(F0) <- c("Hydro", "Nuclear", "BCoal", "HCoal", "Gas", "Oil", "Pump")

r <- 0.03

delta <- matrix(rep(1/(1+r)^t,length(F0)),ncol=length(t),byrow=T)

F <- matrix(rep(F0,length(t)),nrow=length(F0))*1/delta   

