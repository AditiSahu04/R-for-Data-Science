my_matrix <- matrix(1:6, nrow = 2)
my_logical <- c(TRUE, FALSE, TRUE)
my_string <- "Hello, R!"
my_list <- list(mat = my_matrix, logic = my_logical, text = my_string)
second_logical <- my_list$logic[2]
print(second_logical)
