-- Customer Churn Risk & Revenue Impact Analysis
-- Author: Shradha Kavile
-- Database: MySQL

#1. DATABASE SETUP
CREATE DATABASE churn_project;
USE churn_project;

CREATE TABLE customers (
customer_id VARCHAR(50),
gender VARCHAR(10),
senior_citizen INT,
partner VARCHAR(10),
dependents VARCHAR(10),
tenure INT,
phone_service VARCHAR(10),
multiple_lines VARCHAR(20),
internet_service VARCHAR(20),
online_service VARCHAR(20),
online_security VARCHAR(20),
online_backup VARCHAR(20),
device_protection VARCHAR(20),
tech_support VARCHAR(20),
streaming_tv VARCHAR(20),
streaming_movies VARCHAR(20),
contract VARCHAR(20),
paperless_billing VARCHAR(10),
payment_method VARCHAR(50),
monthly_charges DECIMAL(10,2),
total_charges VARCHAR(20),
churn VARCHAR(10)
);

-- #2. CORE KPI ANALYIS

-- Total Customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- Overall Churn Rate 
SELECT 
COUNT(CASE WHEN churn = 'Yes' THEN 1 END) * 100.0/ COUNT(*) AS churn_rate
FROM customers;

-- Monthly Revenue Loss due to Churn
SELECT 
ROUND(SUM(monthly_charges), 2) AS monthly_revenue_loss
FROM customers
WHERE churn = 'Yes';

-- #3. SEGMENTATION ANALYSIS

-- Churn by contract type
SELECT contract,
COUNT(*) AS total_customers,
SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0/COUNT(*),2) AS churn_rate
FROM customers
GROUP BY contract
ORDER BY churn_rate DESC;

-- Avg Tenure: Churn vs Non-Churn
SELECT churn, ROUND(AVG(tenure),1) AS avg_tenure
FROM customers
GROUP BY churn;

-- Churn by Monthly Charges
SELECT 
  CASE WHEN monthly_charges > 70 THEN 'High Charges'
       ELSE 'Low Charges' END AS charge_group,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) AS churned,
  ROUND(SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),2) AS churn_rate
FROM customers
GROUP BY charge_group;

-- 4. ADVANCED ANALYSIS

-- Risk Segmentation using CTE
WITH risk_analysis AS (
    SELECT *,
        CASE 
            WHEN contract = 'Month-to-month' AND tenure <= 6 THEN 'High Risk'
            ELSE 'Other'
        END AS risk_category
    FROM customers
)

SELECT 
risk_category,
ROUND(SUM(monthly_charges),2) AS total_revenue
FROM risk_analysis
GROUP BY risk_category;

-- Revenue Contribution using Window Function
SELECT 
contract,
SUM(monthly_charges) AS total_revenue,
ROUND(
SUM(monthly_charges) * 100.0 / SUM(SUM(monthly_charges)) OVER(),
2) AS revenue_contribution_percentage
FROM customers
GROUP BY contract;

-- Monthly Churn Trend
SELECT tenure,
COUNT(*) AS customers,
ROUND(SUM(CASE WHEN churn ='Yes' THEN 1 ELSE 0 END)*100/COUNT(*),2) AS churn_rate
FROM customers
GROUP BY tenure
ORDER BY tenure;