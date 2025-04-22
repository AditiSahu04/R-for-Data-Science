nested_list <- list(
  level1 = list(
    level2 = list(
      numbers = c(10, 20, 30),
      message = "Hello"
    ),
    status = TRUE
  ),
  id = 123
)
value <- nested_list$level1$level2$numbers[2]
print(value)

