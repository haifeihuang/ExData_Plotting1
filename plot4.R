source('ExData_Plotting1.R')

png(filename='plot4.png', width=480, height=480, units='px')

par(mfrow=c(2,2))
plot(finalData$setTime,finalData$Global_active_power,type="l",col="green",xlab="",ylab="Global Active Power")

plot(finalData$setTime,finalData$Voltage,type="l",col="orange",xlab="datetime",ylab="Voltage")

plot(finalData$setTime,finalData$Sub_metering_1,type="l",col="black",xlab="",ylab="Energy sub metering")
lines(finalData$setTime,finalData$Sub_metering_2,type="l",col="red")
lines(finalData$setTime,finalData$Sub_metering_3,type="l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty = "solid")

plot(finalData$setTime,finalData$Global_reactive_power,type="l",col="blue",xlab="datetime")

dev.off()