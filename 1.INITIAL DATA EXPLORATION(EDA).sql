-- INITIAL DATA EXPLORATION(EDA)

-- 1.Preview the data
SELECT * FROM ecommerce_events
LIMIT 20;

-- 2. Count total rows
SELECT COUNT(*) AS total_events FROM
ecommerce_events;

-- 3. Event type breakdown
SELECT event_type, COUNT(*) AS total
 FROM ecommerce_events
GROUP BY event_type
ORDER BY total DESC;

-- 4. Date range in the dataset
SELECT 
     MIN(event_time) AS start_date,
     MAX(event_time) AS end_date
FROM ecommerce_events;

-- 5.Top 10 most viewed products
SELECT product_id, count(*) AS views 
FROM ecommerce_events
WHERE event_type = 'view'
GROUP BY product_id
ORDER BY views DESC 
limit 10;

-- 6. Price summary
SELECT 
      MIN(price) AS min_price,
      MAX(price) AS max_price,
      avg(price) AS avg_price
FROM ecommerce_events
WHERE price > 0;
