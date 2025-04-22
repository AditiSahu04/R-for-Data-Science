df <- data.frame(
  score = c(90, 85, 88),
  name = c("Alice", "Bob", "Charlie"),
  age = c(25, 30, 22)
)
print("Original Data Frame:")
print(df)
df_alphabetical <- df[ , order(names(df))]
print("Data Frame with Columns Ordered Alphabetically:")
print(df_alphabetical)
