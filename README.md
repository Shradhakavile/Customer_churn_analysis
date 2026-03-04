# Customer Churn Risk & Revenue Impact Analysis
## End-to-End SQL & Python Business Intelligence Case Study

## Executive Summary
This project analyzes customer churn patterns for a telecom business using SQL and Python. 
The objective is to identify high-risk customer segments contributing to recurring revenue loss 
and provide data-driven retention strategies to improve profitability.

The analysis includes KPI measurement, churn segmentation, revenue impact estimation, 
and strategic business recommendations.

This project analyzes customer churn behavior for a telecom company to identify the key factors driving customer attrition and provide actionable business insights to improve retention.

## Business Problem
The telecom company is experiencing increasing customer churn, leading to significant recurring revenue loss. 

Key business questions:
- What is the overall churn rate?
- Which customer segments have the highest churn risk?
- How much revenue is lost due to churn?
- What retention strategies can reduce revenue leakage?

## Key Performance Indicators (KPIs)
- Overall Churn Rate
- Monthly Revenue Loss Due to Churn
- Churn Rate by Contract Type
- Churn Rate by Tenure Group
- Revenue Contribution by Customer Segment
- High-Risk Customer Identification

## Tools & Technologies Used
- SQL (Advanced Queries, CTEs, Window Functions)
- Python (Pandas, Matplotlib, Seaborn)
- Data Cleaning & Transformation
- Exploratory Data Analysis (EDA)
- Business KPI Analysis

## Dataset Overview
The dataset contains telecom customer information including:

- Customer ID
- Gender
- Tenure (in months)
- Contract Type
- Monthly Charges
- Total Charges
- Payment Method
- Churn Status (Yes/No)

The dataset was cleaned to remove null values and ensure correct data types for analysis.

## SQL Analysis Methodology
The analysis was structured in the following stages:
1. Calculated overall churn rate.
2. Estimated monthly revenue loss due to churn.
3. Segmented churn by contract type and tenure groups.
4. Identified high-risk customer segments using CASE logic.
5. Used CTEs to categorize customer risk profiles.
6. Applied Window Functions to calculate revenue contribution percentages.

## Advanced SQL Techniques Used
- CASE statements for risk categorization
- CTE (Common Table Expressions) for structured risk analysis
- Aggregate Functions (SUM, COUNT, AVG)
- Window Functions for revenue contribution analysis
- Segmentation using GROUP BY and conditional logic

## Key Business Insights
- The dataset contains 7,032 total customers with an overall churn rate of 26.58%.
- Month-to-month contract customers exhibit the highest churn rate at 42.71%, compared to 11.28% (one-year) and 2.85% (two-year contracts).
- The company loses ₹139,130.85 in monthly recurring revenue due to churn.
- High-risk customers (month-to-month contract with tenure ≤ 6 months) contribute ₹78,954.40 in revenue, representing a significant portion of churn exposure.
- Long-term contract customers demonstrate strong retention stability and significantly lower churn probability.

## Revenue Impact Analysis
- Total Customers: 7,032
- Overall Churn Rate: 26.58%
- Monthly Revenue Loss from Churn: ₹139,130.85
- High-Risk Segment Revenue Exposure: ₹78,954.40
- Remaining Customer Revenue: ₹376,706.60

## Strategic Recommendations
1. Offer discounted 6-month contract upgrades for month-to-month customers.
2. Introduce onboarding engagement campaigns for customers within first 6 months.
3. Deploy churn monitoring alerts for high-risk customer segments.
4. Provide loyalty incentives for customers completing 12+ months.
5. Focus retention efforts on high-revenue customers to minimize financial impact.

## Conclusion
This project demonstrates how SQL and Python can be used to transform raw customer data into actionable business insights. 

By identifying churn patterns and quantifying revenue impact, the analysis enables strategic retention planning aimed at improving profitability and long-term customer value.
