ds<-read.table('/Users/dnes/Downloads/household_power_consumption.txt', header=TRUE, sep=";", stringsAsFactors=FALSE, na.strings= "?")
subds<- subset(ds, (ds$Date == "1/2/2007" | ds$Date== "2/2/2007"))
subds$Date <- as.Date(subds$Date, format = "%d/%m/%Y")
png("plot1.png", width=480, height=480)
hist(subds$Global_active_power, main="Global Active Power",col='red', xlab="Global Active Power(kw)")
dev.off()