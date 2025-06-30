-- TIME-BASED SALES & USER TREND ANALYSIS

-- 1.Purchases per Day
SELECT DATE(event_time) AS purchase_date, COUNT(*) AS purchases
FROM ecommerce_events
WHERE event_type = 'purchase'
GROUP BY purchase_date
ORDER BY purchase_date;

-- 2. Purchases by Weekday
SELECT 
    DAYNAME(event_time) AS day_of_week, 
    COUNT(*) AS purchases
FROM ecommerce_events
WHERE event_type = 'purchase'
GROUP BY day_of_week
ORDER BY FIELD(day_of_week, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');

-- 3.Purchases by Hour of the day
SELECT 
    HOUR(event_time) AS hour_of_day, 
    COUNT(*) AS purchases
FROM ecommerce_events
WHERE event_type = 'purchase'
GROUP BY hour_of_day
ORDER BY hour_of_day;

-- 4.Monthly Revenue Trend
SELECT 
    DATE_FORMAT(event_time, '%Y-%m') AS month,
    ROUND(SUM(price), 2) AS total_revenue
FROM ecommerce_events
WHERE event_type = 'purchase'
GROUP BY month
ORDER BY month;

-- 5. Most Active Hours (all event types)
SELECT 
    HOUR(event_time) AS hour,
    COUNT(*) AS total_events
FROM ecommerce_events
GROUP BY hour
ORDER BY total_events DESC
LIMIT 5;