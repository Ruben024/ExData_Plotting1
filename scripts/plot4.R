source('scripts/main.R')

png(filename='plots/plot4.png')

par(mfrow=c(2,2))
#top_left
plot(data$Date.Time,data$Global_active_power,xlab="",ylab="Global Active Power",type="l")
#top_right
plot(data$Date.Time, data$Voltage,ylab="Voltage", xlab="datetime", type="l")
#bottom_left
plot(data$Date.Time, data$Sub_metering_1,ylab="Energy sub metering", xlab="", type="l")
lines(data$Date.Time, data$Sub_metering_2, col="red")
lines(data$Date.Time, data$Sub_metering_3, col="blue")
#bottom_right
plot(data$Date.Time, data$Global_reactive_power, ylab="Global_reactive_power", xlab="datetime", type="l")


dev.off()
