set.seed(42)  
u1 <- array(sample(1:9, 3 * 3 * 4,replace = TRUE), dim = c(3, 3, 4))
u1

u2 <- u1[1, 3, ]
u2
