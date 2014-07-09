source("LoadingData.R")

MyLocale <- Sys.getlocale("LC_TIME")
Sys.setlocale("LC_TIME", "English_United States.1252")

png(filename = "plot2.png", width = 480, height = 480, units = "px")
with(data, plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))
dev.off()

Sys.setlocale("LC_TIME", MyLocale)
