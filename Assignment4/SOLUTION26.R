select_numeric_columns <- function(df) {
  numeric_df <- df[sapply(df, is.numeric)]
  return(numeric_df)
}
df <- data.frame(
  name = c("Alice", "Bob", "Charlie"),
  age = c(25, 30, 22),
  score = c(90.5, 88.0, 95.2),
  passed = c(TRUE, TRUE, FALSE),
  stringsAsFactors = FALSE
)
numeric_only <- select_numeric_columns(df)
numeric_only
