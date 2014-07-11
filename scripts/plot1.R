#plot 1
source('scripts/main.R')
png(filename='plots/plot1.png')
hist(data$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
dev.off()
