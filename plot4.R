source("LoadingData.R")

MyLocale <- Sys.getlocale("LC_TIME")
Sys.setlocale("LC_TIME", "English_United States.1252")

png(filename = "plot4.png", width = 480, height = 480, units = "px")

par(mfrow = c(2, 2))

with(data, plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power"))
with(data, plot(DateTime, Voltage, type = "l", xlab = "datetime", ylab = "Voltage"))

with(data, plot(DateTime, Sub_metering_1 , type = "l", xlab = "", ylab = "Energy sub metering"))
with(data,lines(DateTime, Sub_metering_2, type = "l", col = "red"))
with(data,lines(DateTime, Sub_metering_3, type = "l", col = "blue"))
legend("topright",lty = 1, col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),bty="n")

with(data, plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power"))

par(mfrow = c(1, 1))

dev.off()

Sys.setlocale("LC_TIME", MyLocale)
