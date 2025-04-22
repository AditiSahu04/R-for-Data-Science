library(ggplot2)
df <- data.frame(
  x = 1:20,
  y = (1:20)^1.5
)
df$category <- ifelse(df$y > 50, "High", "Low")
p <- ggplot(df, aes(x = x, y = y, color = category)) +
  geom_point(size = 3) +
  scale_color_manual(values = c("Low" = "blue", "High" = "red")) +
  labs(title = "Highlighting Points Based on Logical Condition",
       color = "Y Value Category") +
  theme_minimal()
print(p)
