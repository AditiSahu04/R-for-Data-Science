logic <- c(TRUE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, TRUE)
mat <- matrix(logic, nrow = 2, ncol = 4, byrow = TRUE)
mat
num <- matrix(c(1, 0, 1, 1, 0, 1, 0, 0), nrow = 2, ncol = 4, byrow = TRUE)
num
res<-mat==num
res