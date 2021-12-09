library(ggcorrplot)

continuous_df <- subset(df, select = c(
  "hematocrit","neutrophils","sodium","glucose",
  "bloodureanitro","creatinine","bmi","pulse","respiration","lengthofstay"))

continuous_df <- continuous_df %>%
  rename(
    Hematocrit = hematocrit,
    Neutrophils = neutrophils,
    Sodium = sodium,
    Glucose = glucose,
    Blood_Urea_Nitrogen = bloodureanitro,
    Creatinine = creatinine,
    BMI = bmi,
    Pulse = pulse,
    Respiration = respiration,
    Length_of_Stay = lengthofstay
  )