## WARNING: weekdays may be in other language rather than english

## Loading Data
source("~/R/exdata-013/project1/main.R")

## Plot 3 - Energy Sub metering
quebra <- strptime(paste(periodo$Date, periodo$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
energia1 <- as.numeric(periodo$Sub_metering_1)
energia2 <- as.numeric(periodo$Sub_metering_2)
energia3 <- as.numeric(periodo$Sub_metering_3)

## Ploting data
png("plot3.png", width=480, height=480)
plot(quebra, energia1, type="l", xlab="", ylab="Energy sub metering", col="black")
lines(quebra, energia2, type="l", col="red")
lines(quebra, energia3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2.5, col=c("black", "red", "blue"))
dev.off()