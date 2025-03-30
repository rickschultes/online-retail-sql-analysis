SELECT invoice_no, SUM(unit_price_clean * quantity) AS basket_value FROM online_retail 
  WHERE quantity > 0 
  GROUP BY invoice_no;
