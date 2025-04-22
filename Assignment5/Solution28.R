# Load ggplot2 for plotting (if not already loaded)
library(ggplot2)

# Define the function to save a plot in both JPEG and PDF formats
save_plot <- function(plot, file_name_base) {
  
  # Define the file names
  jpeg_filename <- paste0(file_name_base, ".jpg")
  pdf_filename <- paste0(file_name_base, ".pdf")
  
  # Save the plot as JPEG
  ggsave(jpeg_filename, plot = plot, device = "jpeg", width = 8, height = 6, dpi = 300)
  
  # Save the plot as PDF
  ggsave(pdf_filename, plot = plot, device = "pdf", width = 8, height = 6)
  
  # Print confirmation
  cat("Plot saved as:\n", jpeg_filename, "\n", pdf_filename, "\n")
}

# Example usage: Create a simple plot and save it in both formats
example_plot <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  labs(title = "Scatterplot of mpg vs wt")

# Call the function to save the plot in both JPEG and PDF
save_plot(example_plot, "scatterplot_mpg_wt")
