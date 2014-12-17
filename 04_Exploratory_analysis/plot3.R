setwd("c:/users/sashap/dropbox/programming/r/00_Projects/04_Exploratory_analysis")

## Import only 2 dates (1/2/2007 and 2/2/2007) from the original file
library(sqldf)
dataALL <- "household_power_consumption.txt"
df <- file(dataALL)
data <- sqldf("select * from df where Date in ('1/2/2007','2/2/2007') ", file.format = list(header = TRUE, sep = ";"))
close(df)

## Change class for date and time vars
x <- paste(data$Date, data$Time)
data$Time <- strptime(x, "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, "%d/%m/%Y")

## Make and save a png graph
png('plot3.png')
plot(data$Time, data$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab ="")
lines(data$Time, data$Sub_metering_1)
lines(data$Time, data$Sub_metering_2, col = "red")
lines(data$Time, data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), lwd = c(2.5, 2.5, 2.5), col = c("black", "red", "blue"))
dev.off()