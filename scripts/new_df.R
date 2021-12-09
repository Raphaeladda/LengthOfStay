# implement a function to find the rows which match each pattern
find_rows <- function(df, k) {
  pat <- df %>% filter(Renal_Disease==as.integer(top_patterns[k,2]),
                       Asthma==as.integer(top_patterns[k,3]),
                       Iron_Deficiency==as.integer(top_patterns[k,4]),
                       Pneumonia==as.integer(top_patterns[k,5]),
                       Substance_Dependence==as.integer(top_patterns[k,6]),
                       Major_Psychological_Disorder==as.integer(top_patterns[k,7]),
                       Depression==as.integer(top_patterns[k,8]),
                       Other_Psychological_Disorder==as.integer(top_patterns[k,9]),
                       Fibrosis==as.integer(top_patterns[k,10]),
                       Malnutrition==as.integer(top_patterns[k,11]),
                       Blood_Disorder==as.integer(top_patterns[k,12])) %>%
    add_column("pattern"=k)
  return(pat)
}

# find such rows and create a new data frame
pat1 <- find_rows(df, 1)
pat2 <- find_rows(df, 2)
pat3 <- find_rows(df, 3)
pat4 <- find_rows(df, 4)
pat5 <- find_rows(df, 5)
pat6 <- find_rows(df, 6)
pat7 <- find_rows(df, 7)
pat8 <- find_rows(df, 8)

df2 <- rbind(pat1, pat2, pat3, pat4, pat5, pat6, pat7, pat8)
df2$pattern <- as.character(df2$pattern)