library(ggplot2)
df <- data.frame(
  x = 1:10,
  y = (1:10)^2
)
p <- ggplot(df, aes(x = x, y = y)) 
geom_point(color = "blue", size = 3) 
geom_line(color = "steelblue") +
  annotate("text", x = 5, y = 60, label = "Midpoint", color = "red", size = 5, fontface = "bold") +
  geom_segment(aes(x = 5, y = 60, xend = 5, yend = 25),
               arrow = arrow(length = unit(0.3, "cm")), 
               color = "red", linetype = "dashed") 
annotate("text", x = 9, y = 80, label = "High value", color = "darkgreen", size = 4) 
geom_segment(aes(x = 9, y = 80, xend = 10, yend = 100),
             arrow = arrow(length = unit(0.3, "cm")), 
             color = "darkgreen") 

theme_minimal() 
ggtitle("Annotated ggplot2 Example")
print(p)

  