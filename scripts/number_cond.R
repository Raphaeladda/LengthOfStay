# create a new column num_cond counting the number of conditions a patient has
df$num_char <- rowSums(df[, c(3:13)])
df <- df %>% mutate(num_cond = ifelse(num_char>5, "6+", num_char))

# count by lengthofstay and num_cond
count <- df %>%
  group_by(LengthOfStay, num_cond) %>%
  summarise(Freq = n()) %>%
  ungroup()