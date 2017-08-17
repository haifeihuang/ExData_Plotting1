#Generating Plot 1

source('ExData_Plotting1.R')

finalData <- loadData()

png(filename='plot1.png', width=480, height=480, units='px')

hist(finalData$Global_active_power, col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()