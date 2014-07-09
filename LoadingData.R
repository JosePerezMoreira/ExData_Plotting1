download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","exdata-data-household_power_consumption.zip",mode="wb")
unzip("exdata-data-household_power_consumption.zip")

data <- read.table("household_power_consumption.txt",sep=";",
                   na.strings="?",stringsAsFactors=FALSE,header=FALSE,
                   skip=66637,n=2880)

mycolnames <- read.table("household_power_consumption.txt",sep=";",
                         na.strings="?",stringsAsFactors=FALSE,header=FALSE,
                         n=1)

colnames(data) <- as.character(mycolnames)

data$Date <- as.Date(data$Date, "%d/%m/%Y")

data$DateTime <- strptime(paste(data$Date,data$Time),"%Y-%m-%d %H:%M:%S")
