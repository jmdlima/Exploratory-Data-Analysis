# Exploratory-Data-Analysis

###About
 project for the **Exploratory Data Analysis** course in Coursera's Data Science specialization track. 
The objective was to practice creating plots by reproducing a series of four plots, 
and also to practice using github by forking and cloning an existing repository.

##Sypnosis
The goal here was simply to examine how household energy usage varies over a 2-day period in February, 2007 
by reproducing a series of four plots. Due to specific image size requirements of the new plots, they will look slightly different than the originals. 

##Data
This project used data from the [UC Irvine Machine Learning Repository](http://archive.ics.uci.edu/ml/), a popular repository for machine learning datasets. 
The "Individual household electric power consumption Data Set" was used and made available on the course web site:

* [Electric power consumption Dataset (20Mb)](https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip)

* Description: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.

The following descriptions of the 9 variables in the dataset are taken
from the [UCI web site](https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption)

The following descriptions of the 9 variables in the dataset are taken from the UCI web site
Date: Date in format dd/mm/yyyy
Time: time in format hh:mm:ss
Global_active_power: household global minute-averaged active power (in kilowatt)
Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
Voltage: minute-averaged voltage (in volt)
Global_intensity: household global minute-averaged current intensity (in ampere)
Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

The data was first downloaded into the Working directory and loaded into R using the following script:

HPC<-read.table("Datasets/household_power_consumption.txt", sep=";",na.strings="?",header=T )
HPC$Date<-as.Date(HPC$Date,"%d/%m/%Y")

data <- subset(HPC,HPC$Date %in% as.Date(c("2007-02-01","2007-02-02")))
data$date_time <- as.POSIXct(paste(data$Date,data$Time))