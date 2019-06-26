# Explore the dataset with summary and str
summary(adult)
str(adult)

# Age histogram
ggplot(adult, aes (x = SRAGE_P)) +
  geom_histogram()

# BMI histogram
ggplot(adult, aes (x = BMI_P)) +
  geom_histogram()

# Age colored by BMI, binwidth = 1
ggplot(adult, aes (x = SRAGE_P, fill= factor(RBMI))) + 
  geom_histogram(binwidth = 1)
# Keep adults younger than or equal to 84
adult <- adult[adult$SRAGE_P <= 84, ]

# Keep adults with BMI at least 16 and less than 52
adult <- adult[adult$BMI_P >= 16 & adult$BMI_P < 52, ]

# Relabel the race variable
adult$RACEHPR2 <- factor(adult$RACEHPR2, labels = c("Latino",
                                                    "Asian",
                                                    "African American",
                                                    "White"))

# Relabel the BMI categories variable
adult$RBMI <- factor(adult$RBMI, labels = c("Under-weight",
                                            "Normal-weight",
                                            "Over-weight",
                                            "Obese"))
