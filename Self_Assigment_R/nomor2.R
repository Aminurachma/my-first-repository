library(dplyr)
dataset <- read.csv('D:/TugasDM/AssessmentR_Dataset_superstore_simple.csv')
dataset_2 <- dataset %>% select(category, sub_category,profit) %>% filter(category == 'Office Supplies')