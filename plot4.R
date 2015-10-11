png(filename = "./ExData_Plotting1/plot4.png", width = 480, height = 480)

par(mfcol = c(2,2)) ## set up canvas for 4 plots

## top left plot
with(data, plot(Time, Global_active_power, pch = NA, xlab = "", 
                ylab = "Global Active Power"))
lines(data$Time, data$Global_active_power, type = "l")

## bottom left plot
with(data, plot(Time, Sub_metering_1, type = "n", xlab = "", 
                ylab = "Energy sub metering"))
lines(data$Time, data$Sub_metering_1, type = "l", col = "black")
lines(data$Time, data$Sub_metering_2, type = "l", col = "red")
lines(data$Time, data$Sub_metering_3, type = "l", col = "blue")
legend(x = "topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"),
       lty = c(1,1,1),
       bty = "n",
       pch = NA)

## top right plot
with(data, plot(Time, Voltage, pch = NA, type = "n", 
                ylab = "Voltage", xlab = "datetime"))
lines(data$Time, data$Voltage, type = "l")


## bottom right plot
with(data, plot(Time, Global_reactive_power, pch = NA, type = "n", 
                ylab = "Global_reactive_power", xlab = "datetime"))
lines(data$Time, data$Global_reactive_power, type = "l")

dev.off()