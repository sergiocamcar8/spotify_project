# This file consolidates all country data produced by data_extraction into a single file


library(tidyverse)

region_mapping <- read_csv("../Statistical Consulting/r_project/data/region_mapping")

## Eliminating duplicate 'Luxemburg' and keeping 'Luxembourg'
region_mapping <- region_mapping[-14,2:ncol(region_mapping)]

###### 
# Creating master data
master_data <- data.frame(read_csv("../Statistical Consulting/r_project/data/afghanistan"))


# Step1 load each individual file and map the region
for (i in 2:nrow(region_mapping)) {
  ctry <- region_mapping[i, 'country']
  pth <- paste0("../Statistical Consulting/r_project/data/",ctry)
  temp <- read_csv(pth)


# Step2 Bind to master_data
  master_data <- rbind(master_data, temp)

}

master_data$country <- ifelse(master_data$country == 'luxemburg', 'luxembourg', master_data$country)
# Step3 mapping region
master_data <- master_data %>% left_join(region_mapping)

master_data <- master_data[,2:ncol(master_data)]
# Step4 saving master_data
write.csv(master_data, "../Statistical Consulting/r_project/data/master_data", row.names = F)
