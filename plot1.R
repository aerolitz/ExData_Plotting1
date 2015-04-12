## Loading Data
source("~/R/exdata-013/project1/main.R")

## Plot 1 - Global Active Power
dados <- as.numeric(periodo$Global_active_power)

## Ploting data
png("plot1.png", width=480, height=480)
hist(dados, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()