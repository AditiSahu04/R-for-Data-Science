library(ggplot2)
df <- data.frame(
  x = rnorm(60),
  y = rnorm(60),
  category = rep(c("Type A", "Type B", "Type C"), each = 20)
)
custom_colors <- c("Type A" = "Red",  
                   "Type B" = "Blue",  
                   "Type C" = "Green")  
ggplot(df, aes(x = x, y = y, color = category)) 
  geom_point(size = 3) 
  scale_color_manual(values = custom_colors) 
  labs(title = "Scatter Plot with Custom Colors",
       x = "X Axis",
       y = "Y Axis",
       color = "Category") 
