# Customer Churn Analysis Dashboard (SQL + Power BI)

This project analyzes customer churn behavior for a telecom company to identify the key factors driving customer attrition and provide actionable business insights to improve retention.

**End-to-End Workflow**
Raw telecom dataset → SQL cleaning & aggregation → Data modeling in Power BI → Dashboard → Business insights → Retention recommendations

**Objective**
To analyze customer data and determine:
- why customers are leaving
- which segments are at high risk
- what business actions can reduce churn

**Tools Used**
- SQL (MySQL) - Data analysis & KPI calculations
- Power BI - Data visulaization & dashboard creation
- Excel/CSV - Data storage and transformation

**Dataset**
7,000+ telecom customers
Features include: contract type, tenure, monthly charges, payment method, internet service, and churn status.

**Key Business Insights**
- Overall churn rate is 26.6%, indicating a major retention issue.
- Month-to-month contracts account for 42% churn rate, making them the highest-risk segment.
  Long-term contracts significantly improve retention.
- Customers with low tenure (18 months avg) are more likely to churn
  Early lifecycle engagement is critical.
- Customers in high-charge bracket show 2x higher churn probability, indicating price sensitivity.
  
**Business Recommendations**
- Encourage long-term contracts through discounts
- Improve onboarding for new customers
- Offer loyalty incentives to high-paying customers
- Review pricing structure for high-charge segment

**Dashboard Features**
- KPI Cards (Churn Rate, Total Customers, Churned Customers, Avg Tenure)
- Churn by Contract Type
- Tenure Comparison (Churned vs Retained)
- Churn by Monthly Charges
- Interactive filters
