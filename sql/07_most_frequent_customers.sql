SELECT customer_id, COUNT(DISTINCT invoice_no) AS order_count
FROM online_retail
WHERE quantity > 0 AND customer_id IS NOT NULL
GROUP BY customer_id
ORDER BY order_count DESC;
