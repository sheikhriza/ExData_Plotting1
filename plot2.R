# Load and setup time
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE)
subData <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]
dateTime <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

# Create Plot 2
png("plot2.png", width=480, height=480)
plot(dateTime, as.numeric(subData$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()