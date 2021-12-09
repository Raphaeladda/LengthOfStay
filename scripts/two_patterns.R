# make a function that can reduce to 2 patterns
with_without <- function(df) {
  a <- df %>% rowwise() %>%
    mutate(char = ifelse(sum(c_across(Renal_Disease:Blood_Disorder)) == 0, "Without", "With"))
  return(a)
}

# use this function to create a new df with patterns: without/with any conditions
two_patt <- with_without(df) %>%
  transform(char_fct=factor(char, levels=c("Without", "With")))