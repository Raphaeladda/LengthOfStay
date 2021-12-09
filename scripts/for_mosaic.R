# decrease the number of bins for each category
df <- df %>% 
  mutate(two_cat = ifelse(lengthofstay<5, "Short", "Long")) %>%
  transform(Length_of_Stay=factor(two_cat, levels=c("Short", "Long"))) %>%
  mutate(Number_of_Conditions = ifelse(num_cond>1, "2+", num_cond)) %>%
  mutate(Number_of_Previous_Admissions = ifelse(rcount>2, "3+", rcount))