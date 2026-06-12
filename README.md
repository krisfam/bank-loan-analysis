# Exploratory Analysis of Bank Personal Loan Dataset

## Project Overview

This project performs exploratory data analysis (EDA) on a dataset of 5,000 bank customers from TheraBank. The objective is to identify demographic and financial factors associated with personal loan acceptance and generate insights that can support targeted marketing and cross-selling strategies.

The project demonstrates data cleaning, statistical exploration, customer segmentation, and dashboard visualization using R and Tableau.

## Dataset Overview

The dataset contains 5,000 customer records and 14 variables, including demographic information, financial attributes, banking behavior, and personal loan acceptance.

### Key Variables

| Variable | Description |
|---|---|
| Age | Customer age |
| Experience | Years of professional experience |
| Income | Annual income in thousand dollars |
| CCAvg | Average monthly credit card spending in thousand dollars |
| Family | Family size |
| Education | Education level |
| Mortgage | Mortgage value in thousand dollars |
| Personal Loan | Whether the customer accepted a personal loan |
| Securities Account | Whether the customer owns a securities account |
| CD Account | Whether the customer owns a certificate of deposit account |
| Online | Whether the customer uses internet banking |
| CreditCard | Whether the customer uses the bank’s credit card |

## Tools Used

- R
- dplyr
- stringr
- Tableau
- Excel

## Project Objectives

- Clean and prepare the dataset for analysis
- Explore demographic and financial characteristics of customers
- Identify patterns linked to personal loan acceptance
- Build Tableau dashboards for business visualization
- Generate insights for marketing and product strategy

## Data Cleaning

Several preprocessing steps were performed in R:

- Fixed inconsistent formatting in the `CCAvg` variable  
  - Example: `1/60` was converted to `1.60`
- Removed invalid records where `Experience < 0`
- Converted categorical variables into factor types:
  - Education
  - Personal Loan
  - Securities Account
  - CD Account
  - Online
  - CreditCard
- Exported the cleaned dataset as a CSV file for Tableau visualization

## Exploratory Data Analysis

Key observations from the dataset:

- Average income is approximately $74k
- Average monthly credit card spending is approximately $1.94k
- About 55% of customers have no mortgage
- Only around 9.6% of customers accepted the personal loan offer

This indicates that the target variable is highly imbalanced, making targeted customer segmentation especially important.

## Customer Segmentation

Customers who accepted personal loans tend to have:

- Higher income
- Higher monthly credit card spending
- Higher education levels
- Greater likelihood of owning financial products such as CD accounts and securities accounts

These patterns suggest that financially active and higher-value customers are more likely to respond to loan offers.

## Tableau Dashboard

The Tableau dashboard visualizes:

- Income distribution
- Credit card spending by loan acceptance
- Demographic segmentation
- Financial product ownership
- Profile of customers who accepted personal loans

The dashboard helps translate raw customer data into actionable business insights.

## Key Insights

- Loan acceptance is low, with only about 10% of customers accepting the offer
- Higher income is strongly associated with loan acceptance
- Customers with higher credit card spending are more likely to accept personal loans
- Higher education levels are linked to higher acceptance rates
- Customers with CD accounts or securities accounts show stronger cross-selling potential
- Online banking users may represent a more engaged customer segment

## Business Recommendations

- Focus loan marketing campaigns on higher-income customers
- Prioritize customers with higher credit card spending
- Use existing financial product ownership as a cross-selling signal
- Promote personal loan offers through digital banking channels
- Develop targeted campaigns for customers with stronger financial engagement

## Author

Kris Pham 
National Yang Ming Chiao Tung University (NYCU)
