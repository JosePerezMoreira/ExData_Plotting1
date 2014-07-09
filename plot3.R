source("LoadingData.R")

MyLocale <- Sys.getlocale("LC_TIME")
Sys.setlocale("LC_TIME", "English_United States.1252")

png(filename = "plot3.png", width = 480, height = 480, units = "px")
with(data, plot(DateTime, Sub_metering_1 , type = "l", xlab = "", ylab = "Energy sub metering"))
with(data,lines(DateTime, Sub_metering_2, type = "l", col = "red"))
with(data,lines(DateTime, Sub_metering_3, type = "l", col = "blue"))
legend("topright",lty = 1 , col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

Sys.setlocale("LC_TIME", MyLocale)
