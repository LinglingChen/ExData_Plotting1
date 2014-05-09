# Plot2 on Household power consumption

source("plot1.R")
date.time <- strptime(paste(datSub$Date, datSub$Time), format='%d/%m/%Y %H:%M:%S')
datSub$Global_active_power<-as.numeric(as.character(datSub$Global_active_power))
plot2<-function(x,y) {plot(x,y,type="l",xlab="",ylab="")}
png(file="plot2.png",width=480,height=480)
plot2(date.time,datSub$Global_active_power)
title(ylab='Global Active Power (kilowatts)')
dev.off()