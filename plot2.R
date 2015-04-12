## WARNING: weekdays may be in other language rather than english

## Loading Data
source("~/R/exdata-013/project1/main.R")

## Plot 2 - Global Active Power (kilowatts)
dados <- as.numeric(periodo$Global_active_power)
quebra <- strptime(paste(periodo$Date, periodo$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

## Ploting data
png("plot2.png", width=480, height=480)
plot(quebra, dados, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()