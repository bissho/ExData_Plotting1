#This code generates first png of assigment course "Exploratory Data Analysis"
data=read.csv("../household_power_consumption.txt",header=TRUE, sep=";",)
data=data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
png(file="plot1.png",width=480, height=480)
hist(as.numeric(levels(data$Global_active_power)[data$Global_active_power]), col="red", xlab="Global Active Power (kilowatts)",main="Global Active Power",ylim=c(0,1200))
dev.off()