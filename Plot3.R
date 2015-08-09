
png(filename= "plot3.png", width = 480, height = 480)
with(data,plot(datetime,Sub_metering_1, type="n", xlab = "", ylab = "Energy Sub Metering"))
with(data,points(datetime,Sub_metering_1,type="l"))
with(data,points(datetime,Sub_metering_2,type="l", col = "Red"))
with(data,points(datetime,Sub_metering_3,type="l", col = "Blue"))
legend("topright", pch = "_",col = c("black","Red","Blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()