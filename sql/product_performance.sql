-- Product Performance Analysis
-- This file evaluates which products and categories drive sales

-- Revenue by product category
SELECT
  p.category,
  SUM(oi.line_total) AS category_revenue
FROM order_items oi
JOIN products p
  ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;

-- Top products by units sold
SELECT
  p.product_name,
  SUM(oi.quantity) AS units_sold
FROM order_items oi
JOIN products p
  ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY units_sold DESC
LIMIT 10;
