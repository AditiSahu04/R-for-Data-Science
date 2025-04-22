library(ggplot2)
df <- data.frame(
  x = rnorm(100),
  y = rnorm(100)
)
ggplot(df, aes(x = x, y = y)) 
  geom_point(color = "blue") 
  geom_hline(yintercept = 0, color = "red", linetype = "dashed", size = 1) 
  geom_vline(xintercept = 0, color = "green", linetype = "dotted", size = 1) 
  labs(title = "Scatter Plot with Reference Lines",
       x = "X Axis",
       y = "Y Axis") 
 
