library(ggplot2)
df <- data.frame(
  x = 1:10,
  y = (1:10)^1.5,
  group = c(rep("Group A", 5), rep("Group B", 5))  # Two groups
)
p <- ggplot(df, aes(x = x, y = y, color = group)) +
  geom_point(size = 4) +
  scale_color_manual(
    values = c("Group A" = "purple", "Group B" = "orange"),
    labels = c("Custom A", "Custom B"),
    name = "Custom Group Legend"
  ) 
  theme_minimal() 
  ggtitle("ggplot2 with Manually Defined Legend")
print(p)
