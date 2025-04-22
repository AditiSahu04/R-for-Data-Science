names <- c("Alice", "Bob", "Charlie")
ages <- c(25, 30)
max_len <- max(length(names), length(ages))
pad_vector <- function(x, len) {
  length(x) <- len
  return(x)
}
names <- pad_vector(names, max_len)
ages <- pad_vector(ages, max_len)
df <- data.frame(name = names, age = ages)
df
