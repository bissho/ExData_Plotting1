#This code generates 4 png of assigment course "Exploratory Data Analysis"
data=read.csv("../household_power_consumption.txt",header=TRUE, sep=";",)
data=data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
strDates=mapply(paste,data$Date,data$Time)
dates=strptime(strDates,format="%d/%m/%Y %H:%M:%S")

png(file="plot4.png",width=480, height=480)
par(mfrow=c(2,2),mar=c(4,4,1,1))

plot(dates,as.numeric(levels(data$Global_active_power)[data$Global_active_power]),xlab="",ylab="Global Active Power (kilowatts)",type="n")
lines(dates,as.numeric(levels(data$Global_active_power)[data$Global_active_power]))

plot(dates,as.numeric(levels(data$Voltage)[data$Voltage]),xlab="datetime",ylab="Voltage",type="n")
lines(dates,as.numeric(levels(data$Voltage)[data$Voltage]))

plot(dates,as.numeric(levels(data$Sub_metering_1)[data$Sub_metering_1]),xlab="",ylab="Energy sub metering",type="n")
lines(dates,as.numeric(levels(data$Sub_metering_1)[data$Sub_metering_1]),col="gray")
lines(dates,as.numeric(levels(data$Sub_metering_2)[data$Sub_metering_2]),col="red")
lines(dates,data$Sub_metering_3,col="blue")
legend("topright",col=c("gray","green","red"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1),bty="n",cex=1)

plot(dates,as.numeric(levels(data$Global_reactive_power)[data$Global_reactive_power]),xlab="datetime",ylab="Global_reactive_power",type="n")
lines(dates,as.numeric(levels(data$Global_reactive_power)[data$Global_reactive_power]))

dev.off()