setwd("~/datasciencecoursera")
if(!file.exists(("./data"))){dir.create("./data")}
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url,destfile = "./data/dataset.zip",method = "curl")
unzip(zipfile = "./data/dataset.zip",exdir = "./data")
data <- read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")
time <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
setTime <- strptime(paste(time$Date,time$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(setTime,time)

#Generating Plot 1
hist(finalData$Global_active_power, col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")

#Generating Plot 2
plot(finalData$setTime,finalData$Global_active_power,type="l",col="black",xlab="",ylab="Global Active Power (kilowatts)")

#Generating Plot 3
plot(finalData$setTime,finalData$Sub_metering_1,type="l",col="black",xlab="",ylab="Energy sub metering")
lines(finalData$setTime,finalData$Sub_metering_2,type="l",col="red")
lines(finalData$setTime,finalData$Sub_metering_3,type="l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty = "solid")

#Generating Plot 4
par(mfrow=c(2,2))
plot(finalData$setTime,finalData$Global_active_power,type="l",col="green",xlab="",ylab="Global Active Power")

plot(finalData$setTime,finalData$Voltage,type="l",col="orange",xlab="datetime",ylab="Voltage")

plot(finalData$setTime,finalData$Sub_metering_1,type="l",col="black",xlab="",ylab="Energy sub metering")
lines(finalData$setTime,finalData$Sub_metering_2,type="l",col="red")
lines(finalData$setTime,finalData$Sub_metering_3,type="l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty = "solid")

plot(finalData$setTime,finalData$Global_reactive_power,type="l",col="blue",xlab="datetime")