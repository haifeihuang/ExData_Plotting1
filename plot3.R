source('ExData_Plotting1.R')

png(filename='plot3.png', width=480, height=480, units='px')

#Generating Plot 3
plot(finalData$setTime,finalData$Sub_metering_1,type="l",col="black",xlab="",ylab="Energy sub metering")
lines(finalData$setTime,finalData$Sub_metering_2,type="l",col="red")
lines(finalData$setTime,finalData$Sub_metering_3,type="l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty = "solid")


dev.off()