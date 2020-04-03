library(dplyr)
dataset <- read.csv('D:/TugasDM/AssessmentR_Dataset_superstore_simple.csv')
dataset_3 <- dataset %>% filter(profit < 0) %>% summarise(Rugi = n())