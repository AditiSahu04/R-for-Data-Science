library(ggplot2)
library(dplyr)
df <- data.frame(
  x = 1:10,
  y = (1:10)^1.5 + rnorm(10, 0, 5)
)
df <- df %>%
  mutate(
    group = ifelse(y > 50, "High", "Low"),      # Condition: y > 50 for High, else Low
    shape_type = ifelse(x %% 2 == 0, "Circle", "Triangle")  # Condition: even x for Circle, odd x for Triangle
  )
p <- ggplot(df, aes(x = x, y = y, color = group, shape = shape_type)) +
  geom_point(size = 4) +
  scale_color_manual(values = c("High" = "red", "Low" = "blue")) +  # Custom colors
  scale_shape_manual(values = c("Circle" = 16, "Triangle" = 17)) +  # Circle (16), Triangle (17)
  labs(title = "Condition-Based Shapes and Colors",
       x = "X Value",
       y = "Y Value",
       color = "Group",
       shape = "Shape Type") 
print(p)
