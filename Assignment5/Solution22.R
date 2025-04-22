library(ggplot2)
df <- data.frame(
  x = 1:10,
  y = c(5, 9, 7, 10, 12, 15, 14, 13, 17, 18)
)
mean_y <- mean(df$y)
p <- ggplot(df, aes(x = x, y = y)) 
  geom_point(color = "blue", size = 3)                
  geom_line(color = "steelblue", size = 1)            
  geom_hline(yintercept = mean_y,                       
             color = "red", 
             linetype = "dashed", 
             size = 1) 
  labs(title = "Combined geom_point, geom_line, and geom_hline",
       subtitle = paste("Mean Y =", round(mean_y, 2)),
       x = "X Value",
       y = "Y Value") 
print(p)
