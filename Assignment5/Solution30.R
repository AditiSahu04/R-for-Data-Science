library(ggplot2)
data(mtcars)
mtcars$mpg_category <- ifelse(mtcars$mpg > 25, "High",
                              ifelse(mtcars$mpg > 15, "Medium", "Low"))head(mtcars)
p <- ggplot(mtcars, aes(x = wt, y = mpg, color = mpg_category)) +
  geom_point(size = 4) +
  labs(
    title = "Scatterplot of MPG vs Weight with Conditional Categories",
    x = "Weight (1000 lbs)",
    y = "Miles per Gallon",
    color = "MPG Category"
  )
print(p)
