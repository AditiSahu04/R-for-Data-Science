library(ggplot2)
read_and_plot_data <- function() {
  file_path <- file.choose()
  data <- read.csv(file_path)
  print(head(data))
  numeric_cols <- names(data)[sapply(data, is.numeric)]
  
  if (length(numeric_cols) < 2) {
    stop("The file must contain at least two numeric columns.")
  }
  x_col <- numeric_cols[1]
  y_col <- numeric_cols[2]
  plot <- ggplot(data, aes_string(x = x_col, y = y_col)) 
    geom_point(color = "blue", size = 3) 
    geom_line(color = "steelblue") 
    labs(title = paste("Plot of", y_col, "vs", x_col),
         x = x_col, y = y_col) 
  print(plot)
}
read_and_plot_data()


  