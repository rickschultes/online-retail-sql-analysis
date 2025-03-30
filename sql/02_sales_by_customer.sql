SELECT customer_id, SUM(unit_price_clean * quantity) AS customer_sales FROM online_retail 
WHERE quantity > 0 AND customer_id IS NOT NULL 
GROUP BY customer_id 
ORDER BY customer_sales DESC;
