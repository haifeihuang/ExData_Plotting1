source('ExData_Plotting1.R')

png(filename='plot2.png', width=480, height=480, units='px')

#Generating Plot 2
plot(finalData$setTime,finalData$Global_active_power,type="l",col="black",xlab="",ylab="Global Active Power (kilowatts)")


dev.off()