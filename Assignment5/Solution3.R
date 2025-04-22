library(ggplot2)
x <- c(1, 2, 3, 4, 5)
y <- c(3, 5, 2, 8, 7)
jpeg("scatter_plot.jpg", width = 800, height = 600)
qplot(x, y, geom = "point", 
      main = "Simple Scatter Plot", 
      xlab = "X Values", 
      ylab = "Y Values")
dev.off()
