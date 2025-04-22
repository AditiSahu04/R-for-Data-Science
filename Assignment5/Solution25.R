library(ggplot2)
library(dplyr)
df <- data.frame(
  x = 1:10,
  y = (1:10)^1.2
)
df <- df %>%
  mutate(group = case_when(
    y > 50 & x < 5  ~ "Group 1",    
    y <= 50 & x < 5 ~ "Group 2",    
    y > 50 & x >= 5 ~ "Group 3",    
    TRUE            ~ "Group 4"    
  ))
p <- ggplot(df, aes(x = x, y = y, color = group)) 
  geom_point(size = 3) 
  labs(title = "Categorized Points Based on Two Numeric Conditions",
       x = "X Value",
       y = "Y Value",
       color = "Category") 
print(p)

    