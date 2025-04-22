add_age_group <- function(df, column_name = "age") {
  if (!column_name %in% names(df)) {
    stop("Column not found in data frame.")
  }
  if (!is.numeric(df[[column_name]])) {
    stop("Specified column is not numeric.")
  }
  df$age_group <- cut(
    df[[column_name]],
    breaks = c(-Inf, 20, 40, Inf),
    labels = c("Young", "Adult", "Senior"),
    right = FALSE
  )
  
  return(df)
}
df <- data.frame(
  name = c("Alice", "Bob", "Charlie", "David"),
  age = c(18, 25, 40, 60)
)
df_with_group <- add_age_group(df)
print(df_with_group)


