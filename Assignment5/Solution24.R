df <- read.csv("your_file.csv", 
               na.strings = c("", "NA", "N/A", "NULL", "-", "."), 
               stringsAsFactors = FALSE)
head(df)
summary(df)        
colSums(is.na(df)) 