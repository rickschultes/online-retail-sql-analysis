SELECT description, SUM(quantity) AS total_quantity FROM online_retail 
  WHERE quantity > 0 
  GROUP BY description 
  ORDER BY total_quantity DESC LIMIT 10;
