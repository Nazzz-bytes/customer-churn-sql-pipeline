INSERT INTO customers (customer_id, signup_date, plan_type, region) VALUES
(1, '202-01-10', 'Basic', 'India'),
(2, '2025-02-15', 'Premium', 'India'),
(3, '2025-03-20', 'Basic', 'US'),
(4, '2025-04-05', 'Premium', 'UK'),
(5, '2025-05-12', 'Basic', 'India');


INSERT INTO usage_logs (customer_id, usage_date, login_count, minutes_used) VALUES
(1, '2025-06-01', 2, 15),
(1, '2025-06-10', 1, 5),
(2, '2025-06-05', 8, 120),
(2, '2025-06-20', 7, 110),
(3, '2025-04-15', 1, 10),
(4, '2025-06-25', 5, 60);



INSERT INTO payments (customer_id, payment_date, amount, status) VALUES
(1, '2025-06-01', 499, 'Success'),
(1, '2025-07-01', 499, 'Failed'),
(2, '2025-07-01', 999, 'Success'),
(3, '2025-04-01', 499, 'Success'),
(4, '2025-06-01', 999, 'Success'),
(5, '2025-05-01', 499, 'Success');