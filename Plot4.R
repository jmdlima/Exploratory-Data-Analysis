
png(filename= "plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))
with(data,
     {  #1 
        plot(datetime,Global_active_power,type="l",xlab="", ylab= "Global Active Power")
        
        #2
        plot(datetime,Voltage, type = "l")
       
        
        {#3
        plot(datetime,Sub_metering_1, type="n", xlab = "", ylab = "Energy Sub Metering")
        points(datetime,Sub_metering_1,type="l")
        points(datetime,Sub_metering_2,type="l", col = "Red")
        points(datetime,Sub_metering_3,type="l", col = "Blue")
        legend("topright", pch = "_",bty="n",cex=.8,col = c("black","Red","Blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
     } 
     #4
     plot(datetime,Global_reactive_power, type = "l")
     
     
}) 

dev.off()
