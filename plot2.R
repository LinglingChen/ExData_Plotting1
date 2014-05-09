# Plot2 on Household power consumption

dat<-read.table("household_power_consumption.txt", header=T, sep=";")
datSub<-dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
datSub$Global_active_power<-as.numeric(as.character(datSub$Global_active_power))
date.time <- strptime(paste(datSub$Date, datSub$Time), format='%d/%m/%Y %H:%M:%S')
png(file="plot2.png",width=480,height=480)
plot(date.time,datSub$Global_active_power, type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()