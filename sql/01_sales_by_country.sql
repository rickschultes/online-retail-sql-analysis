SELECT country, SUM(unit_price_clean * quantity) AS total_sales 
  FROM online_retail 
  WHERE quantity > 0 
  GROUP BY country 
  ORDER BY total_sales DESC;
