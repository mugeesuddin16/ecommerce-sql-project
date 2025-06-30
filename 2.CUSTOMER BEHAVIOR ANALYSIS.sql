-- CUSTOMER BEHAVIOR ANALYSIS
-- 1.How many unique users?
SELECT COUNT(DISTINCT user_id) AS unique_users
FROM ecommerce_events;

-- 2. How many users made purchases?
SELECT COUNT(DISTINCT user_id) AS purchasers
FROM ecommerce_events
WHERE event_type = 'purchase';

-- 3. Who are the top repeat buyers? 
SELECT user_id, COUNT(*) AS total_purchases
FROM ecommerce_events
WHERE event_type = 'purchase'
GROUP BY user_id
HAVING total_purchases > 1
ORDER BY total_purchases DESC
LIMIT 10;

-- 4. Average number of events per session
SELECT AVG(events_per_session) AS avg_events
FROM (
    SELECT user_session, COUNT(*) AS events_per_session
    FROM ecommerce_events
    GROUP BY user_session
) AS session_events;
