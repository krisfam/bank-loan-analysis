#Summary of the dataset ----
df <- Bank_Personal_Loan_Modelling_1_
str(df)
summary(df)
#Checking NAs ----
anyNA(df)
sum(is.na(df))
colSums(is.na(df))
#Clean the data ----
library(dplyr)
df <- df |>
  mutate(CCAvg = as.numeric(gsub("/", ".", CCAvg)))
summary(df$CCAvg)
df[df$Experience < 0, ] |>
print(n=52)
df <- df |>
  mutate(Experience = ifelse(Experience < 0, 0, Experience))
#Convert categorical variables to factors ----
names(df)[names(df) == "Personal Loan"]        <- "Personal_Loan"
names(df)[names(df) == "Securities Account"]   <- "Securities_Account"
names(df)[names(df) == "CD Account"]           <- "CD_Account"
df$Family      <- factor(df$Family)
df$Education   <- factor(df$Education,
                         labels = c("Undergrad", "Graduate", "Advanced/Professional"))
df$Personal_Loan <- factor(df$Personal_Loan)
df$Online      <- factor(df$Online)
df$CreditCard  <- factor(df$CreditCard)
df$CD_Account  <- factor(df$CD_Account)
df$Securities_Account <- factor(df$Securities_Account)
#Create cleaner dataset ---- 
df_clean <- df[, c("Age","Experience","Income","Family","CCAvg",
                   "Education","Mortgage","Personal_Loan","Securities_Account",
                   "CD_Account","Online","CreditCard")]
#Export dataset for visualization 1 ----
write.csv(df_clean, "bank_clean_for_tableau.csv", row.names = FALSE)
getwd()
#Explore data ----
#Exploring categoried data
summary(df_clean)
prop.table(table(df_clean$Personal_Loan))
aggregate(Income ~ Personal_Loan, df_clean, mean)
aggregate(CCAvg ~ Personal_Loan, df_clean, mean)
aggregate(Age ~ Education, df_clean, mean)
aggregate(Income ~ Education, df_clean, mean)
#Exploring numeric data
numeric_vars <- df_clean[, c("Age","Experience","Income","Mortgage","CCAvg")]
cor(numeric_vars)
#Loan vs Credit card
table(df_clean$Personal_Loan, df_clean$CreditCard)
#Loan vs CD Account
table(df_clean$Personal_Loan, df_clean$CD_Account)
#Loan vs Online banking
table(df_clean$Personal_Loan, df_clean$Online)
#Export dataset for visualization 2 ----
write.csv(df_clean, "bank_clean_for_tableau_2.csv", row.names = FALSE)
