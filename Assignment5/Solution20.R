library(ggplot2)
df <- data.frame(
  x = 1:10,
  y = (1:10)^1.2
)
p <- ggplot(df, aes(x = x, y = y)) 
  geom_line(color = "steelblue", size = 1.2) 
  geom_point(color = "black", size = 3)
p <- p 
  geom_segment(aes(x = 2, y = 5, xend = 4, yend = 25),
               color = "red", linetype = "dashed", size = 1.2) 
  
  geom_segment(aes(x = 6, y = 50, xend = 9, yend = 80),
               color = "darkgreen", size = 1,
               arrow = arrow(length = unit(0.25, "cm"))) 
  
  labs(title = "Customized Line Segments with geom_segment()") 
print(p)


                 