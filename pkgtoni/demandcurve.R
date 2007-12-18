library("electricity")

data(load)
data(eex)

# total electricty demand
totload <- load$Austria + load$Germany




pdf(file="loadduration.pdf",width=10,height=9)
par(mfrow=c(2,1))

# plot total load values
plot(c(t(totload)),type="l", col = "blue",
	main = "Hourly load values for 2006 (in MWh)",
	xlab = "Hours",
	ylab = "Load in MW")
	

# plot total load values
plot(sort(c(t(totload)),decreasing=T,na.last=T), type="l",lwd=3,col = "green",
	main = "Load duration curve for 2006 (in MWh)",
	xlab = "Hours per year",
	ylab = "Load in MW")

dev.off()

pdf(file="eexpv.pdf",width=10,height=10)
par(mfrow=c(3,1))

# plot EEX trading volumes
plot(c(t(eex$volumes)),type="l",col = "blue",
	main = "Spot market trading volumes at EEX for 2006 (in MWh)",
	xlab = "Hours",
	ylab = "Load in MW")

# plot EEX prices
plot(c(t(eex$prices)),type="l",col = "red",
	main = "Spot market prices at EEX for 2006 (per MWh)",
	xlab = "Hours",
	ylab = "Price per MWh")

abline(h=100,col="blue",lty=2)

plot(c(t(eex$prices))[which(c(t(eex$prices))<100)],type="l",col = "red",
	main = "Spot market prices (<100) at EEX for 2006 (per MWh)",
	xlab = "Hours",
	ylab = "Price per MWh")

dev.off()

# electricity demand curve
#plot(c(t(totload)),c(t(eex$prices)),col = "blue",
#main = "Electricity demand curve for 2006",
#xlab = "Hourly load values (in MWh)",
#ylab = "Spot market prices at EEX(per MWh)")


#plot(c(t(eex$volumes)),c(t(eex$prices)),col = "blue",
#main = "Electricity demand curve for 2006",
#xlab = "EEX spot market trading volumes (in MWh)",
#ylab = "Spot market prices at EEX(per MWh)")



# plot electricity loads  and trading volumes against filtered prices
# prices > 100 and volumes > 15000 are removed

pdf(file="pricequant.pdf",width=10,height=6)
par(mfrow=c(1,2))

pv <- cbind(c(t(eex$volumes)),c(t(eex$prices)))
pvf <- pv[which(pv[,2]<100),]
pvf <- pvf[which(pvf[,1]<15000),]

plot(pvf,cex=0.5,col="blue",
     main = "Price-quantity relationship",
     xlab = "Spot market trading volumes (in MWh)",
     ylab = "Spot market prices at EEX")

pv <- cbind(c(t(totload)),c(t(eex$prices)))
pvf <- pv[which(pv[,2]<100),]

plot(pvf,cex=0.5,col="blue",
     main = "Price-quantity relationship",
     xlab = "Hourly load values (in MWh)",
     ylab = "Spot market prices at EEX")

#lm_pvf <- lm(pvf[,2]~pvf[,1])
#abline(lm_pvf,col="red",lwd=2)

dev.off()