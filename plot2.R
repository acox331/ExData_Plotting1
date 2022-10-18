setwd("C:/Users/alexa/Documents/ExData_Plotting1")

library("datasets")
library("dplyr")
library("tidyverse")

df <- "./Data/household_power_consumption.txt"
df2 <- read.table(df, header=T, sep=";", na.strings="?")

hh_energy <- df[df$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(hh_energy$Date, hh_energy$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(SetTime, hh_energy)

png("plot2.png", width = 480,  height = 480)

plot(hh_energy$SetTime, hh_energy$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")


dev.off()
