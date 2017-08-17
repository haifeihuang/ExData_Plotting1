setwd("~/datasciencecoursera")
if(!file.exists(("./data"))){dir.create("./data")}
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url,destfile = "./data/dataset.zip",method = "curl")
unzip(zipfile = "./data/dataset.zip",exdir = "./data")
data <- read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")
time <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
setTime <- strptime(paste(time$Date,time$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(setTime,time)
