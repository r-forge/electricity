
#load("load.Rdata")
#load("eex.Rdata")

data(load)
data(eex)

# total electricty demand
totload <- load$Austria + load$Germany


#par(mfrow=c(2,1))


pdf(file="plots.pdf")

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



# plot EEX trading volumes
plot(c(t(eex$volumes)),type="l",col = "red",
	main = "Spot market trading volumes at EEX for 2006 (in MWh)",
	xlab = "Hours",
	ylab = "Load in MW")

# plot EEX prices
plot(c(t(eex$prices)),type="l",col = "red",
	main = "Spot market prices at EEX for 2006 (per MWh)",
	xlab = "Hours",
	ylab = "Price per MWh")


plot(c(t(totload)),c(t(eex$prices)),col = "blue",
main = "Electricity demand curve for 2006",
xlab = "Hourly load values (in MWh)",
ylab = "Spot market prices at EEX(per MWh)")


plot(c(t(eex$volumes)),c(t(eex$prices)),col = "blue",
main = "Electricity demand curve for 2006",
xlab = "EEX spot market trading volumes (in MWh)",
ylab = "Spot market prices at EEX(per MWh)")

dev.off()
