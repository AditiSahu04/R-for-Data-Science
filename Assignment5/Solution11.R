library(ggplot2)
df <- data.frame(
  height = c(150, 160, 170, 180, 190, 165, 175, 185),
  weight = c(50, 60, 70, 80, 90, 65, 75, 85),
  gender = c("Male", "Female", "Male", "Female", "Male", "Female", "Male", "Female")
)
ggplot(df, aes(x = height, y = weight, color = gender)) 
  geom_point(size = 4)
  labs(title = "Height vs Weight by Gender",
       x = "Height (cm)",
       y = "Weight (kg)",
       color = "gender") 
   
  
 
