library(ggplot2)
custom_theme <- theme(
  panel.background = element_rect(fill = "lightgray", color = "black"),
  plot.background = element_rect(fill = "white", color = NA),  # No border for plot background
  panel.grid.major = element_line(color = "gray", size = 0.5),  # Major grid lines
  panel.grid.minor = element_line(color = "lightgray", size = 0.25),  # Minor grid lines
  axis.line = element_line(color = "black", size = 0.8),
  axis.ticks = element_line(color = "black", size = 0.8),
  axis.text = element_text(family = "Arial", size = 12, color = "black"),
  axis.title = element_text(family = "Arial", size = 14, face = "bold", color = "black"),
  plot.title = element_text(family = "Arial", size = 16, face = "bold", color = "darkblue", hjust = 0.5),
  plot.subtitle = element_text(family = "Arial", size = 14, color = "darkgreen", hjust = 0.5),
    legend.background = element_rect(fill = "white", color = "black"),
  legend.title = element_text(family = "Arial", size = 12, face = "bold"),
  legend.text = element_text(family = "Arial", size = 10)
)
p <- ggplot(mtcars, aes(x = wt, y = mpg)) 
  geom_point(aes(color = factor(cyl)), size = 4) 
  labs(
    title = "Scatterplot of MPG vs. Weight",
    subtitle = "Data from mtcars dataset",
    x = "Weight (1000 lbs)",
    y = "Miles per Gallon",
    color = "Cylinder Count"
  ) 
  custom_theme
print(p)
