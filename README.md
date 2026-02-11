Customer Churn Prediction – SQL Data Pipeline
Project Overview
This project demonstrates an end-to-end SQL data pipeline designed to identify customers at risk of churn in a subscription-based business.
The pipeline transforms raw transactional data into an ML-ready dataset using SQL-based feature engineering and business churn logic.
Business Problem
Customer churn directly impacts revenue in subscription businesses.
The goal of this project is to:
- Identify inactive customers
- Engineer behavioral features
- Apply churn labeling logic
- Produce a clean dataset ready for machine learning
Database Schema
The project uses three primary raw tables:
1. customers
- customer_id (Primary Key)
- signup_date
- plan_type

2.usage_logs
- usage_id
- customer_id (Foreign Key)
- usage_date

3.payments
- payment_id
- customer_id (Foreign Key)
- payment_date
- status (Success / Failed)



Step-by-Step Pipeline Process
STEP 1: Raw Data Creation
Created normalized tables:
•	customers
•	usage_logs
•	payments
Inserted structured sample subscription data.

STEP 2: Feature Engineering (customer_features)
Aggregated customer-level behavior:
•	Total usage events
•	Last usage date
•	Successful payment count
•	Last payment date
This converts transactional data into one row per customer.

STEP 3: Churn Labeling (churn_labels)
Churn definition:
A customer is labeled as churned (1) if:
•	No usage activity
AND
•	No successful payments
within 30 days from a reference date.
Otherwise:
•	churned = 0 (active)


STEP 4: Final ML Dataset (final_churn_dataset)
Joined:
•	customer_features
•	churn_labels
Result:
•	One row per customer
•	Engineered features
•	Target variable (churned)
This dataset is ready for:
•	Machine learning
•	Analytics
•	Dashboarding


## Data Pipeline Diagram

```mermaid
flowchart TD

A[customers table]
B[usage_logs table]
C[payments table]

D[customer_features\nFeature Engineering]
E[churn_labels\nChurn Logic 30-Day Rule]
F[final_churn_dataset\nML Ready Dataset]
G[Export to CSV]

A --> D
B --> D
C --> D
D --> F
E --> F
F --> G
