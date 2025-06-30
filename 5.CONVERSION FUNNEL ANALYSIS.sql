-- CONVERSION FUNNEL ANALYSIS

-- 1.Total views,carts,purchases (recheck with funnel intent)
SELECT event_type, COUNT(*) AS total
FROM ecommerce_events
WHERE event_type IN ('view', 'cart', 'purchase')
GROUP BY event_type;

-- 2. Unique users in each stage
SELECT event_type, COUNT(DISTINCT user_id) AS unique_users
FROM ecommerce_events
WHERE event_type IN ('view', 'cart', 'purchase')
GROUP BY event_type;

-- 3. Users who viewed and puchased (conversion)
SELECT COUNT(DISTINCT user_id) AS converters
FROM ecommerce_events
WHERE user_id IN (
    SELECT user_id
    FROM ecommerce_events
    WHERE event_type = 'view'
)
AND event_type = 'purchase';