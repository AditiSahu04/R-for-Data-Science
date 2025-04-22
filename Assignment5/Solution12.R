library(ggplot2)
df <- data.frame(
  x = rnorm(50),
  y = rnorm(50),
  group = sample(c("A", "B"), 50, replace = TRUE)
)
my_plot <- ggplot(df, aes(x = x, y = y, color = group)) 
  geom_point(size = 3) +
  labs(title = "Scatter Plot by Group") 
  theme_minimal()
ggsave("scatter_plot.pdf", plot = my_plot, width = 7, height = 5)
