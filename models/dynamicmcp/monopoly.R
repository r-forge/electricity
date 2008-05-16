alpha = 304
beta = 1/358
c = 7.6

demand <- function(q) alpha - beta*q
mr <- function(q) alpha - 2*beta*q
mc <- function(q) c
q_opt <- (alpha-c)/(2*beta)

qseq <- 1:100000

plot(qseq,demand(qseq),type="l")
lines(qseq,mr(qseq))
lines(qseq,rep(c,length(qseq)))
abline(v=q_opt,col="grey")
abline(h=demand(q_opt),col="grey")
points(q_opt,demand(q_opt),col="red")

q_oli <- (1/3)*((alpha-c)/beta)

points(2*q_oli,demand(2*q_oli),col="blue")

q_pc <- (alpha-c)/beta
points(q_pc,demand(q_pc),col="green")

# price cap

pc = 30

q = 1:100000

plot(demand(q)*q-c*q,type="l")

pcs = c(47,48,49,50)
for (i in 1:length(pcs)) {
	pc = pcs[i]
lines(q,apply(cbind(demand(q),rep(pc,length(1))),1,min)*q-c*q,lty=2,lwd=2)
}

points(q_opt,demand(q_opt)*q_opt-c*q_opt,col="red",lwd="2")






