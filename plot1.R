# Plot1 on Household power consumption

dat<-read.table("household_power_consumption.txt", header=T, sep=";")
datSub<-dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
datSub$Global_active_power<-as.numeric(as.character(datSub$Global_active_power))
png("plot1.png",width = 480, height = 480)
hist(datSub$Global_active_power, col="red", main="Global Active Power", xlab="Gobal Active Power (kilowatts)")
dev.off()
