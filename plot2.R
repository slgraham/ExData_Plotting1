png(filename = "./ExData_Plotting1/plot2.png", width = 480, height = 480)

with(data, plot(Time, Global_active_power, pch = NA, type = "n", 
                  ylab = "Global Active Power (kilowatts)"))
lines(data$Time, data$Global_active_power, type = "l")

dev.off()