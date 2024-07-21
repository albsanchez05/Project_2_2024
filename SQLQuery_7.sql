-- Determine the distribution of orders by hour of the day.

SELECT DATEPART(HH, [time]) AS hour, COUNT(order_id) AS order_count
FROM orders
GROUP BY DATEPART(HH, [time])