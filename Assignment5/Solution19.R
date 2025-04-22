library(ggplot2)
df <- data.frame(
  x = rep(1:10, 2),
  y = c((1:10)^1.5, (1:10)^1.2),
  group = rep(c("Line A", "Line B"), each = 10)
)
p <- ggplot(df, aes(x = x, y = y, group = group, color = group, linetype = group)) +
  geom_line(aes(size = group)) +  # Vary line width by group
  scale_color_manual(values = c("Line A" = "blue", "Line B" = "red")) +
  scale_linetype_manual(values = c("Line A" = "dashed", "Line B" = "solid")) +
  scale_size_manual(values = c("Line A" = 1.5, "Line B" = 0.8)) +
  labs(title = "Line Types and Widths Example",
       color = "Group", linetype = "Line Style", size = "Line Width") +
  theme_minimal()
print(p)

