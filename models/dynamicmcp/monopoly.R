alpha = 100
beta = 0.75
c = 3

demand <- function(q) alpha - beta*q
mr <- function(q) alpha - 2*beta*q
mc <- function(q) c
q_opt <- (alpha-c)/(2*beta)

qseq <- 1:150

plot(qseq,demand(qseq),type="l")
lines(qseq,mr(qseq))
lines(qseq,rep(c,length(qseq)))
abline(v=q_opt,col="grey")
abline(h=demand(q_opt),col="grey")
points(q_opt,demand(q_opt),col="red")









