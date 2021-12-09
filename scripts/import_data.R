library(tidyverse)
library(patchwork)

# read in data from csv file
df <- read.csv("LengthOfStay.csv")

# remove unnecessary columns
df <- subset(df, select = -c(eid, discharged, vdate))

# rename categorical data columns
df <- df %>% 
  mutate(LengthOfStay = ifelse(lengthofstay>8, "9+", lengthofstay)) %>%
  rename(Renal_Disease = dialysisrenalendstage,
         Asthma = asthma,
         Iron_Deficiency = irondef,
         Pneumonia = pneum,
         Substance_Dependence = substancedependence,
         Major_Psychological_Disorder = psychologicaldisordermajor,
         Depression = depress,
         Other_Psychological_Disorder = psychother,
         Fibrosis = fibrosisandother,
         Malnutrition = malnutrition,
         Blood_Disorder = hemo)

# create a character column for lengthofstay
df$los_char <- as.character(df$lengthofstay)

# create a dataframe of only the categorical data
characteristics <- df %>% select(Renal_Disease, Asthma, Iron_Deficiency,
                                 Pneumonia, Substance_Dependence, Major_Psychological_Disorder,
                                 Depression, Other_Psychological_Disorder, Fibrosis, Malnutrition,
                                 Blood_Disorder)

# convert data from numeric to character
characteristics$Renal_Disease <- as.character(characteristics$Renal_Disease)
characteristics$Asthma <- as.character(characteristics$Asthma)
characteristics$Iron_Deficiency <- as.character(characteristics$Iron_Deficiency)
characteristics$Pneumonia <- as.character(characteristics$Pneumonia)
characteristics$Substance_Dependence <- as.character(characteristics$Substance_Dependence)
characteristics$Major_Psychological_Disorder <- as.character(characteristics$Major_Psychological_Disorder)
characteristics$Depression <- as.character(characteristics$Depression)
characteristics$Other_Psychological_Disorder <- as.character(characteristics$Other_Psychological_Disorder)
characteristics$Fibrosis <- as.character(characteristics$Fibrosis)
characteristics$Malnutrition <- as.character(characteristics$Malnutrition)
characteristics$Blood_Disorder <- as.character(characteristics$Blood_Disorder)