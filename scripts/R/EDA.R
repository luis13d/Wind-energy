# Wind power
#Team Resilient Saturdaya AI
#Climate Crisis Hackathon 2021

#packages ====
    library(here) #path
    library(readr) #read cvs
    library(readxl) #read xlsx
    library(tidyverse) #graphs, manipulating data
    library(lubridate) #dates


#path ====
    rout <- here("processed")
    files=dir(here(rout),pattern="_full")



#import data ====
    
        set1<- read_csv(here("processed",files[1])) #Set1
        set2<- read_csv(here("processed",files[2])) #Set2
        set3<- read_csv(here("processed",files[3])) #Set3

#Clean data ====
        set1$windPower[set1$windPower<30]
        set2$windPower[set2$windPower<90]
        set2$windPower[(!is.na(set2$windPower))&(set2$windPower==0)] <- NA
        

#summary ====
        summary(set1)
        summary(set2)
        summary(set3)
        
#Comparing Wind Speed ====        
        boxplot(set1$'windSpeed',set1$'WSF_int',set1$'windSpeed_5min',names=c("Measurement","Forecast","Linear adjust"),ylab="Wind speed",xlab="Datasets",col=c("red","blue","cyan"),main="Farm A")
        boxplot(set2$'windSpeed',set2$'WSF_int',set2$'windSpeed_5min',names=c("Measurement","Forecast","Linear adjust"),ylab="Wind speed",xlab="Datasets",col=c("red","blue","cyan"),main="Farm B")
        boxplot(set3$'WSF_int',set3$'windSpeed_5min',names=c("Forecast","Linear adjust"),ylab="Wind speed",xlab="Datasets",col=c("blue","cyan"),main="Farm B forecast")
        
#Comparing Wind Power between A and B ====
        boxplot(set1$windPower,set2$windPower,names=c("Farm A","Farm B"),ylab="Wind Power",xlab="measurements",col=c("green","yellow"),main="Wind Power")

#Comparing availableMW between A and B ====
        boxplot(set1$availableMW,set2$availableMW,names=c("Farm A","Farm B"),ylab="Available",xlab="measurements",col=c("green","yellow"),main="AvailableMW")
        
#Comparing forecast between A and B ====        
        boxplot(set1$WSF_int,set2$WSF_int,names=c("Farm A","Farm B"),ylab="Wind Speed",xlab="forecast",col=c("green","yellow"),main="Wind Speed forecast")

        
#Wind rose ====
        
        
#relation variables ====
        
        ggplot(set1, aes(windSpeed, windPower)) + 
            geom_line()
            labs(
                x = "Wind speed", 
                y = "Wind power",
                title = "Challange wind-energy (farm A)",
                subtitle = "Team: Resilient Saturdays AI"
            )
        
            ggplot(set2, aes(windSpeed, windPower)) + 
                geom_line()
            labs(
                x = "Wind speed", 
                y = "Wind power",
                title = "Challange wind-energy (farm B)",
                subtitle = "Team: Resilient Saturdays AI"
            )
            
            
            
    