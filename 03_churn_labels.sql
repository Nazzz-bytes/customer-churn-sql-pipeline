SELECT customer_id, total_usage_events, successful_payments, churned
FROM final_churn_dataset
ORDER BY total_usage_events, successful_payments;
