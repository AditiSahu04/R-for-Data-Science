my_list <- list()
num <- as.integer(readline(prompt = "How many elements do you want to add? "))
for (i in 1:num) {
  name <- readline(prompt = paste("Enter name for element", i, ": "))
  value <- readline(prompt = paste("Enter value for", name, ": "))

  if (!is.na(as.numeric(value))) {
    value <- as.numeric(value)
  } else if (tolower(value) %in% c("true", "false")) {
    value <- as.logical(tolower(value))
  }
   my_list[[name]] <- value
}
my_list
