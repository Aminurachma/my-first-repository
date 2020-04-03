library(dplyr)
dataset <- read.csv('D:/TugasDM/AssessmentR_Dataset_superstore_simple.csv')
dataset_1 <- dataset %>% select(customer_id,sales) %>% filter(sales == max(sales))
