data <- read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors = FALSE)
subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]
globalactivepower <- as.numeric(subsetdata$Global_active_power)
png("plot1.png",width=480,height=480)
#to see in r studio plot sidedev.cur()
hist(globalactivepower,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
