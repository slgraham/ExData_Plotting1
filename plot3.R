png(filename = "./ExData_Plotting1/plot3.png", width = 480, height = 480)

with(data, plot(Time, Sub_metering_1, type = "n", xlab = "", 
     ylab = "Energy sub metering"))
lines(data$Time, data$Sub_metering_1, type = "l", col = "black")
lines(data$Time, data$Sub_metering_2, type = "l", col = "red")
lines(data$Time, data$Sub_metering_3, type = "l", col = "blue")
legend(x = "topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"),
       lty = c(1,1,1),
       pch = NA)

dev.off()
