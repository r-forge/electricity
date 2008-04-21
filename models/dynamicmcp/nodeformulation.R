
for (i in seq(7,14,1)){
print(paste("profit_n",i,"(i,j) .. -0.125*delta2*(alpha_n",i," - beta*sum((l,m),q_n",i,",m)) - c(j)) + lambda_n",i,"(i,j) =g= 0;",sep=""))
}

for (i in seq(15,30,1)){
print(paste("profit_n",i,"(i,j) .. -0.0625*delta2*(alpha_n",i," - beta*sum((l,m),q_n",i,",m)) - c(j)) + lambda_n",i,"(i,j) =g= 0;",sep=""))
}

for (i in seq(31,62,1)){
print(paste("profit_n",i,"(i,j) .. -0.03125*delta2*(alpha_n",i," - beta*sum((l,m),q_n",i,",m)) - c(j)) + lambda_n",i,"(i,j) =g= 0;",sep=""))
}


