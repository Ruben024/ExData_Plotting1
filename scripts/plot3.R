source('scripts/main.R')

png(filename='plots/plot3.png')

plot(data$Date.Time, data$Sub_metering_1,ylab="Energy sub metering", xlab="", type="l")
lines(data$Date.Time, data$Sub_metering_2, col="red")
lines(data$Date.Time, data$Sub_metering_3, col="blue")
legend("topright",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), 
       lty="solid")

dev.off()
