CREATE TABLE customer_features AS
SELECT
    c.customer_id,

    -- Customer profile
    c.signup_date,
    c.plan_type,

    -- Usage features
    COUNT(u.usage_date) AS total_usage_events,
    MAX(u.usage_date) AS last_usage_date,

    -- Payment features
    COUNT(p.payment_date) FILTER (WHERE p.status = 'Success') AS successful_payments,
    MAX(p.payment_date) FILTER (WHERE p.status = 'Success') AS last_payment_date

FROM customers c
LEFT JOIN usage_logs u
    ON c.customer_id = u.customer_id
LEFT JOIN payments p
    ON c.customer_id = p.customer_id

GROUP BY
    c.customer_id,
    c.signup_date,
    c.plan_type;
