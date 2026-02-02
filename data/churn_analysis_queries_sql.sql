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

#1. Overall Churn Rate 
SELECT 
COUNT(CASE WHEN churn = 'Yes' THEN 1 END) * 100.0/ COUNT(*) AS churn_rate
FROM customers;

#2. Churn by contract type
SELECT contract,
COUNT(*) AS total_customers,
SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0/COUNT(*),2) AS churn_rate
FROM customers
GROUP BY contract
ORDER BY churn_rate DESC;

#3. Avg tenure churn vs non-churn
SELECT churn, ROUND(AVG(tenure),1) AS avg_tenure
FROM customers
GROUP BY churn;

#4. Churn by monthly charges
SELECT 
  CASE WHEN monthly_charges > 70 THEN 'High Charges'
       ELSE 'Low Charges' END AS charge_group,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) AS churned,
  ROUND(SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),2) AS churn_rate
FROM customers
GROUP BY charge_group;


