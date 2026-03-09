Exploratory Analysis of Bank Personal Loan Dataset
Project Overview

This project performs an exploratory data analysis (EDA) on a dataset of 5,000 bank customers from TheraBank to identify demographic and financial factors associated with personal loan acceptance.

The objective is to understand customer characteristics that influence loan acceptance and provide insights that can support targeted marketing strategies and financial product cross-selling.

The analysis includes:

Data cleaning and preprocessing in R

Exploratory statistical analysis

Customer segmentation

Visualization using Tableau

The project aims to demonstrate data cleaning, statistical exploration, and business insight generation using real-world financial data. 

Exploratory Analysis of Bank Pe…

Dataset Overview

The dataset contains 5,000 customer records and 14 variables, representing demographic and financial attributes of bank customers. 

Exploratory Analysis of Bank Pe…

Key variables include:

Variable	Description
Age	Customer age
Experience	Years of professional experience
Income	Annual income ($000)
CCAvg	Average monthly credit card spending ($000)
Family	Family size
Education	Education level
Mortgage	Mortgage value ($000)
Personal Loan	Whether the customer accepted a loan
Securities Account	Whether the customer owns a securities account
CD Account	Whether the customer owns a certificate of deposit
Online	Internet banking usage
CreditCard	Whether the customer uses the bank's credit card
Tools Used

R

dplyr

stringr

Tableau

Excel (initial data inspection)

These tools were used for data preparation, analysis, and visualization. 

Exploratory Analysis of Bank Pe…

Project Objectives

The main objectives of this project are:

Clean and prepare the dataset for analysis

Explore demographic and financial characteristics of customers

Identify patterns linked to personal loan acceptance

Build visual insights through Tableau dashboards

Generate business insights for marketing and product strategy

Exploratory Analysis of Bank Pe…

Data Cleaning

Several preprocessing steps were performed in R before analysis.

Fix Data Formatting

The CCAvg variable contained inconsistent values such as:

1/60

which were converted into:

1.60
Handle Invalid Values

Rows where:

Experience < 0

were removed because they represent invalid data.

Convert Categorical Variables

The following variables were converted into factor types:

Education

Personal Loan

Securities Account

CD Account

Online banking usage

The cleaned dataset was then exported as CSV for visualization in Tableau. 

Exploratory Analysis of Bank Pe…

Exploratory Data Analysis
Descriptive Statistics

Key observations from the dataset:

Average income ≈ $74k

Average monthly credit card spending ≈ $1.94k

55% of customers have no mortgage

Only ~9.6% of customers accepted the personal loan offer

This indicates that loan acceptance is highly imbalanced. 

Exploratory Analysis of Bank Pe…

Customer Segmentation

Customers who accepted personal loans tend to have:

Higher income

Higher credit card spending

Higher education levels

Higher likelihood of owning financial products such as:

CD accounts

Securities accounts

These characteristics suggest strong cross-selling opportunities for financial institutions. 

Exploratory Analysis of Bank Pe…

Tableau Visualization

The Tableau dashboard highlights several important patterns:

Income distribution of customers

Credit card spending vs loan acceptance

Demographic segmentation

Financial product ownership

Profile of customers who accepted personal loans

These visualizations help transform raw data into actionable business insights. 

Exploratory Analysis of Bank Pe…

Key Insights

The analysis reveals several important findings:

Only about 10% of customers accepted loans, indicating the need for targeted marketing strategies.

Loan acceptance strongly correlates with higher income and spending behavior.

Customers with higher education levels are more likely to accept loans.

Customers who already use financial products (CD or securities accounts) show higher loan acceptance rates.

Online banking users tend to show higher engagement, suggesting digital channels may improve marketing effectiveness.

These insights can help banks improve loan marketing campaigns and customer segmentation strategies.
