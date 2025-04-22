df <- data.frame(
  name = c("Alice", "Bob", "Charlie", "Dave"),
  age = c(25, 18, 30, 20)
)
subset_df <- df[df$age > 20, ]
print(subset_df)
