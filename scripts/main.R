
if (!file.exists('household_power_consumption.txt')) {
  download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip', destfile='data.zip')
  unzip('data.zip')
}

data<-read.table("household_power_consumption.txt",na.strings="?",header=TRUE,sep=";")
data$Date<-as.Date(data$Date,format="%d/%m/%Y")
data<-subset(data,(Date==as.Date("2007-02-01"))|(Date==as.Date("2007-02-02")),)
data[,3:9]<-sapply(data[, 3:9], as.character)
data[,3:9]<-sapply(data[, 3:9], as.numeric)
data$Date.Time<-strptime(paste(data$Date, data$Time),"%Y-%m-%d %H:%M:%S")
Sys.setlocale("LC_TIME", "English")
