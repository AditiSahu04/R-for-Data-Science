numeric_vector <- c(10, 20, 5, 15, 25)
vector_mean <- mean(numeric_vector)
new_vector <- ifelse(numeric_vector < vector_mean, NA, numeric_vector)
print(new_vector)
