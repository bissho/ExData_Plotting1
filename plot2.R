#This code generates second png of assigment course "Exploratory Data Analysis"
data=read.csv("../household_power_consumption.txt",header=TRUE, sep=";",)
data=data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
strDates=mapply(paste,data$Date,data$Time)
dates=strptime(strDates,format="%d/%m/%Y %H:%M:%S")
png(file="plot2.png",width=480, height=480)
plot(dates,as.numeric(levels(data$Global_active_power)[data$Global_active_power]),xlab="",ylab="Global Active Power (kilowatts)",type="n")
lines(dates,as.numeric(levels(data$Global_active_power)[data$Global_active_power]))
dev.off()