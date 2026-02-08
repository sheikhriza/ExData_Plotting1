# Read and subset data
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE)
subData <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]

# Create Plot 1
png("plot1.png", width=480, height=480)
hist(as.numeric(subData$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
