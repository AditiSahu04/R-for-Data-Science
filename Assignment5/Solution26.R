library(ggplot2)
set.seed(42)
df <- data.frame(
  x = 1:10,
  y = (1:10)^1.2 + rnorm(10, 0, 5),  
  category = rep(c("A", "B"), each = 5)
)
p <- ggplot(df, aes(x = x, y = y, color = category)) 
  geom_point(aes(shape = category), size = 4, show.legend = TRUE) 
  geom_line(aes(linetype = category), size = 1.2) 
  geom_hline(yintercept = 50, color = "red", linetype = "dashed", size = 1) 
  geom_text(aes(label = round(y, 1)), vjust = -0.5, size = 3) 
  scale_color_manual(values = c("A" = "darkorange", "B" = "steelblue")) 
  scale_shape_manual(values = c("A" = 17, "B" = 19)) 
  scale_linetype_manual(values = c("A" = "solid", "B" = "dotted")) 
  theme_minimal() 
  theme(
    plot.title = element_text(hjust = 0.5, size = 16, face = "bold"),
    axis.title = element_text(size = 12),
    axis.text = element_text(size = 10),
    legend.position = "bottom",
    legend.title = element_text(size = 12),
    legend.text = element_text(size = 10)
  ) 
  labs(
    title = "Complex ggplot with Multiple Geoms and Custom Theme",
    x = "X Value",
    y = "Y Value",
    color = "Category",
    shape = "Category",
    linetype = "Category"
  )
print(p)
