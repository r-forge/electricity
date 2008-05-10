# An Analysis of Capacity and Price Trajectories for the Ontario Electricity Market
# Using Dynamic Nash Equilibrium under Uncertainty
# Genc, T. S. & Sen, S.
# Energy Economics, 2008, 30, p. 173-191

# Scenario generation

t <- 3  # time periods

mu <- 18055 # average hourly load in MW
h <- 1089   # load volatility
p <- 48.2   # average hourly price in $
e <- 0.2    # assumed price elasticity of demand

beta <- round(mu/p*e)

# yearly growth rates of demand for the future
rho_e <- c(0.006, 0.009, 0.013)
rho <- rho_e[3] 

# demand curve in t=0

alpha_0 <- mu + beta*p
D <- alpha_0


# plot(p,Q(p,alpha_0,beta),type="l",ylim=c(0,25000))


gamma_t <- function(t) h/sqrt(2^(1-t)*(sum((2*seq(1,2^(t-1))-1)^2))) 
gammat_t <- function(t) c((2*sort(seq(1,2^(t-1)),decreasing=T)-1)*gamma_t(t),-(2*seq(1,2^(t-1))-1)*gamma_t(t))

alpha_t <- function(t) if(t==0) D else D*(1+rho)^t+gammat_t(t)

# write alpha_t in matrix

malpha_t<- matrix(nrow=2^t,ncol=t+1)

malpha_t[,t+1] <- alpha_t(t)
j <- 2^(t-2)+1
for (i in ((t-1):1)) {
  malpha_t[1:j,i+1] <- rep(max(alpha_t(i)),j)
  malpha_t[j:(j-1+length(alpha_t(i))),i+1] <- alpha_t(i)
  malpha_t[(j-1+length(alpha_t(i))):nrow(malpha_t),i+1] <- rep(min(alpha_t(i)),j)
  j <- j + 2^(i-2)
   }

malpha_t[,1] <- rep(alpha_t(0),length(alpha_t(t)))

# plot scenario tree for alphas
matplot(0:t,t(malpha_t),type="l",pch=1,lty=1,col=4,lwd=2,
        xlab = "t",
        ylab = expression(alpha[t]))
grid()

# plot inverse demand curves

p <- seq(0,350)
Q <- function(p,alpha,beta) alpha - beta*p


#j = 6
#plot(p,Q(p,alpha_0,beta),type="l",lwd=2,ylim=c(0,25000))
#for(i in 1:nrow(malpha_t)) {
  #for(j in 1:ncol(malpha_t)) {
    #print(as.numeric(malpha_t[i,j]))
    #lines(p,Q(p,as.numeric(malpha_t[i,j]),beta), col=2, lwd=2)
  #}
#}

par(mfrow=c(2,3))

for (j in 0:t) {
x <- Q(p,as.numeric(malpha_t[1,j+1]),beta)
y <- Q(p,as.numeric(malpha_t[nrow(malpha_t),j+1]),beta)
matplot(cbind(x,y),type="l",col=1,lty=1,lwd=2,ylim=c(0,25000),
        main=j,xlab = "p",ylab="Q(p)")
X = c(1:length(x),length(x):1)
Y = c(x,rev(y))
polygon(X,Y,col="lightblue",border=NA)
lines(Q(p,alpha_0,beta),lwd=2,lty=2,col=2)
}

#x = rnorm(30)
#y = x-0.5
#plot(x,type="l")
#lines(y)
#X = c(1:length(x),length(x):1)
#Y = c(x,rev(y))
#polygon(X,Y,col=2,border=NA)
