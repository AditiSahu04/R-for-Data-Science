df <- data.frame(
  name = c("Alice", "Bob", "Charlie", "David"),
  age = c(25, 30, 22, 18),
  score = c(90, 75, 85, 95)
)
subset_df <- df[df$age > 20 & df$score >= 85, ]
print(subset_df)
