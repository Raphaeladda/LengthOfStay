# transform the data into the correct format and select the top 8 most common patterns
patterns <- characteristics %>%
  group_by_all() %>%
  count(name="count", sort=TRUE) %>%
  ungroup %>%
  rownames_to_column("id")

top_patterns <- patterns[1:8,]

top_patterns$percentage <- top_patterns$count / nrow(characteristics)

tidy_patt <- top_patterns %>%
  pivot_longer(!c(id, count, percentage),
               names_to = "characteristic",
               values_to = "yn")