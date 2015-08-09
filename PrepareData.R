HPC<-read.table("Datasets/household_power_consumption.txt", sep=";",na.strings="?",header=T )
HPC$Date<-as.Date(HPC$Date,"%d/%m/%Y")

data <- subset(HPC,HPC$Date %in% as.Date(c("2007-02-01","2007-02-02")))
data$date_time <- as.POSIXct(paste(data$Date,data$Time))
