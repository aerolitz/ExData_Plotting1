## WARNING: weekdays may be in other language rather than english

## Loading Data
source("~/R/exdata-013/project1/main.R")

## Plot 4 - Global Reactive Power
dados <- as.numeric(periodo$Global_active_power)
dados2 <- as.numeric(periodo$Global_reactive_power)
quebra <- strptime(paste(periodo$Date, periodo$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
energia1 <- as.numeric(periodo$Sub_metering_1)
energia2 <- as.numeric(periodo$Sub_metering_2)
energia3 <- as.numeric(periodo$Sub_metering_3)
voltagem <- as.numeric(periodo$Voltage)

## Ploting data
png("plot4.png", width=480, height=480)
## Breaking into a 2x2 matrix plots
par(mfrow = c(2, 2)) 
## First plot (plot 2)
plot(quebra, dados, type="l", xlab="", ylab="Global Active Power")
## Second plot (new one - voltage)
plot(quebra, voltagem, type="l", xlab="datetime", ylab="Voltage")
## Third plot (plot 3, but the legends without borders)
plot(quebra, energia1, type="l", xlab="", ylab="Energy sub metering", col="black")
lines(quebra, energia2, type="l", col="red")
lines(quebra, energia3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2.5, col=c("black", "red", "blue"), bty="n")
## Last plot (new one - global reactive power)
plot(quebra, dados2, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()