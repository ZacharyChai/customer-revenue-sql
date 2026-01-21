-- Revenue Analysis
-- This file answers core business questions related to revenue performance over time

-- 1. Monthly revenue trend
SELECT
  DATE_TRUNC('month', order_date) AS month,
  SUM(order_total) AS monthly_revenue
FROM orders
GROUP BY month
ORDER BY month;

-- 2. Month-over-month revenue change
WITH monthly_revenue AS (
  SELECT
    DATE_TRUNC('month', order_date) AS month,
    SUM(order_total) AS revenue
  FROM orders
  GROUP BY month
)
SELECT
  month,
  revenue,
  revenue - LAG(revenue) OVER (ORDER BY month) AS revenue_change
FROM monthly_revenue;
