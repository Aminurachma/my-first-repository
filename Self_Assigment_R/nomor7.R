library(dplyr)
library(lubridate)
library(date)
dataset <- read.csv('D:/TugasDM/AssessmentR_Dataset_superstore_simple.csv')
ini <- data.frame(year=c(substr(as.Date(dataset$order_date, format="%Y"),1,4)))
new_dataset <- cbind(dataset, ini) 

cobay <- new_dataset %>% filter(year == "2015") %>% group_by(year, customer_id) %>% summarise(sum_sales=sum(sales))
ini_coba <- cobay %>% arrange(desc(sum_sales)) %>% head(10)
                                                                               

