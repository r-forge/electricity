
for (i in seq(7,14,1)){
print(paste("profit_n",i,"(i,j) .. -0.125*delta2*(alpha_n",i," - beta*sum((l,m),q_n",i,"(l,m)) - beta*sum(m,q_n",i,"(i,m)) - c(j)) + lambda_n",i,"(i,j) =g= 0;",sep=""))
}

for (i in seq(15,30,1)){
print(paste("profit_n",i,"(i,j) .. -0.0625*delta2*(alpha_n",i," - beta*sum((l,m),q_n",i,"(l,m)) - beta*sum(m,q_n",i,"(i,m)) - c(j)) + lambda_n",i,"(i,j) =g= 0;",sep=""))
}

for (i in seq(31,62,1)){
print(paste("profit_n",i,"(i,j) .. -0.03125*delta2*(alpha_n",i," - beta*sum((l,m),q_n",i,"(l,m)) - beta*sum(m,q_n",i,"(i,m)) - c(j)) + lambda_n",i,"(i,j) =g= 0;",sep=""))
}



for (i in seq(7,62,1)){
print(paste("capacity_n",i,"(i,j) .. -q_n",i,"(i,j) + K_n",i,"(i,j) =g= 0;",sep=""))
}

for (i in seq(7,30,1)){
print(paste("state2_n",i,"(i,j) .. -lambda_n",i,"(i,j) + phi_n",i,"(i,j) =g= 0; ",sep=""))
}

for (i in seq(31,62,1)){                                                                    
print(paste("state2_n",i,"(i,j) .. -lambda_n",i,"(i,j) + phi_n",i,"(i,j) -0.03125*delta2*F(j)*nu =g= 0; ",sep="")) 
} 


nf <- matrix(15:30,ncol=2,byrow=T)

for (i in seq(7,14,1)){
print(paste("state3_n",i,"(i,j) .. 0.125*delta3*F(j) - phi_n",nf[i-6,1],"(i,j) - phi_n",nf[i-6,2],"(i,j) =g= 0;",sep=""))
}

nf <- matrix(31:62,ncol=2,byrow=T)

for (i in seq(15,30,1)){
print(paste("state3_n",i,"(i,j) .. 0.0625*delta4*F(j) - phi_n",nf[i-14,1],"(i,j) - phi_n",nf[i-14,2],"(i,j) =g= 0;",sep=""))
}



vg <-  matrix(t(matrix(c(rep(3:6),rep(3:6)),byrow=F,ncol=2)),ncol=1,byrow=F)

for (i in seq(7,14,1)){
print(paste("state_n",i,"(i,j) .. K_n",i,"(i,j) - K_n",vg[i-6],"(i,j) - In_n",vg[i-6],"(i,j) =e= 0;",sep=""))
}

vg <-  matrix(t(matrix(c(rep(7:14),rep(7:14)),byrow=F,ncol=2)),ncol=1,byrow=F)

for (i in seq(15,30,1)){
print(paste("state_n",i,"(i,j) .. K_n",i,"(i,j) - K_n",vg[i-14],"(i,j) - In_n",vg[i-14],"(i,j) =e= 0;",sep=""))
}

vg <-  matrix(t(matrix(c(rep(15:30),rep(15:30)),byrow=F,ncol=2)),ncol=1,byrow=F)

for (i in seq(31,62,1)){
print(paste("state_n",i,"(i,j) .. K_n",i,"(i,j) - K_n",vg[i-14],"(i,j) - In_n",vg[i-14],"(i,j) =e= 0;",sep=""))
}
                                                                                      