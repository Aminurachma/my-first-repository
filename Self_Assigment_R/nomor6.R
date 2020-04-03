library(dplyr)
library(lubridate)
dataset <- read.csv('D:/TugasDM/AssessmentR_Dataset_superstore_simple.csv')
ini <- data.frame(year=c(substr(coba[order(as.Date(coba$order_date, format="%d/%m/%Y")),],1,4)))
new_dataset <- cbind(dataset, ini) 

library(gapminder)
plottt <- new_dataset %>% select(profit,sales,year) %>% filter(year %in% c("2014","2015"))
attach(plottt)
mycol <- c(thn2014 = "dodgerblue2", thn2015 = "green")
plot(sales~profit, 
     col = mycol[continent],
     main= "Sales Vs Profit 2014-2015", 
     xlab = "Sales", ylab="Profit", 
     pch = 1, 
     frame = FALSE 
)
