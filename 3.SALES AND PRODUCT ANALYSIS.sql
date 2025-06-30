-- SALES AND PRODUCT ANALYSIS

-- 1.Top 10 Products by Purchases
SELECT product_id, COUNT(*) AS total_purchases
FROM ecommerce_events
WHERE event_type = 'purchase'
GROUP BY product_id
ORDER BY total_purchases DESC
LIMIT 10;

-- 2.Total Revenue by Brand
SELECT brand, ROUND(SUM(price), 2) AS total_revenue
FROM ecommerce_events
WHERE event_type = 'purchase' AND price > 0
GROUP BY brand
ORDER BY total_revenue DESC
LIMIT 10;

-- 3.Revenue by Category Code
SELECT category_code, ROUND(SUM(price), 2) AS total_revenue
FROM ecommerce_events
WHERE event_type = 'purchase' AND price > 0
GROUP BY category_code
ORDER BY total_revenue DESC
LIMIT 10;

-- 4.Average Order Value(AOV)
SELECT ROUND(AVG(price), 2) AS average_order_value
FROM ecommerce_events
WHERE event_type = 'purchase' AND price > 0;

-- 5.Top 10 Customers by Spend
SELECT user_id, ROUND(SUM(price), 2) AS total_spent
FROM ecommerce_events
WHERE event_type = 'purchase' AND price > 0
GROUP BY user_id
ORDER BY total_spent DESC
LIMIT 10;