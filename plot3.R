# Plot3 on Household power consumption

source("plot2.R")
datSub$Sub_metering_1<-as.numeric(as.character(datSub$Sub_metering_1))
datSub$Sub_metering_2<-as.numeric(as.character(datSub$Sub_metering_2))
datSub$Sub_metering_3<-as.numeric(as.character(datSub$Sub_metering_3))
plot3<-function() {plot(date.time,datSub$Sub_metering_1,type="l",xlab="",ylab='Energy sub metering')
lines(date.time,datSub$Sub_metering_2,type="l",xlab="", col="red")
lines(date.time, datSub$Sub_metering_3,col="blue")
legend("topright",lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))}
png("plot3.png",width = 480, height = 480)
plot3()
dev.off()