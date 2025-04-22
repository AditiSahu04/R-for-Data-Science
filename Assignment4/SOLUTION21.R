merge_nested_lists <- function(list1, list2) {
  nested_list <- list(
    first = list1,
    second = list2
  )
  return(nested_list)
}

list1 <- list(name = "Alice", age = 25)
list2 <- list(subject = "Math", score = 90)
combined <- merge_nested_lists(list1, list2)
combined
