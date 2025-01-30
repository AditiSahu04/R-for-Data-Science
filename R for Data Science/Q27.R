m1<- c(3, 5, 7)
m2 <- c(2, 3)
m3 <- rep(m2, length.out = length(m1))
m4 <- m1 *m3
m5<- c(m4, rep(m4, length.out = 3))
m4
m5[2:5] <- c(-1, -150, -1, -150)
m5
