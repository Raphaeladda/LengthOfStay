sc_1 <- ggplot(df%>%group_by(LengthOfStay)%>%summarise(mean = mean(hematocrit)),aes(x = LengthOfStay, y = mean)) +
  geom_point() +
  xlab("Length of Stay \n(in days)") +
  ylab("Hematocrit \n(g/dL)") +
  scale_x_discrete(limit = c(1:10,"11+")) +
  theme_bw(12)

sc_2 <- ggplot(df%>%group_by(LengthOfStay)%>%summarise(mean = mean(neutrophils)),aes(x = LengthOfStay, y = mean)) +
  geom_point() +
  xlab("Length of Stay \n(in days)") +
  ylab("Neutrophils \n(cells/microL)") +
  scale_x_discrete(limit = c(1:10,"11+")) +
  theme_bw(12)

sc_3 <- ggplot(df%>%group_by(LengthOfStay)%>%summarise(mean = mean(sodium)),aes(x = LengthOfStay, y = mean)) +
  geom_point() +
  xlab("Length of Stay \n(in days)") +
  ylab("Sodium \n(mmol/L)") +
  scale_x_discrete(limit = c(1:10,"11+")) +
  theme_bw(12)

sc_4 <- ggplot(df%>%group_by(LengthOfStay)%>%summarise(mean = mean(glucose)),aes(x = LengthOfStay, y = mean)) +
  geom_point() +
  xlab("Length of Stay \n(in days)") +
  ylab("Glucose \n(mmol/L)") +
  scale_x_discrete(limit = c(1:10,"11+")) +
  theme_bw(12)

sc_5 <- ggplot(df%>%group_by(LengthOfStay)%>%summarise(mean = mean(bloodureanitro)),aes(x = LengthOfStay, y = mean)) +
  geom_point() +
  xlab("Length of Stay \n(in days)") +
  ylab("Blood Urea Nitrogen \n(mg/dL)") +
  scale_x_discrete(limit = c(1:10,"11+")) +
  theme_bw(12)

sc_6 <- ggplot(df%>%group_by(LengthOfStay)%>%summarise(mean = mean(creatinine)),aes(x = LengthOfStay, y = mean)) +
  geom_point() +
  xlab("Length of Stay \n(in days)") +
  ylab("Creatinine \n(mg/dL)") +
  scale_x_discrete(limit = c(1:10,"11+")) +
  theme_bw(12)

sc_7 <- ggplot(df%>%group_by(LengthOfStay)%>%summarise(mean = mean(bmi)),aes(x = LengthOfStay, y = mean)) +
  geom_point() +
  xlab("Length of Stay \n(in days)") +
  ylab("BMI (kg/m2)") +
  scale_x_discrete(limit = c(1:10,"11+")) +
  theme_bw(12)

sc_8 <- ggplot(df%>%group_by(LengthOfStay)%>%summarise(mean = mean(pulse)),aes(x = LengthOfStay, y = mean)) +
  geom_point() +
  xlab("Length of Stay \n(in days)") +
  ylab("Pulse \n(beats/m)") +
  scale_x_discrete(limit = c(1:10,"11+")) +
  theme_bw(12)

sc_9 <- ggplot(df%>%group_by(LengthOfStay)%>%summarise(mean = mean(respiration)),aes(x = LengthOfStay, y = mean)) +
  geom_point() +
  xlab("Length of Stay \n(in days)") +
  ylab("Respiration \n(breaths/m)") +
  scale_x_discrete(limit = c(1:10,"11+")) +
  theme_bw(12)