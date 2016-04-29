dataFile <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetDataFile <- dataFile[dataFile$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subSetDataFile$Global_active_power)
datetime <- strptime(paste(subSetDataFile$Date, subSetDataFile$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()