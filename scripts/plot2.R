source('scripts/main.R')
png(filename='plots/plot2.png')
plot(data$Date.Time, data$Global_active_power,ylab="Global Active Power (kilowatts)", xlab="", type="l")
dev.off()
