# Load and setup time
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE)
subData <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]
dateTime <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

# Create Plot 4
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(dateTime, subData$Global_active_power, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(dateTime, subData$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(dateTime, subData$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(dateTime, subData$Sub_metering_2, type="l", col="red")
lines(dateTime, subData$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"), bty="n")
plot(dateTime, subData$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()