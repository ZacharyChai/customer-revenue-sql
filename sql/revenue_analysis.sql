-- Monthly revenue trend
SELECT
  DATE_TRUNC('month', order_date) AS month,
  SUM(order_total) AS monthly_revenue
FROM orders
GROUP BY month
ORDER BY month;

