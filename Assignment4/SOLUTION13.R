df <- data.frame(
  name = c("Alice", "Bob", "Charlie", "Alice"),
  age = c(25, 30, 22, 28),
  stringsAsFactors = FALSE  # Keep character column as character
)
df$name <- as.factor(df$name)
df$name
str(df)
