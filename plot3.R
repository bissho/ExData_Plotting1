#This code generates 3 png of assigment course "Exploratory Data Analysis"
data=read.csv("../household_power_consumption.txt",header=TRUE, sep=";",)
data=data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
strDates=mapply(paste,data$Date,data$Time)
dates=strptime(strDates,format="%d/%m/%Y %H:%M:%S")
png(file="plot3.png",width=480, height=480)
plot(dates,as.numeric(levels(data$Sub_metering_1)[data$Sub_metering_1]),xlab="",ylab="Energy sub metering",type="n")
lines(dates,as.numeric(levels(data$Sub_metering_1)[data$Sub_metering_1]),col="gray")
lines(dates,as.numeric(levels(data$Sub_metering_2)[data$Sub_metering_2]),col="red")
lines(dates,data$Sub_metering_3,col="blue")
legend("topright",col=c("gray","green","red"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1))
dev.off()