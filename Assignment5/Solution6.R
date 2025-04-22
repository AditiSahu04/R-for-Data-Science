library(ggplot2)
df <- data.frame(
  x = c(1, 2, 3, 4, 5),
  y = c(3, 5, 2, 8, 7)
)
ggplot(df, aes(x = x, y = y)) +
  geom_point(size = 4, shape = 17, color = "darkgreen") +
  labs(title = "Customized Scatter Plot",
       x = "X Axis",
       y = "Y Axis")
