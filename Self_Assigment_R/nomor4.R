library(dplyr)
dataset <- read.csv('D:/TugasDM/AssessmentR_Dataset_superstore_simple.csv')
dataset_4 <- dataset %>%  select(customer_id,sales) %>% filter(customer_id %in% c("JE-16165","KH-16510","AD-10180")) %>% group_by(customer_id) %>% summarise(total_sales=sum(sales)) %>% filter(total_sales == max(total_sales))