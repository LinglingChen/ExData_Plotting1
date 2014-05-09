# Plot3 on Household power consumption

dat<-read.table("household_power_consumption.txt", header=T, sep=";")
datSub<-dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
date.time <- strptime(paste(datSub$Date, datSub$Time), format='%d/%m/%Y %H:%M:%S')
datSub$Sub_metering_1<-as.numeric(as.character(datSub$Sub_metering_1))
datSub$Sub_metering_2<-as.numeric(as.character(datSub$Sub_metering_2))
png("plot3.png",width = 480, height = 480)
plot(date.time,datSub$Sub_metering_1,type="l",xlab="",ylab='Energy sub metering')
lines(date.time,datSub$Sub_metering_2,type="l",xlab="", col="red")
lines(date.time, datSub$Sub_metering_3,col="blue")
legend("topright",lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()