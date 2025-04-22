library(ggplot2)
df <- data.frame(
  x = 1:10,
  y = (1:10)^2
)
p1 <- ggplot(df, aes(x = x, y = y)) 
  geom_point(color = "blue", size = 3) 
  xlim(0, 12) 
  ylim(0, 120) 
  ggtitle("Using xlim() and ylim()") 
print(p1)

