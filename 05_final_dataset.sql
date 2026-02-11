DROP TABLE IF EXISTS final_churn_dataset;

CREATE TABLE final_churn_dataset AS
SELECT
    f.customer_id,

    -- Features
    f.signup_date,
    f.plan_type,
    f.total_usage_events,
    f.last_usage_date,
    f.successful_payments,
    f.last_payment_date,

    -- Target
    c.churned

FROM customer_features f
LEFT JOIN churn_labels c
    ON f.customer_id = c.customer_id;
