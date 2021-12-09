# count by lengthofstay and rcount
count2 <- df %>%
  group_by(LengthOfStay, rcount) %>%
  summarise(Freq = n()) %>%
  ungroup()

# create csv file for interactive plot
dat_int = count2%>%pivot_wider(names_from = rcount, values_from = Freq,values_fill = 0)
colnames(dat_int) = c("LoS","zero","one","two","three","four","five_or_more")
dat_int = dat_int%>%mutate(LoS = replace(LoS, LoS == '9+', 9))

dat_int[c("zero","one","two","three","four","five_or_more")] = 100*prop.table(100*as.matrix(subset(dat_int,select = c("zero","one","two","three","four","five_or_more"))),2)

write.csv(dat_int,"data_interactive.csv", row.names = TRUE)